<?php

class Bitacora
{
    public function registrar($idUsuario, $accion)
    {
        $db = db();

        $stmt = $db->prepare(
            "INSERT INTO bitacora_accesos 
             (idUsuario, accion, ip, userAgent) 
             VALUES (?, ?, ?, ?)"
        );

        $ip = $_SERVER['REMOTE_ADDR'] ?? 'N/A';
        $ua = $_SERVER['HTTP_USER_AGENT'] ?? 'N/A';

        $stmt->bind_param("isss", $idUsuario, $accion, $ip, $ua);
        $stmt->execute();
    }
}
