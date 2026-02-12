
<?php

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
}
