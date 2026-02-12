<?php
class Router {
    private $routes = [];
    public function add($route, $action) {
        $this->routes[$route] = $action;
    }
    public function dispatch($url) {
        $url = parse_url($url, PHP_URL_PATH);
        
        if (isset($this->routes[$url])) {
            list($controller, $method) = explode("@", $this->routes[$url]);
            $file = CONTROLLER_PATH . "/$controller.php";
            if (file_exists($file)) {
                require_once $file;
                $obj = new $controller();
                $obj->$method();
            } else {
                echo "Controlador no encontrado";
            }
        } else {
            echo "Ruta no encontrada";
        }
    }
}
