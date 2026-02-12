<?php

class Usuario
{
    public function registrarPerUser ($data)
    {
        $db = db();

        $stmt = $db->prepare("
            CALL sp_registrar_usuario_persona(
                ?,?,?,?,?,?,?,?,?,?,?,?,?
            )
        ");

        $passwordMd5 = md5($data['password']);

        $passwordMd5 = md5($data['password']);

        $stmt->bind_param(
            "sssssssssssss",
            $data['clavePersona'],
            $data['nombrePersona'],
            $data['apellidosPersona'],
            $data['emailContacto'],
            $data['telefonoContacto'],
            $data['curpPersona'],
            $data['rfcPersona'],
            $data['institucion'],
            $data['puesto'],

            $data['claveUsuario'],
            $data['correoInstitucional'],
            $passwordMd5,          // ✔ variable
            $data['rol']
        );


        try {
            $stmt->execute();
            return ['status' => true];
        } catch (mysqli_sql_exception $e) {

            // MOSTRAR ERROR REAL (solo desarrollo)
            return [
                'status' => false,
                'error'  => $e->getMessage()
            ];
        }
    }
    public function registrarPersonaUsuario($data)
{
    $db = db();

    // Preparar llamada al procedimiento almacenado
    $stmt = $db->prepare("CALL sp_registro_basico_usuario(?,?,?,?)");

    if (!$stmt) {
        return [
            'status' => false,
            'error'  => 'Error al preparar la consulta: ' . $db->error
        ];
    }

    // Hash MD5 (compatibilidad con sistema actual)
    $passwordMd5 = md5($data['password']);

    // Enlazar parámetros
    $stmt->bind_param(
        "ssss",
        $data['nombrePersona'],
        $data['apellidosPersona'],
        $data['correoInstitucional'],
        $passwordMd5
    );

    try {
        // Ejecutar SP
        if (!$stmt->execute()) {
            return [
                'status' => false,
                'error'  => 'Error al ejecutar el procedimiento: ' . $stmt->error
            ];
        }

        // Limpiar resultados pendientes del CALL
        while ($stmt->more_results() && $stmt->next_result()) {;}

        $stmt->close();

        return [
            'status'  => true,
            'message' => 'Registro enviado correctamente. Pendiente de aprobación por el administrador.'
        ];

    } catch (mysqli_sql_exception $e) {
        return [
            'status' => false,
            'error'  => 'Excepción MySQL: ' . $e->getMessage()
        ];
    }
}


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

        $stmt->bind_param("ss", $email, md5($password));
        $stmt->execute();

        $res = $stmt->get_result();

        if ($res->num_rows === 0) {
            return ['status' => false, 'error' => 'CREDENCIALES'];
        }

        $user = $res->fetch_assoc();

        if ((int)$user['bActivo'] !== 1) {
            return ['status' => false, 'error' => 'INACTIVO'];
        }

        return ['status' => true, 'idUsuario' => $user['idUsuario']];
    }

    public function obtenerDatosPorId($idUsuario)
    {
        $db = db();

        $stmt = $db->prepare(
            "SELECT * 
             FROM vw_usuarioPersona 
             WHERE idUsuario = ?"
        );

        $stmt->bind_param("i", $idUsuario);
        $stmt->execute();

        return $stmt->get_result()->fetch_assoc();
    }

    public function getAll()
    {
        $db = db();

        $sql = "
            SELECT *
            FROM vw_usuarioPersona
            ORDER BY nombreCompleto
        ";

        $result = $db->query($sql);

        if (!$result) {
            return [];
        }

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function countAll()
    {
        $sql = "SELECT COUNT(*) AS total FROM usuario";
        $result = db()->query($sql);
        return $result->fetch_assoc();
    }
}
