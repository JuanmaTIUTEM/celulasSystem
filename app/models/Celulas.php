<?php 

class Celulas
{
    public function getAll()
    {
        $db = db();

        $sql = "
            SELECT * FROM vw_celulas_coordinador
            ORDER BY claveCT";

        $result = $db->query($sql);

        if (!$result) {
            return [];
        }

        return $result->fetch_all(MYSQLI_ASSOC);
    }
    public function countAll()
    {
        $sql = "SELECT COUNT(*) AS total FROM celulatecnologica";
        $result = db()->query($sql);
        return $result->fetch_assoc();
    }
    public function getById($idCoordinadorCT)
    {
        $db = db();

        $stmt = $db->prepare(
            "SELECT * 
             FROM vw_celulas_coordinador 
             WHERE idCoordinadorCT = ?"
        );

        $stmt->bind_param("i", $idCoordinadorCT);
        $stmt->execute();

        return $stmt->get_result()->fetch_assoc();
    }
}
