
<style>
    a,
    a:hover,
    a:focus,
    a:active {
        text-decoration: none !important;
    }
</style>
<h1>Dashboard <hr></h1>
<p>Bienvenido <?= $_SESSION['usuario']['nombrePersona'] ?></p>

<div class="d-flex flex-wrap">

    <!-- CÉLULAS -->
    <a href="/celulas">
        <div class="m-2">
            <div class="card card-counter text-center">
                <div class="position-relative">
                    <img src="/app/assets/img/celulas.png"
                         class="card-img-top card-img-fixed"
                         alt="Células Tecnológicas">

                    <span class="badge-counter"><?= $celulas ?></span>
                </div>
                <div class="card-body py-2">
                    <h5 class="card-title mb-0">Células Tecnológicas</h5>
                </div>
            </div>
        </div>
    </a>
    

    <!-- PROYECTOS -->
    <a href="/proyectos">
        <div class="m-2">
            <div class="card card-counter text-center">
                <div class="position-relative">
                    <img src="/app/assets/img/proyectos.png"
                         class="card-img-top card-img-fixed"
                         alt="Proyectos">

                    <span class="badge-counter"><?= $proyectos ?></span>
                </div>
                <div class="card-body py-2">
                    <h5 class="card-title mb-0">Proyectos</h5>
                </div>
            </div>
        </div>
    </a>

    <!-- USUARIOS -->
    <a href="/usuarios">
        <div class="m-2">
            <div class="card card-counter text-center">
                <div class="position-relative">
                    <img src="/app/assets/img/usuarios.png"
                         class="card-img-top card-img-fixed"
                         alt="Usuarios">

                    <span class="badge-counter"><?= $usuarios ?></span>
                </div>
                <div class="card-body py-2">
                    <h5 class="card-title mb-0">Usuarios</h5>
                </div>
            </div>
        </div>
    </a>

</div>
