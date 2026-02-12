<?php

require_once 'BaseController.php';
require_once __DIR__ . '/../models/Celulas.php';

class CelulasController extends BaseController
{
    public function index()
    {
        // 1. Usuario autenticado
        $this->auth();

        // 2. Validar rol
        $this->role(['Administrador']);

        // 3. Obtener celulas
        $celulasModel = new Celulas();
        $celulas = $celulasModel->getAll();

        // 4. Enviar a la vista
        $this->view('celulas/index', compact('celulas'));
        
    }
}
