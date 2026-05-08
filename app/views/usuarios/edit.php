<div class="container mt-4">
    <h2>Editar Usuario</h2>

    <form action="/usuarios/update" method="POST">

        <input type="hidden" name="idUsuario" value="<?= $usuario->idUsuario ?>">
        <input type="hidden" name="idPersona" value="<?= $usuario->idPersona ?>">

        <div class="row">
            <div class="col-md-6">
                <label>Nombre</label>
                <input type="text" name="nombrePersona" class="form-control"
                       value="<?= $usuario->nombrePersona ?>" required>
            </div>

            <div class="col-md-6">
                <label>Apellidos</label>
                <input type="text" name="apellidosPersona" class="form-control"
                       value="<?= $usuario->apellidosPersona ?>" required>
            </div>
        </div>

        <div class="row mt-3">
            <div class="col-md-6">
                <label>Correo</label>
                <input type="email" name="correoInstitucional"
                       value="<?= $usuario->correoInstitucional ?>"
                       class="form-control" required>
            </div>

            <div class="col-md-6">
                <label>Rol</label>
                <select name="rol" class="form-control">
                    <option <?= $usuario->rol == 'Administrador' ? 'selected' : '' ?>>Administrador</option>
                    <option <?= $usuario->rol == 'Académico' ? 'selected' : '' ?>>Académico</option>
                </select>
            </div>
        </div>

        <div class="mt-4">
            <button class="btn btn-success">Actualizar</button>
            <a href="/usuarios" class="btn btn-secondary">Cancelar</a>
        </div>

    </form>
</div>