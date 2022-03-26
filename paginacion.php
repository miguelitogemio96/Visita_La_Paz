<?php $numero_paginas = numero_paginas($visita_config['publicaciones_por_pagina'], $conexion); ?>
<div class="paginacion">
    <ul>
        <?php if (pagina_actual() === 1): ?>
            <li class="disabled paginacion__opcion">&laquo;</li>
        <?php else: ?>
            <li ><a class="paginacion__opcion" href="index.php?p=<?php echo pagina_actual() - 1?>">&laquo;</a></li>
        <?php endif;?>

        <?php for ($i = 1; $i <= $numero_paginas; $i++): ?>
			<!-- Agregamos la clase active en la pagina actual -->
			<?php if (pagina_actual() === $i): ?>
                <li><a class='paginacion__opcion--active' href="index.php?p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
            <?php else: ?>
                <li><a class='paginacion__opcion' href="index.php?p=<?php echo $i; ?>"><?php echo $i; ?></a></li>				
			<?php endif; ?>
		<?php endfor; ?>

        <?php if (pagina_actual() == $numero_paginas): ?>
            <li><a class="disabled paginacion__opcion" href="">&raquo;</a></li>
        <?php else: ?>
            <li ><a class="paginacion__opcion" href="index.php?p=<?php echo pagina_actual() + 1?>">&raquo;</a></li>
        <?php endif;?>        
            
    </ul>
</div>