<h1>Gestión de Células Tecnológicas</h1>
<hr>


<?php 
if(sizeof($celulas) > 0){
  foreach ($celulas as $c): ?>
    <div class="card w-md-50 shadow-sm mb-4 p-1">
      <div class="card-body bg-fondoOf rounded ">
        <h4 class="card-title text-center rounded p-3 txtTitleC fondoOficial"><?= $c['claveCT']?> <hr></h4>
        <div class="d-flex flex-column ">
      	  <div class="p-3 m-2 bg-white rounded">
      		  <label class="card-text cardtxt"><strong>Nombre:</strong> <?= $c['nombreCT']?></label><br>
       		  <label class="card-text cardtxt" title="<?= $c['coordinadorCorreo'] ?>"><strong>Coordinador:</strong> <?= $c['name'] . " " . $c['lastName'] ?></label>
      		  <br>
      		  <a href="" data-bs-toggle="collapse" data-bs-target="#objetivos" class="float-lg-end cardtxt">Ver más...</a>
        		<div id="objetivos" class="collapse">
        			<br>
        			<div class="border rounded w-75 float-lg-end p-2 colorGray">
        				<label class="card-text cardInfo"><strong>Objetivo General:</strong> <?= $c['objetivoGeneralCT'] ?></label><br>
        				<label class="card-text cardInfo"><strong>Impacto Esperado:</strong> <?= $c['impactoEsperado'] ?></label><br>
        				<label class="card-text cardInfo"><strong>Área Académica:</strong> <?= $c['areaAcademicaCT'] ?></label>
        			</div>
						</div>
      	  </div>
        </div>
      <hr>
        <div class="d-flex justify-content-around">
        	<div>
  	      <a href="#" class="p-2 btn btn-success shadow-sm ">Ver proyectos</a>
        	</div>
        	<div>
        		<a href="#" class="p-2 btn btn-warning shadow-sm">Inactivar</a>	
        	</div>
        </div>
      </div>
    </div>
<?php endforeach; 
}else{?>
  <div class="list-group">
    <a href="#" class="list-group-item list-group-item-action">
        <div class="d-flex flex-column">
          <div class="row">
              <label><strong>0</strong> - No hay celulas registrados</label>
          </div>
        </div>
    </a>
  </div>  
<?php } ?>