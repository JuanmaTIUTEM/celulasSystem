<?php

require_once 'BaseController.php';
require_once __DIR__ . '/../models/Proyectos.php';
require_once __DIR__ . '/../models/Celulas.php';
require_once __DIR__ . '/../models/Usuario.php';

class AcademicoController extends BaseController
{
    public function index()
    {
        // 1. Usuario autenticado
        $this->auth();

        // 2. Validar rol
        $this->role(['Académico']);

        // 3. Obtener celulas
        //$celulasModel = new Celulas();
        //$celulas = $celulasModel->getAll();

        // 4. Enviar a la vista
        $this->view('usuarios/index');//, compact('celulas'));
        
    }
}