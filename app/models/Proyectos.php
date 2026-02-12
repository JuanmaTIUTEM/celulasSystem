<?php 

class Proyectos
{
    public function getAll()
    {
        $db = db();

        $sql = "
            SELECT * FROM proyecto
            ORDER BY clave_proyecto";

        $result = $db->query($sql);

        if (!$result) {
            return [];
        }

        return $result->fetch_all(MYSQLI_ASSOC);
    }
    public function countAll()
    {
        $sql = "SELECT COUNT(*) AS total FROM proyecto";
        $result = db()->query($sql);
        return $result->fetch_assoc();
    }
    public function getById($idTitular)
    {
        $db = db();

        $stmt = $db->prepare(
            "SELECT * 
             FROM vw_proyectos_usuario
             WHERE idTitular = ?"
        );

        $stmt->bind_param("i", $idCoordinadorCT);
        $stmt->execute();

        return $stmt->get_result()->fetch_assoc();
    }
}
