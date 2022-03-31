<?php require 'header.php';?>
    <nav class="navegacion">
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>index.php">Inicio</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>productos.php">Productos</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>servicios.php">Servicios</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>nosotros.php">Nosotros</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>login.php">Iniciar Sesion</a>

    </nav>


    <main class="contenedor">
        <h1><?php echo $producto['nombre'];?></h1>
        <div class="servicio">
            <img src="<?php echo RUTA; ?>img/<?php echo $producto['id_prod_ser']?>.jpg" alt="Imagen servicio" class="servicio__imagen">
            <div class="servicio__contenido">
                <p class="servicio__contenido--texto">
                    <?php echo $producto['des'];?>
                </p>
                <form action="#" class="formulario">
                    <h3>Bs. <?php echo $producto['costo'];?></h3>
                    <input class="formulario__campo" type="number" placeholder="Cantidad" min="1" max="<?php echo $producto['cant-cupos'];?>">
                    <input class="formulario__submit" type="submit" value="Agregar al Carrito">
                </form>
            </div>
        </div>

    </main>


    <footer class="footer">
        <p class="footer__texto">Visita La Paz - Todos los derechos reservados 2022.</p>
    </footer>
</body>
</html>