<?php

require_once 'BaseController.php';
require_once __DIR__ . '/../models/Auth.php';
require_once __DIR__ . '/../models/Usuario.php';
require_once __DIR__ . '/../models/Bitacora.php';

class AuthController extends BaseController
{
    public function index()
    {
        $this->view('login/login');
    }

    public function authenticate()
    {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }

        // Validación básica de entrada
        if (empty($_POST['email']) || empty($_POST['pass'])) {
            $this->view('login/login', [
                'error' => 'Debe ingresar correo y contraseña'
            ]);
            return;
        }

        $auth = new Auth();
        $resultado = $auth->validarCredenciales(
            $_POST['email'],
            $_POST['pass']
        );

        // ❌ Error en autenticación
        if (!$resultado['status']) {

            $mensaje = ($resultado['error'] === 'INACTIVO')
                ? 'El usuario se encuentra inactivo. Contacte al administrador.'
                : 'Correo o contraseña incorrectos';

            $this->view('login/login', [
                'error' => $mensaje
            ]);
            return;
        }

        // ✅ Usuario válido
        $idUsuario = $resultado['idUsuario'];

        $usuarioModel = new Usuario();
        $datosUsuario = $usuarioModel->obtenerDatosPorId($idUsuario);

        $_SESSION['usuario'] = [
            'idUsuario'      => $datosUsuario['idUsuario'],
            'claveUsuario'   => $datosUsuario['claveUsuario'],
            'correo'         => $datosUsuario['correoInstitucional'],
            'rol'            => $datosUsuario['rol'],
            'idPersona'      => $datosUsuario['idPersona'],
            'clavePersona'   => $datosUsuario['clavePersona'],
            'nombrePersona'  => $datosUsuario['nombre'],
            'apellidosPersona'  => $datosUsuario['apellidos'],
            'nombreCompleto' => $datosUsuario['nombreCompleto'],
            'emailContacto'  => $datosUsuario['emailContacto'],
            'telefono'       => $datosUsuario['telefonoContacto'],
            'curp'           => $datosUsuario['curpPersona'],
            'rfc'            => $datosUsuario['rfcPersona'],
            'institucion'    => $datosUsuario['institucion'],
            'activo'         => (int)$datosUsuario['bActivo'],
            'puesto'         => $datosUsuario['puesto']
        ];

        session_regenerate_id(true);

        // Registrar bitácora
        $bitacora = new Bitacora();
        $bitacora->registrar($_SESSION['usuario']['idUsuario'], 'LOGIN');

        //header("Location: /dashboard");
        switch ($_SESSION['usuario']['rol']) {

            case 'Administrador':
                header("Location: /dashboard");
                break;

            case 'Académico':
                header("Location: /academico/dashboard");
                break;

            default:
                header("Location: /dashboard");
                break;
        }
        exit;
    }

    public function logout()
    {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }

        if (isset($_SESSION['usuario'])) {
            $bitacora = new Bitacora();
            $bitacora->registrar($_SESSION['usuario']['idUsuario'], 'LOGOUT');

            unset($_SESSION['usuario']);
        }

        $_SESSION['flash'] = "Sesión cerrada correctamente";

        session_regenerate_id(true);

        header("Location: /login");
        exit;
    }

    public function register()
    {
        $this->view('login/register');
    }


    public function store()
    {
        // Validar que sea POST
        if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
            header('Location: /registro');
            exit;
        }

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

        // Armar DATA (AQUÍ VA)
        $data = [
            'clavePersona'        => uniqid('PER'),
            'nombrePersona'       => trim($_POST['nombre']),
            'apellidosPersona'    => trim($_POST['apellidos']),
            'emailContacto'       => trim($_POST['email']),
            'telefonoContacto'    => trim($_POST['telefono'] ?? ''),
            'curpPersona'         => trim($_POST['curp'] ?? ''),
            'rfcPersona'          => trim($_POST['rfc'] ?? ''),
            'institucion'         => 'UTeM',
            'puesto'              => 'Académico',   // 👈 AQUI

            'claveUsuario'        => uniqid('USR'),
            'correoInstitucional' => trim($_POST['email']),
            'password'            => $_POST['pass'],
            'rol'                 => 'Académico'
        ];


        // 3️⃣ Modelo
        $usuariosModel = new Usuario();
        $res = $usuariosModel->registrarPersonaUsuario($data);

        // 4️⃣ Flujo
        if ($res['status']) {
            header('Location: /login');
            exit;
        }

        $mensajes = [
            'EXISTE' => 'El correo ya está registrado.',
            'ERROR'  => 'Error al registrar el usuario.'
        ];

        return $this->view('login/register', [
            'error' => $res['error']
        ]);
    }

}
