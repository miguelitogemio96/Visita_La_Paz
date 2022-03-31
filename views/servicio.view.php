<?php require 'header.php';?>
    <nav class="navegacion">
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>index.php">Inicio</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>productos.php">Productos</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>servicios.php">Servicios</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>nosotros.php">Nosotros</a>
        <a class="navegacion__enlace" href="<?php echo RUTA; ?>login.php">Iniciar Sesion</a>

    </nav>


    <main class="contenedor">
        <h1><?php echo $servicio['nombre'];?></h1>
        <div class="servicio">
            <img src="<?php echo RUTA; ?>img/<?php echo $servicio['id_prod_ser']?>.jpg" alt="Imagen servicio" class="servicio__imagen">
            <div class="servicio__contenido">
                <p class="servicio__contenido--texto">
                    <?php echo $servicio['des'];?>         
                </p>
                <h3>Bs. <?php echo $servicio['costo'];?></h3>
                <form action="#" class="formulario">
                    <select class="formulario__campo">
                        <option disabled selected>--Selecciona el Plan</option>
                        <option>Bronce</option>
                        <option>Plata</option>
                        <option>Oro</option>
                    </select>
                    <input class="formulario__campo" type="number" placeholder="Cantidad" min="1" max="<?php echo $servicio['cant-cupos'];?>">
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