
<?php


require_once 'BaseController.php';
require_once __DIR__ . '/../models/Usuario.php';
require_once __DIR__ . '/../models/Rol.php';

class UsuarioController extends BaseController
{
    public function index()
    {
        $this->auth();
        $this->role(['Administrador']);

        $model = new Usuario();
        $usuarios = $model->getAll();

        $this->view('usuarios/index', compact('usuarios'));
    }

    public function create()
    {
        $this->auth();
        $this->role(['Administrador']);

        $rolModel = new Rol();
        $roles = $rolModel->getAll();

        $this->view('usuarios/create', compact('roles'));
    }

    /*public function store()
    {
        $this->auth();
        $this->role(['Administrador']);

        if ($_POST) {

            if (empty($_POST['roles'])) {
                die("Debe seleccionar al menos un rol");
            }

            $model = new Usuario();
            $response = $model->registrarPersonaUsuario($_POST);

            if ($response['status']) {
                header("Location: /usuarios");
                exit;
            } else {
                echo "<pre>";
                print_r($response);
                echo "</pre>";
                exit;
            }
        }
    }*/

    public function store()
    {
        if (empty($_POST['roles'])) {
            die("Debe seleccionar al menos un rol");
        }

        $usuarioModel = new Usuario();

        $data = [
            'nombre' => $_POST['nombre'],
            'apellidos' => $_POST['apellidos'],
            'email' => $_POST['email'],
            'telefono' => $_POST['telefono'],
            'genero' => $_POST['genero'],
            'fechaNacimiento' => $_POST['fechaNacimiento'],
            'curp' => $_POST['curp'],
            'rfc' => $_POST['rfc'],
            'institucion' => $_POST['institucion'],
            'puesto' => $_POST['puesto'],
            'correoInstitucional' => $_POST['correoInstitucional'],
            'contrasena' => password_hash($_POST['contrasena'], PASSWORD_DEFAULT),
            'roles' => $_POST['roles'] // 🔥 ARRAY
        ];

        $usuarioModel->crearUsuarioConRoles($data);

        header("Location: /usuarios");
    }

    public function edit($id)
    {
        $this->auth();
        $this->role(['Administrador']);

        $model = new Usuario();
        $rolModel = new Rol();

        $usuario = $model->getById($id);
        $roles = $rolModel->getAll();
        $rolesUsuario = $model->getRolesByUsuario($id);

        $this->view('usuarios/edit', compact('usuario','roles','rolesUsuario'));
    }

    public function update()
    {
        $this->auth();
        $this->role(['Administrador']);

        if ($_POST) {

            $model = new Usuario();
            $response = $model->update($_POST);

            if ($response['status']) {
                header("Location: /usuarios");
                exit;
            } else {
                print_r($response);
            }
        }
    }

    public function toggle($id)
    {
        $this->auth();
        $this->role(['Administrador']);

        $model = new Usuario();
        $model->toggleActivo($id);

        header("Location: /usuarios");
    }
}






/*
require_once 'BaseController.php';
require_once __DIR__ . '/../models/Usuario.php';

class UsuarioController extends BaseController
{
    public function index()
    {
        // 1. Usuario autenticado
        $this->auth();

        // 2. Validar rol
        $this->role(['Administrador']);

        // 3. Obtener usuarios
        $usuarioModel = new Usuario();
        $usuarios = $usuarioModel->getAll();

        // 4. Enviar a la vista
        $this->view('usuarios/index', compact('usuarios'));
    }

    public function miPerfil(){
        // 1. Usuario autenticado
        $this->auth();


        //session_start();
        $usuario = $_SESSION;
        // 4. Enviar a la vista
        $this->view('usuarios/miPerfil', compact('usuario'));
    }
    public function create()
    {
        $this->auth();
        $this->role(['Administrador']);

        $this->view('usuarios/create');
    }

    public function store()
    {
        $this->auth();
        $this->role(['Administrador']);

        if ($_POST) {

            $model = new Usuario();
            $response = $model->registrarPersonaUsuario($_POST);

            if ($response['status']) {
                header("Location: /usuarios");
                exit;
            } else {
                echo "<pre>";
                print_r($response);
                echo "</pre>";
                exit;
            }
        }
    }

    public function edit($id)
    {
        $this->auth();
        $this->role(['Administrador']);

        $model = new Usuario();
        $usuario = $model->getById($id);

        require_once 'views/usuarios/edit.php';
    }

    public function update()
    {
        $this->auth();
        $this->role(['Administrador']);

        if ($_POST) {

            $model = new Usuario();
            $response = $model->update($_POST);

            if ($response['status']) {
                header("Location: /usuarios");
                exit;
            } else {
                print_r($response);
            }
        }
    } 
    
    public function toggle($id)
    {
        $this->auth();
        $this->role(['Administrador']);

        $model = new Usuario();
        $model->toggleActivo($id);

        header("Location: /usuarios");
    }   

}*/
