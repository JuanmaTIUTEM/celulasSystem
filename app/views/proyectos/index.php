<h1>Gestión de Proyectos</h1>
<hr>

<div class="container">
  <div class="list-group">
    <?php 
    if(sizeof($proyectos) > 0){
      foreach ($proyectos as $proy): ?>
      <a href="#" class="list-group-item list-group-item-action">
        <div class="d-flex flex-column">
            <div class="row">
                <label><strong>ClaveP</strong> - Nombre Proyecto</label>
            </div>
      </a>
    <?php endforeach;
    }else{?>
      <a href="#" class="list-group-item list-group-item-action">
          <div class="d-flex flex-column">
            <div class="row">
                <label><strong>0</strong> - No hay proyectos registrados</label>
            </div>
          <?php } ?>
          </div>
      </a>
      
    </div>  
</div>
