<nav class="navbar navbar-expand-sm fondoOficial navbar-dark fixed-top">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img 
            src="/app/assets/img/logoCT.png"
            alt="Logo SIGeCT_UteM"
            class="img-fluid logo-navbar bg-fondoOf rounded p-2"
        >
                        <span>SIGeCT_UteM-OGICyT</span>
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav ms-auto">

                <?php if (isset($_SESSION['usuario'])): ?>

                    <li class="nav-item">
                        <a class="nav-link" href="/logout"><span style='font-size:15px;'>&#128274;</span> Cerrar sesión</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/miPerfil"><span style='font-size:15px;'>&#128100;</span>Mi perfil</a>
                    </li>

                <?php else: ?>

                    <li class="nav-item">
                        <a class="nav-link" href="/login"><span style='font-size:15px;'>&#128275;</span> Iniciar sesión</a>
                    </li>

                <?php endif; ?>

                <li class="nav-item">
                    <a class="nav-link" href="#"><span style='font-size:15px;'>&#128389;</span> Contacto</a>
                </li>

            </ul>
        </div>
    </div>
</nav>
