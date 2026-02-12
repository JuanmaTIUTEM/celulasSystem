<?php

class AuthMiddleware
{
    public static function auth()
    {
        if (session_status() === PHP_SESSION_NONE) {
            session_start();
        }

        if (!isset($_SESSION['usuario'])) {
            header("Location: /login");
            exit;
        }
    }

    public static function role($rolesPermitidos = [])
    {
        self::auth();

        if (!in_array($_SESSION['usuario']['rol'], $rolesPermitidos)) {
            header("HTTP/1.1 403 Forbidden");
            echo "Acceso denegado";
            exit;
        }
    }
}
