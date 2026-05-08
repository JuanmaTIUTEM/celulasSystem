<?php

class Rol
{
    public function getAll()
    {
        $db = db();
        return $db->query("SELECT * FROM rol")->fetch_all(MYSQLI_ASSOC);
    }
}