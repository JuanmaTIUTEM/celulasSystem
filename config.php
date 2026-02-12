<?php

/* ===============================
   RUTAS DEL SISTEMA (SERVIDOR)
   =============================== */
define("BASE_PATH", __DIR__);
define("APP_PATH", BASE_PATH . "/app");
define("VIEW_PATH", APP_PATH . "/views");
define("MODEL_PATH", APP_PATH . "/models");
define("CONTROLLER_PATH", APP_PATH . "/controllers");

/* ===============================
   URL BASE (NAVEGADOR)
   =============================== */
define("BASE_URL", "http://localhost:8000/MVC_Completo_PHP");
// Si usas Apache:
// define("BASE_URL", "http://localhost/MVC_Completo_PHP");

/* ===============================
   AUTOLOAD MODELOS
   =============================== */
spl_autoload_register(function($class) {
    $file = MODEL_PATH . "/$class.php";
    if (file_exists($file)) {
        require_once $file;
    }
});

/* ===============================
   CONEXIÓN A BASE DE DATOS
   =============================== */
function db() {
    static $conn;
    if ($conn === null) {
        $conn = new mysqli(
            "localhost",
            "adminDB",
            "gogo0399",
            "dbsicete"
        );

        if ($conn->connect_error) {
            die("Error de conexión a la base de datos");
        }

        $conn->set_charset("utf8mb4");
    }
    return $conn;
}
