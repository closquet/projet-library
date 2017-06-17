<?php

session_start();

//check db info
if (!file_exists(DB_INI_FILE)){
    die('db info is missing');
}

//get routes
$routes = include 'configs/routes.php';
$default_route = $routes['default'];
$default_route_parts = explode('/', $default_route);

//get route sent by user
$method = $_SERVER['REQUEST_METHOD'];
$r = $_REQUEST['r']??$default_route_parts[1];
$a =$_REQUEST['a']??$default_route_parts[2];

//check route sent by user
if (!in_array($method . '/' . $r . '/' . $a, $routes)){
    die('Requête refusée');
}

//execute the route
$controller_name = 'Controllers\\' . ucfirst($r);
$controller = new $controller_name;
$data = call_user_func([$controller, $a]);