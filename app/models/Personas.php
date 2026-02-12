<?php 

class Personas
{
    public function obtenerPersonaPorId($idPersona)
    {
        $db = db();

        $stmt = $db->prepare(
            "SELECT 
                idPersona,
                clavePersona,
                nombrePersona,
                apellidosPersona,
                emailContacto,
                telefonoContacto,
                curpPersona,
                rfcPersona,
                institucion,
                puesto
             FROM persona 
             WHERE idPersona = ?"
        );

        $stmt->bind_param("i", $idPersona);
        $stmt->execute();

        return $stmt->get_result()->fetch_assoc();
    }

    public function getAll()
    {
        $db = db();

        $sql = "
            SELECT 
                idPersona,
                CONCAT(nombrePersona,' ',apellidosPersona) AS nombreCompleto,
                emailContacto,
                telefonoContacto,
                institucion,
                puesto
            FROM persona
            ORDER BY nombreCompleto
        ";

        $result = $db->query($sql);

        return $result ? $result->fetch_all(MYSQLI_ASSOC) : [];
    }

    public function countAll()
    {
        $db = db();

        $sql = "
            SELECT COUNT(*) AS totalPersonas
            FROM persona
        ";

        $result = $db->query($sql);

        return $result ? $result->fetch_assoc() : ['totalPersonas' => 0];
    }
}
