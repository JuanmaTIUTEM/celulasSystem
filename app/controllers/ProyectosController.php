<?php

require_once 'BaseController.php';
require_once __DIR__ . '/../models/Proyectos.php';

class ProyectosController extends BaseController
{
    public function index()
    {
        // 1. Usuario autenticado
        $this->auth();

        // 2. Validar rol
        $this->role(['Administrador']);

        // 3. Obtener proyectos
        $proyectosModel = new Proyectos();
        $proyectos = $proyectosModel->getAll();

        // 4. Enviar a la vista
        $this->view('proyectos/index', compact('proyectos'));
        
    }
}