<?php require __DIR__ . '/head.php'; ?>
<?php require __DIR__ . '/navbar.php'; ?>

<div class="container-fluid">
    <div class="row g-0">

        <?php if (isset($_SESSION['usuario'])): ?>
            <!-- MENÚ LATERAL -->
            <div class="col-md-2 col-lg-2">
                <?php require __DIR__ . '/sidebar.php'; ?>
            </div>

            <!-- CUERPO -->
            <main class="col-md-10 col-lg-10 p-4">
                <?php require $viewPath; ?>
            </main>
        <?php else: ?>
            <!-- SIN SESIÓN -->
            <main class="col-12 p-4">
                <?php require $viewPath; ?>
            </main>
        <?php endif; ?>

    </div>
</div>

<?php require __DIR__ . '/footer.php'; ?>
