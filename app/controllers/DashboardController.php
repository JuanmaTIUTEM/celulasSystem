<?php

require_once 'BaseController.php';
require_once __DIR__ . '/../models/Proyectos.php';
require_once __DIR__ . '/../models/Usuario.php';
require_once __DIR__ . '/../models/Celulas.php';

class DashboardController extends BaseController
{
    public function index()
    {
        $this->auth();
        
        $proyectosModel = new Proyectos();
        $proyectos = $proyectosModel->countAll()['total'];

        $usuarioModel = new Usuario();
        $usuarios = $usuarioModel->countAll()['total'];

        $celulasModel = new Celulas();
        $celulas = $celulasModel->countAll()['total'];

        $this->view('dashboard/index', compact(
            'proyectos',
            'usuarios',
            'celulas'
        ));
    }
}


