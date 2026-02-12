<?php
class Auth
{
    public function validarCredenciales($email, $password)
    {
        $db = db();

        $stmt = $db->prepare(
            "SELECT 
                idUsuario,
                CAST(bActivo AS UNSIGNED) AS bActivo
             FROM usuario
             WHERE correoInstitucional = ?
               AND contrasena = ?"
        );

        $passwordMd5 = md5($password);
        $stmt->bind_param("ss", $email, $passwordMd5);
        $stmt->execute();

        $res = $stmt->get_result();

        // 1️⃣ No existe el usuario o contraseña incorrecta
        if ($res->num_rows === 0) {
            return [
                'status' => false,
                'error'  => 'CREDENCIALES'
            ];
        }

        $user = $res->fetch_assoc();

        // 2️⃣ Usuario existe pero está inactivo
        if ((int)$user['bActivo'] !== 1) {
            return [
                'status' => false,
                'error'  => 'INACTIVO'
            ];
        }

        // 3️⃣ Usuario válido
        return [
            'status'    => true,
            'idUsuario' => $user['idUsuario']
        ];
    }

    public function registrarPersonaUsuario($data)
{
    $db = db();

    $stmt = $db->prepare("
        CALL sp_registro_basico_usuario(?, ?, ?, ?)
    ");

    // Validar prepare
    if (!$stmt) {
        return [
            'status' => false,
            'error'  => 'PREPARE_ERROR: ' . $db->error
        ];
    }

    // Hash MD5 (según tu diseño actual)
    $passwordMd5 = md5($data['password']);

    // Bind de SOLO 4 parámetros
    $stmt->bind_param(
        "ssss",
        $data['nombre'],
        $data['apellidos'],
        $data['correo'],
        $passwordMd5
    );

    try {
        if (!$stmt->execute()) {
            return [
                'status' => false,
                'error'  => 'EXECUTE_ERROR: ' . $stmt->error
            ];
        }

        // Obtener mensaje del SP
        $result = $stmt->get_result();
        $mensaje = $result ? $result->fetch_assoc()['mensaje'] ?? null : null;

        // Limpiar resultados pendientes del CALL
        while ($stmt->more_results() && $stmt->next_result()) {;}

        $stmt->close();

        return [
            'status'  => true,
            'mensaje' => $mensaje
        ];

    } catch (mysqli_sql_exception $e) {
        return [
            'status' => false,
            'error'  => 'MYSQL_EXCEPTION: ' . $e->getMessage()
        ];
    }
}

    public function store()
       {
           // 1️⃣ Validaciones básicas
           if ($_POST['pass'] !== $_POST['pass_confirm']) {
               return $this->view('login/register', [
                   'error' => 'Las contraseñas no coinciden.'
               ]);
           }

           if (!str_ends_with($_POST['email'], '@utem.edu.mx')) {
               return $this->view('login/register', [
                   'error' => 'Solo se permiten correos institucionales.'
               ]);
           }

           // 2️⃣ Armar el DATA (AQUÍ VA TU BLOQUE)
           $data = [
               'clavePersona'      => uniqid('PER'),
               'nombrePersona'     => trim($_POST['nombre']),
               'apellidosPersona'  => trim($_POST['apellidos']),
               'emailContacto'     => trim($_POST['email']),
               'telefonoContacto'  => trim($_POST['telefono'] ?? ''),
               'curpPersona'       => trim($_POST['curp'] ?? ''),
               'rfcPersona'        => trim($_POST['rfc'] ?? ''),
               'institucion'       => 'UTeM',

               'claveUsuario'      => uniqid('USR'),
               'correoInstitucional'=> trim($_POST['email']),
               'password'          => $_POST['pass'],
               'rol'               => 'Académico'
           ];

           // 3️⃣ Llamar al modelo
           $usuarios = new Usuarios();
           $res = $usuarios->registrarPersonaUsuario($data);

           // 4️⃣ Flujo según resultado
           if ($res['status']) {
               header('Location: /login');
               exit;
           }

           $errores = [
               'EXISTE' => 'El correo ya está registrado.',
               'ERROR'  => 'Error al registrar el usuario.'
           ];

           return $this->view('login/register', [
               'error' => $errores[$res['error']] ?? 'Error inesperado'
           ]);
       }

}
