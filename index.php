<?php
require "config.php";
require "Router.php";

$router = new Router();
$router->add("/", "HomeController@index");
$router->add("/login", "AuthController@index");
$router->add("/login/auth", "AuthController@authenticate");
$router->add("/logout", "AuthController@logout");
$router->add('/dashboard', 'DashboardController@index');
$router->add('/academico/dashboard', 'AcademicoController@index');
$router->add('/usuarios', 'UsuarioController@index');
$router->add('/miPerfil', 'UsuarioController@miPerfil');
$router->add('/celulas', 'CelulasController@index');
$router->add('/proyectos', 'ProyectosController@index');
$router->add('/proyectos/create', 'ProyectosController@create');
$router->add('/misProyectos', 'ProyectosController@misProyectos');

$router->add('/registro', 'AuthController@register');
$router->add('/registro/store', 'AuthController@store');


$router->add('/usuarios', 'UsuarioController@index');
$router->add('/usuarios/create', 'UsuarioController@create');
$router->add('/usuarios/store', 'UsuarioController@store');
$router->add('/usuarios/edit/{id}', 'UsuarioController@edit');
$router->add('/usuarios/update', 'UsuarioController@update');
$router->add('/usuarios/toggle/{id}', 'UsuarioController@toggle');

$router->dispatch($_SERVER["REQUEST_URI"]);
