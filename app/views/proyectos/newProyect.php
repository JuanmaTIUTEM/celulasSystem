<div class="container-fluid py-4">
  <div class="card shadow-lg mx-auto" style="max-width: 1000px;">
    <div class="card-body">

      <h3 class="text-center">INSCRIPCIÓN DE PROYECTO DE INVESTIGACIÓN</h3>
      <hr>

      <form method="POST" action="/proyectos/store">

        <!-- 1. DATOS GENERALES -->
        <h5 class="mt-4">1. Datos Generales <hr></h5>

        <div class="row mb-3">
          <div class="col-md-6">
            <label>Clave del Proyecto</label>
            <input type="text" name="clave" class="form-control" required>
          </div>
          <div class="col-md-6">
            <label>Título del Proyecto</label>
            <input type="text" name="titulo" class="form-control" required>
          </div>
        </div>

        <div class="row mb-3">
          <div class="col-md-6">
            <label>Fecha de inicio</label>
            <input type="date" name="fecha_inicio" class="form-control">
          </div>
          <div class="col-md-6">
            <label>Fecha de terminación</label>
            <input type="date" name="fecha_terminacion" class="form-control">
          </div>
        </div>

        <!-- 5. OBJETIVO -->
        <div class="mb-3">
          <label><strong>Objetivo</strong></label>
          <textarea id="objetivo" name="objetivo" class="form-control w-100 " rows="5"></textarea>
        </div>

        <!-- 6. RESUMEN -->
        <div class="mb-3">
          <label><strong>Resumen</strong></label>
          <textarea id="resumen" name="resumen" class="form-control w-100 " rows="5"></textarea>
        </div>

        <!-- 7-10 TITULAR -->
        <h5 class="mt-4">2. Titular del Proyecto <hr></h5>

        <div class="row mb-3">
          <div class="col-md-6">
            <label>Nombre</label>
            <input type="text" name="titular_nombre" class="form-control">
          </div>
          <div class="col-md-6">
            <label>Puesto</label>
            <input type="text" name="titular_puesto" class="form-control">
          </div>
        </div>

        <div class="row mb-3">
          <div class="col-md-6">
            <label>CURP</label>
            <input type="text" name="titular_curp" class="form-control">
          </div>
          <div class="col-md-6">
            <label>RFC</label>
            <input type="text" name="titular_rfc" class="form-control">
          </div>
        </div>
        <h5 class="mt-4">3. Integrantes <hr></h5>

        
        
        <!-- 16 -->
        <div class="mb-3">
          <label><strong>Línea de Investigación y/o Desarrollo Tecnológico relacionada con el Proyecto</strong></label>
          <textarea id="linea_investigacion" name="linea_investigacion" class="form-control w-100"  rows="5"></textarea>
        </div>

        <!-- 17 -->
        <div class="mb-3">
          <label ><strong>Experiencia previa relacionada con el proyecto, o evidencias que respaldan la participación de todos los integrantes del proyecto</strong></label>
          <textarea id="experiencia_previa" name="experiencia_previa"  class="form-control w-100"  rows="5"></textarea>
        </div>

    
        <label class="mt-4"><strong>Producción relacionada con el proyecto</strong></label>

        <div class="row">
          <?php
          $produccion = [
              "Estadías","Prototipo","Patentes",
              "Investigación Básica","Investigación Aplicada",
              "Desarrollo Experimental","Servicio Público",
              "Servicio Social","Servicio Productivo"
          ];
          foreach($produccion as $item):
          ?>
            <div class="col-md-4">
              <input type="checkbox" name="produccion[]" value="<?= $item ?>"> <?= $item ?>
            </div>
          <?php endforeach; ?>
        </div>

        <!-- SEAES -->
        <label class="mt-4"><strong>Producción relacionada con los Criterios del SEAES</strong></label>

        <div class="row">
          <?php
          $seaes = [
              "Responsabilidad Social","Equidad Social y de Género",
              "Inclusión","Excelencia","Vanguardia",
              "Innovación Social","Interculturalidad"
          ];
          foreach($seaes as $item):
          ?>
            <div class="col-md-4">
              <input type="checkbox" name="seaes[]" value="<?= $item ?>"> <?= $item ?>
            </div>
          <?php endforeach; ?>
        </div>

        <div class="text-end mt-4">
          <button class="btn btn-success">Guardar Proyecto</button>
        </div>

      </form>
    </div>
  </div>
</div>

<script>
  /*$(function() {
    $('#objetivo').summernote({
      height: 150,
      placeholder: 'Describa el objetivo principal del proyecto...'
    });

    $('#resumen').summernote({
      height: 200,
      placeholder: 'Describa antecedentes, alcances y resultados esperados...'
    });

    $('#linea_investigacion').summernote({
      height: 120
    });

    $('#experiencia_previa').summernote({
      height: 200
    });
  });*/
</script>