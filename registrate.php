<?php 
require 'admin/config.php';
require 'funciones.php';

// Comprobamos si ya tiene una sesion
# Si ya tiene una sesion redirigimos al contenido, para que no pueda volver a registrar un usuario.
if (isset($_SESSION['usuario'])) {
	header('Location: index.php');
	die();
}

// Comprobamos si ya han sido enviado los datos
if($_SERVER['REQUEST_METHOD'] == 'POST') {
	// Validamos que los datos hayan sido rellenados
	$usuario = filter_var(strtolower($_POST['usuario']), FILTER_SANITIZE_STRING);
	$password = $_POST['password'];
	$password2 = $_POST['password2'];

// Tambien podemos limpiar mediante las funciones
	# El problema es que si lo hacemos de esta forma no estamos eliminando caracteres especiales, solo los transformamos.
	
	// La funcion htmlspecialchars() convierte caracteres especiales en entidades HTML, (&, "", '', <, >)
	$usuario = htmlspecialchars($_POST['usuario']);
	// La funcion trim() elimina espacio en blanco al inicio y final de la cadena de texo
	$usuario = trim($usuario);
	// stripslashes() quita las barras de un string con comillas escapadas, los \ los convierte en \'
	$usuario = stripslashes($usuario);

	$errores = '';

	// Comprobamos que ninguno de los campos este vacio.
	if (empty($usuario) or empty($password) or empty($password2)) {
		$errores = '<li>Por favor rellena todos los datos correctamente</li>';
	} else {

        // VERIFICAR LA CONEXION A LA BASE DE DATOS
        $conexion = conexion($bd_config);
        if (!$conexion) {
            header('Location: error.php');
        }

        // COMPROBAMOS QUE EL NOMBRE DE USUARIO NO SE ENCUENTRE EN LA BD
        $datos_usuario = verificar_username($usuario, $conexion);

		// Si resultado es diferente a false entonces significa que ya existe el usuario.
		if ($datos_usuario != false) {
			$errores .= '<li>El nombre de usuario ya existe</li>';
		}

// 		// Hasheamos nuestra contraseña para protegerla un poco.
// 		$password = hash('sha512', $password);
// 		$password2 = hash('sha512', $password2);

		// Comprobamos que las contraseñas sean iguales.
		if ($password != $password2) {
			$errores.= '<li>Las contraseñas no son iguales</li>';
		}
	}

	// Comprobamos si hay errores, sino entonces agregamos el usuario y redirigimos.
	if ($errores == '') {
		insertar_usuario($usuario,$password,$conexion);

		// Despues de registrar al usuario redirigimos para que inicie sesion.
        
   

        // echo '<script language="javascript">alert("Cuenta Creada Correctamente!");</script>';
		header('Location: login.php?a=si');
	}


}

require 'views/registrate.view.php';
?>