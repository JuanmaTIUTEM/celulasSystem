<div class="container-fluid">

    <!-- TÍTULO -->
    <div class="row mb-3">
        <div class="col">
            <h1>Gestión de Usuarios</h1>
            <hr>
        </div>

        <div class="col text-end">
            <a href="/usuarios/create" class="btn btn-outline-primary">
                +
            </a>
        </div>
    </div>

    <!-- TABLA -->
    <div class="row">
        <div class="col" class="rounded">
            <div class="table-responsive rounded">
                <table class="table table-bordered table-hover align-middle">
                    <thead class="table-dark text-center">
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Correo</th>
                            <th class="d-none d-md-table-cell">Rol</th>
                            <th class="d-none d-lg-table-cell">Puesto</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody >
                        <?php foreach ($usuarios as $u): ?>
                            <tr>

                                <td class="text-center"><?= $u['idUsuario'] ?></td>

                                <td class="text-nowrap text-truncate" style="max-width: 180px;">
                                    <?= $u['nombreCompleto'] ?>
                                </td>

                                <td class="text-nowrap text-truncate" style="max-width: 220px;">
                                    <?= $u['correoInstitucional'] ?>
                                </td>

                                <td class="text-center d-none d-md-table-cell">
                                    <?= $u['rol'] ?>
                                </td>

                                <td class="d-none d-lg-table-cell">
                                    <?= $u['puesto'] ?>
                                </td>

                                <td class="text-center">
                                    <div class="btn-group btn-group-sm">
                                        <a class="btn btn-outline-info">Ver</a>
                                        <a class="btn btn-outline-warning">Editar</a>
                                        <a class="btn btn-outline-danger">Bloquear</a>
                                    </div>
                                </td>

                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
