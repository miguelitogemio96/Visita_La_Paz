<?php 
session_start();
require 'admin/config.php';
require 'funciones.php';

// Comprobamos si ya tiene una sesion
// Si ya tiene una sesion redirigimos al contenido, para que no pueda acceder al formulario
if (isset($_SESSION['usuario'])) {
	header('Location: index.php');
	die();
}

if(isset($_GET['a'])){
    printf("<script type='text/javascript'>alert('Usuario creado Correctamente!'); </script>");
}

// Comprobamos si ya han sido enviado los datos
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$usuario = filter_var(strtolower($_POST['usuario']), FILTER_SANITIZE_STRING);
	$password = $_POST['password'];
	// $password = hash('sha512', $password);

// VERIFICAR LA CONEXION A LA BASE DE DATOS
    $conexion = conexion($bd_config);
    if (!$conexion) {
        header('Location: error.php');
    }


	$resultado = validar_usuario($usuario, $password, $conexion);
    // print_r($resultado);
	if ($resultado !== false) {
		$_SESSION['usuario'] = $usuario;
		header('Location: index.php');
	} else {
		$errores = '<li>El Usuario o password son incorrectos</li>';
	}
}

require 'views/login.view.php';

?>