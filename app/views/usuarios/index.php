<div class="container mt-4">
    <h2>Usuarios</h2>

    <a href="/usuarios/create" class="btn btn-primary mb-3">+ Nuevo Usuario</a>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Correo</th>
                <th>Rol</th>
                <th>Activo</th>
                <th>Acciones</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($usuarios as $u): ?>
            <tr>
                <td><?= $u['nombrePersona'] . " " . $u['apellidosPersona'] ?></td>
                <td><?= $u['correoInstitucional'] ?></td>
                <td><?= $u['roles'] ? $u['roles'] : 'Sin rol asignado' ?></td>
                <td><?= $u['bActivo'] ? 'Sí' : 'No' ?></td>

                <td>
                    <a href="/usuarios/edit/<?= $u['idUsuario'] ?>" class="btn btn-warning btn-sm">✏️</a>

                    <a href="/usuarios/toggle/<?= $u['idUsuario'] ?>" 
                       class="btn btn-sm"
                       onclick="return confirm('¿Cambiar estado?')">
                       <?= $u['bActivo'] ? '🔴 Desactivar' : '🟢 Activar' ?>
                    </a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>