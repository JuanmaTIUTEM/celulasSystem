<?php 
    $user = $_SESSION['usuario'];
    echo $user['rol'];

    switch($user['rol']){
        case 'Administrador':
            $mnp = "/proyectos";
            $p = "Proyectos";
            $mnc = "/celulas";
            $c = "Células";
            break;
        case 'Académico':
            $mnp = "/misProyectos";
            $p = "Mis Proyectos";
            $mnc = "/misCelulas";
            $c = "Mis Células";
            break;
 
    }  
             

 ?>
<aside class="sidebar bg-fondoOf">
    <ul class="menu">
        <li id="mndash">
            <a href="/dashboard">
                <img src="/app/assets/img/dashboard.png" alt="Dashboard">
                <span>Dashboard</span>
            </a>
        </li>

        <li id="mnusr">
            <a href="/usuarios">
                <img src="/app/assets/img/usuarios.png" alt="Usuarios">
                <span>Usuarios</span>
            </a>
        </li>

        <li>
            <a href="<?php echo $mnc; ?> ">
                <img src="/app/assets/img/celulas.png" alt="Células">
                <span><?php echo $c; ?> </span>
            </a>
        </li>

        <li>
            <a href="<?php echo $mnp; ?> ">
                <img src="/app/assets/img/proyectos.png" alt="Proyectos">
                <span><?php echo $p; ?></span>
            </a>
        </li>
    </ul>
</aside>

<script>
    var rol = "<?php echo $user['rol']; ?>";
    console.log(rol);
    if (rol != "Administrador") {
        document.getElementById('mndash').style.display ='none';
        document.getElementById('mnusr').style.display ='none';
    }
</script>
