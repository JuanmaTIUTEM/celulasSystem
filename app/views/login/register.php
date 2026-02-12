<div class="container min-vh-50 d-flex justify-content-center align-items-center">

    <div class="d-flex flex-column align-items-center w-100">

        <!-- Logo institucional -->
        <img 
            src="/app/assets/img/logoCT.png"
            alt="Logo SIGeCT_UteM"
            class="img-fluid mb-4 logo-institucional"
        >

        <!-- Card Register -->
        <div class="card shadow w-50 p-4 bg-fondoOf">

            <div class="text-center mb-4">
                <h1 class="h4 fw-bold text-primary">Registro de Usuario</h1>
                <p class="text-muted mb-2">Sistema de Gestión de Células Tecnológicas</p>
                <hr>
            </div>

            <form method="POST" action="/registro/store" class="needs-validation" novalidate>

                <div class="mb-3">
                    <label class="form-label fw-semibold">Nombre completo</label>
                    <input 
                        type="text"
                        name="nombre"
                        class="form-control"
                        placeholder="Nombre del usuario"
                        required
                    >
                    <div class="invalid-feedback">
                        El nombre es obligatorio.
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label fw-semibold">Apellidos</label>
                    <input 
                        type="text"
                        name="apellidos"
                        class="form-control"
                        placeholder="Apellidos del usuario"
                        required
                    >
                    <div class="invalid-feedback">
                        Los apellidos son obligatorios.
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label fw-semibold">Correo institucional</label>
                    <input 
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="usuario@utem.edu.mx"
                        required
                    >
                    <div class="invalid-feedback">
                        Ingresa un correo válido.
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label fw-semibold">Contraseña</label>
                    <input 
                        type="password"
                        name="pass"
                        class="form-control"
                        required
                    >
                    <div class="invalid-feedback">
                        La contraseña es obligatoria.
                    </div>
                </div>

                <div class="mb-3">
                    <label class="form-label fw-semibold">Confirmar contraseña</label>
                    <input 
                        type="password"
                        name="pass_confirm"
                        class="form-control"
                        required
                    >
                    <div class="invalid-feedback">
                        Debes confirmar la contraseña.
                    </div>
                </div>

                <div class="d-grid p-2">
                    <button type="submit" class="btn btn-outline-primary">
                        Registrarme
                    </button>
                </div>

                <div class="text-center mt-3">
                    <span class="text-muted">¿Ya tienes cuenta?</span>
                    <a href="/login" class="fw-semibold text-primary text-decoration-none">
                        Iniciar sesión
                    </a>
                </div>

                <?php if (isset($error)): ?>
                    <div class="alert alert-danger mt-3 text-center">
                        <?= $error ?>
                    </div>
                <?php endif; ?>

            </form>

        </div>

    </div>

</div>
