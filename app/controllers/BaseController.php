<?php

require_once __DIR__ . '/../helpers/AuthMiddleware.php';

class BaseController
{
    protected function view(string $path, array $data = [])
    {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }

        extract($data);

        // Ruta real del archivo de vista
        $viewPath = __DIR__ . '/../views/' . $path . '.php';

        if (!file_exists($viewPath)) {
            die("La vista {$path} no existe");
        }

        // Cargar layout
        require __DIR__ . '/../views/template/layout.php';
    }

    protected function auth()
    {
        AuthMiddleware::auth();
    }

    protected function role(array $roles)
    {
        AuthMiddleware::role($roles);
    }
}
