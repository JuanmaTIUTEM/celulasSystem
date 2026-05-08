<div class="container mt-4">
    <h2>➕ Registrar Usuario</h2>

    <form action="/usuarios/store" method="POST">

        <h5 class="mt-3">👤 Datos de Persona</h5>

        <div class="row">
            <div class="col-md-4">
                <label>Nombre</label>
                <input type="text" name="nombre" class="form-control" required>
            </div>

            <div class="col-md-4">
                <label>Apellidos</label>
                <input type="text" name="apellidos" class="form-control" required>
            </div>

            <div class="col-md-4">
                <label>Email personal</label>
                <input type="email" name="email" class="form-control" required>
            </div>

            <div class="col-md-4 mt-2">
                <label>Teléfono</label>
                <input type="text" name="telefono" class="form-control">
            </div>

            <div class="col-md-4 mt-2">
                <label>Género</label>
                <select name="genero" class="form-control" required>
                    <option value="">Seleccione</option>
                    <option>Masculino</option>
                    <option>Femenino</option>
                    <option>Otro</option>
                </select>
            </div>

            <div class="col-md-4 mt-2">
                <label>Fecha de nacimiento</label>
                <input type="date" name="fechaNacimiento" class="form-control">
            </div>

            <div class="col-md-4 mt-2">
                <label>CURP</label>
                <input type="text" name="curp" class="form-control">
            </div>

            <div class="col-md-4 mt-2">
                <label>RFC</label>
                <input type="text" name="rfc" class="form-control">
            </div>

            <div class="col-md-4 mt-2">
                <label>Institución</label>
                <input type="text" name="institucion" class="form-control">
            </div>

            <div class="col-md-4 mt-2">
                <label>Puesto</label>
                <input type="text" name="puesto" class="form-control">
            </div>
        </div>

        <h5 class="mt-4">🔐 Datos de Usuario</h5>

        <div class="row">
            <div class="col-md-4">
                <label>Correo institucional</label>
                <input type="email" name="correoInstitucional" class="form-control" required>
            </div>

            <div class="col-md-4">
                <label>Contraseña</label>
                <input type="password" name="contrasena" class="form-control" required minlength="6">
            </div>

            <div class="col-md-4">
                <label>Roles</label>
                <select name="roles[]" class="form-control" multiple required>
                    <?php foreach ($roles as $rol): ?>
                        <option value="<?= $rol['idRol'] ?>">
                            <?= $rol['nombreRol'] ?>
                        </option>
                    <?php endforeach; ?>
                </select>
                <small class="text-muted">Puedes seleccionar varios (Ctrl + Click)</small>
            </div>
        </div>

        <br>

        <button class="btn btn-primary">💾 Guardar</button>
        <a href="/usuarios" class="btn btn-secondary">Cancelar</a>

    </form>
</div>