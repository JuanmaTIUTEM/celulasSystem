<?php 

	//print_r($usuario['usuario']);

$user = $usuario['usuario'];


 ?>

<div class="container min-vh-50 d-flex justifya-content-center align-items-center">
	

	<div class="card shadow w-100 p-4 bg-fondoOf">
		<div>
			<h2 class="text-center"><span style='font-size:50px;'>&#128100;</span> Mi Perfil <hr></h2>
		</div>
	
		<div class="row">
			<div class="col-sm-8"></div>
		  	<div class="col-sm-4">
		  		<div class="form-floating mb-3 mt-3">
			  	  	<input type="text" class="form-control editable" id="correoInst" placeholder="Enter email" name="correoInst" value="<?php echo $user['correo']?>" disabled>
			  	  	<label for="correoInst">Correo Institucional</label>
		  		</div>
		  	</div>
		</div>

		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
				<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="nombre" placeholder="Escriba su nombre" name="nombre" value="<?php echo $user['nombrePersona']?>" disabled>
			  	  	<label for="nombre">Nombre</label>
		  		</div>
			</div>
		  	<div class="col-sm-5">
		  		<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="apellidosPersona" placeholder="Escriba su nombre" name="apellidosPersona" value="<?php echo $user['apellidosPersona']?>" disabled>
			  	  	<label for="apellidosPersona">Apellidos</label>
		  		</div>
		  	</div>
		</div>

		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
				<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="curp" placeholder="Escriba su CURP" name="curp" value="<?php echo $user['curp']?>" disabled>
			  	  	<label for="curp">CURP</label>
		  		</div>
			</div>
		  	<div class="col-sm-5">
		  		<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="rfc" placeholder="Escriba su RFC" name="rfc" value="<?php echo $user['rfc']?>" disabled>
			  	  	<label for="rfc">RFC</label>
		  		</div>
		  	</div>
		</div>

		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
				<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="emailCont" placeholder="Escriba su email personal" name="emailCont" value="<?php echo $user['emailContacto']?>" disabled>
			  	  	<label for="emailCont">Email Contacto</label>
		  		</div>
			</div>
		  	<div class="col-sm-5">
		  		<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="telefono" placeholder="Escriba su teléfono" name="telefono" value="<?php echo $user['telefono']?>" disabled>
			  	  	<label for="telefono">Teléfono de contacto</label>
		  		</div>
		  	</div>
		</div>

		<div class="row">
			<div class="col-sm-1"></div>
			<div class="col-sm-5">
				<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="puesto" placeholder="Escriba su puesto" name="puesto" value="<?php echo $user['puesto']?>" disabled>
			  	  	<label for="puesto">Puesto</label>
		  		</div>
			</div>
		  	<div class="col-sm-5">
		  		<div class="form-floating mb-3 ">
			  	  	<input type="text" class="form-control editable" id="institucion" placeholder="Escriba su institución" name="institucion" value="<?php echo $user['institucion']?>" disabled>
			  	  	<label for="institucion">Institución</label>
		  		</div>
		  	</div>
		</div>

		<div class="d-flex justify-content-around" id="editar">

			<div class="mb-3" id="edit">
				<button title="Editar" class="btn btn-lg btn-outline-primary" id="btnEdit" name="btnEdit" onclick="editar();"><span style='font-size:20px;'>&#128393;</span></button>
			</div>
			
		

			<div class="mb-3" id="save" >
				<button title="Guardar" class="btn btn-lg btn-outline-success" id="btnSave" name="btnSave" onclick="guardar();"><span style='font-size:20px;'>&#128190;</span></button>
			</div>


			<div class="mb-3" id="cancel" >
				<button title="Cancelar" class="btn btn-lg btn-outline-danger" id="btnCancel" name="btnCancel" onclick="cancelar();"><span style='font-size:20px;'>&#128683;</span></button>
			</div>
			
		</div>
		
	</div>
</div>

<script>
	/*style="display:none;"
	window.onload = function() {
		document.getElementById('save').style.display = 'none';
		document.getElementById('cancel').style.display = 'none';
		document.getElementById('nombre').disabled = true;
		document.getElementById('apellidosPersona').disabled = true;
		document.getElementById('curp').disabled = true;
		document.getElementById('rfc').disabled = true;
		document.getElementById('emailCont').disabled = true;
		document.getElementById('telefono').disabled = true;
		document.getElementById('puesto').disabled = true;
		document.getElementById('institucion').disabled = true;
	};
	function editar(){
		alert("Editar!");
		document.getElementById('edit').style.display = 'none';
		document.getElementById('cancel').style.display = 'flex';
		document.getElementById('save').style.display = 'flex';
		document.getElementById('nombre').disabled = false;
		document.getElementById('apellidosPersona').disabled = false;
		document.getElementById('curp').disabled = false;
		document.getElementById('rfc').disabled = false;
		document.getElementById('emailCont').disabled = false;
		document.getElementById('telefono').disabled = false;
		document.getElementById('puesto').disabled = false;
		document.getElementById('institucion').disabled = false;

	}*/

	let valoresOriginales = {};

	// Al cargar la página
	window.onload = () => {
	    toggleEdicion(false);
	    guardarValoresOriginales();
	};

	// Guarda los valores iniciales
	function guardarValoresOriginales() {
	    document.querySelectorAll('.editable').forEach(input => {
	        valoresOriginales[input.id] = input.value;
	    });
	}

	// Habilita o deshabilita edición
	function toggleEdicion(activar) {
	    document.getElementById('edit').style.display = activar ? 'none' : 'flex';
	    document.getElementById('save').style.display = activar ? 'flex' : 'none';
	    document.getElementById('cancel').style.display = activar ? 'flex' : 'none';

	    document.querySelectorAll('.editable').forEach(input => {
	        input.disabled = !activar;
	    });
	}

	// Botón editar
	function editar() {
	    toggleEdicion(true);
	}

	// Botón cancelar
	function cancelar() {
	    // Restaurar valores originales
	    document.querySelectorAll('.editable').forEach(input => {
	        input.value = valoresOriginales[input.id];
	    });

	    toggleEdicion(false);
	}

	// Botón guardar
	function guardar() {
	    let cambios = {};

	    document.querySelectorAll('.editable').forEach(input => {
	        if (input.value !== valoresOriginales[input.id]) {
	            cambios[input.name] = input.value;
	        }
	    });

	    // Si no hubo cambios
	    if (Object.keys(cambios).length === 0) {
	        toggleEdicion(false);
	        return;
	    }

	    // Aquí enviarías SOLO los cambios por AJAX
	    console.log("Campos modificados:", cambios);

	    /*
	    fetch('guardar_perfil.php', {
	        method: 'POST',
	        headers: { 'Content-Type': 'application/json' },
	        body: JSON.stringify(cambios)
	    })
	    .then(res => res.json())
	    .then(data => {
	        guardarValoresOriginales();
	        toggleEdicion(false);
	    });
	    */
	}
</script>
