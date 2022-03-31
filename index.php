<?php
require 'admin/config.php';
require 'funciones.php';

// VERIFICAR LA CONEXION A LA BASE DE DATOS
$conexion = conexion($bd_config);
if (!$conexion) {
    header('Location: error.php');
}

// Obtenemos los datos del usuario
$usuario = $_SESSION['usuario'];
$datos_usuario = verificar_username($usuario, $conexion);

// verificar usuario logeado si se hace un comentario 
$comentario = '';
if(($_SERVER['REQUEST_METHOD'] == 'POST') && ($_POST['comentario'] != '')){
    if (isset($_SESSION['usuario'])){
        $comentario = $_POST['comentario'];
        insertar_comentario($_POST['id_post'], $datos_usuario['id_usuario'], $comentario, $conexion);
        header('Location:index.php?p='.$_POST['pagina']);
    }else {
        printf("<script type='text/javascript'>alert('Debes Iniciar Sesión'); </script>");
    }
}


$posts = obtener_post_publicaciones($visita_config['publicaciones_por_pagina'],$conexion);
for ($i = 0; $i < $visita_config['publicaciones_por_pagina']; $i++) {
    $posts[$i]['tipo'] = obtener_tipo_prod_ser($posts[$i]['id_prod_ser'],$conexion);
}
// print_r($posts);

if(!$posts) {
    header('Location: error.php');
}


require 'views/index.view.php';
?>