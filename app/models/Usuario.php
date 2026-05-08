<?php

class Usuario
{
    public function registrarPersonaUsuario($data)
    {
        $db = db();

        // 🔍 VALIDAR CORREO DUPLICADO
        $stmt = $db->prepare("SELECT idUsuario FROM usuario WHERE correoInstitucional = ?");
        $stmt->bind_param("s", $data['correoInstitucional']);
        $stmt->execute();
        $res = $stmt->get_result();

        if ($res->num_rows > 0) {
            return [
                'status' => false,
                'error' => 'El correo institucional ya está registrado'
            ];
        }

        $clavePersona = 'PER' . rand(1000, 9999);
        $claveUsuario = 'USR' . rand(1000, 9999);

        $password = password_hash($data['contrasena'], PASSWORD_BCRYPT);

        try {

            $db->begin_transaction();

            // =====================
            // PERSONA
            // =====================
            $stmt = $db->prepare("
                INSERT INTO persona (
                    clavePersona, nombrePersona, apellidosPersona,
                    emailContacto, telefonoContacto, genero,
                    fechaNacimiento, curpPersona, rfcPersona,
                    institucion, puesto
                ) VALUES (?,?,?,?,?,?,?,?,?,?,?)
            ");

            $stmt->bind_param(
                "sssssssssss",
                $clavePersona,
                $data['nombre'],
                $data['apellidos'],
                $data['email'],
                $data['telefono'],
                $data['genero'],
                $data['fechaNacimiento'],
                $data['curp'],
                $data['rfc'],
                $data['institucion'],
                $data['puesto']
            );

            $stmt->execute();
            $idPersona = $db->insert_id;

            // =====================
            // USUARIO
            // =====================
            $stmt = $db->prepare("
                INSERT INTO usuario (
                    claveUsuario, idPersona, correoInstitucional,
                    contrasena, bActivo
                ) VALUES (?,?,?,?,b'1')
            ");

            $stmt->bind_param(
                "siss",
                $claveUsuario,
                $idPersona,
                $data['correoInstitucional'],
                $password
            );

            $stmt->execute();
            $idUsuario = $db->insert_id;

            // =====================
            // ROLES
            // =====================
            $stmtRol = $db->prepare("
                INSERT INTO usuario_rol (idUsuario, idRol)
                VALUES (?,?)
            ");

            foreach ($data['roles'] as $rol) {
                $stmtRol->bind_param("ii", $idUsuario, $rol);
                $stmtRol->execute();
            }

            $db->commit();

            return ['status' => true];

        } catch (Exception $e) {

            $db->rollback();

            return [
                'status' => false,
                'error' => $e->getMessage()
            ];
        }
    }

    public function getRolesByUsuario($idUsuario)
    {
        $db = db();

        $stmt = $db->prepare("
            SELECT idRol
            FROM usuario_rol
            WHERE idUsuario = ?
        ");

        $stmt->bind_param("i", $idUsuario);
        $stmt->execute();

        return array_column($stmt->get_result()->fetch_all(MYSQLI_ASSOC), 'idRol');
    }

    public function getAll()
    {
        $db = db();

        $sql = "
            SELECT u.idUsuario, p.nombrePersona, p.apellidosPersona,
                   u.correoInstitucional, u.bActivo,
                   GROUP_CONCAT(r.nombreRol SEPARATOR ', ') AS roles
            FROM usuario u
            JOIN persona p ON u.idPersona = p.idPersona
            LEFT JOIN usuario_rol ur ON u.idUsuario = ur.idUsuario
            LEFT JOIN rol r ON ur.idRol = r.idRol
            GROUP BY u.idUsuario
        ";

        return $db->query($sql)->fetch_all(MYSQLI_ASSOC);
    }

    public function getById($id)
    {
        $db = db();

        $stmt = $db->prepare("
            SELECT u.*, p.*
            FROM usuario u
            JOIN persona p ON u.idPersona = p.idPersona
            WHERE u.idUsuario = ?
        ");

        $stmt->bind_param("i", $id);
        $stmt->execute();

        return $stmt->get_result()->fetch_assoc();
    }

    public function update($data)
    {
        $db = db();

        try {

            $db->begin_transaction();

            // PERSONA
            $stmt = $db->prepare("
                UPDATE persona
                SET nombrePersona = ?, apellidosPersona = ?
                WHERE idPersona = ?
            ");

            $stmt->bind_param(
                "ssi",
                $data['nombre'],
                $data['apellidos'],
                $data['idPersona']
            );

            $stmt->execute();

            // USUARIO
            $stmt = $db->prepare("
                UPDATE usuario
                SET correoInstitucional = ?
                WHERE idUsuario = ?
            ");

            $stmt->bind_param(
                "si",
                $data['correoInstitucional'],
                $data['idUsuario']
            );

            $stmt->execute();

            // ROLES (RESET)
            $db->query("DELETE FROM usuario_rol WHERE idUsuario = ".$data['idUsuario']);

            $stmtRol = $db->prepare("
                INSERT INTO usuario_rol (idUsuario, idRol)
                VALUES (?,?)
            ");

            foreach ($data['roles'] as $rol) {
                $stmtRol->bind_param("ii", $data['idUsuario'], $rol);
                $stmtRol->execute();
            }

            $db->commit();

            return ['status' => true];

        } catch (Exception $e) {

            $db->rollback();

            return ['status' => false, 'error' => $e->getMessage()];
        }
    }

    public function toggleActivo($id)
    {
        $db = db();

        $stmt = $db->prepare("
            UPDATE usuario
            SET bActivo = NOT bActivo
            WHERE idUsuario = ?
        ");

        $stmt->bind_param("i", $id);
        return $stmt->execute();
    }

    public function crearUsuarioConRoles($data)
    {
        $db = db();

        $db->begin_transaction();

        try {

            // 🔹 Insertar persona
            $stmt = $db->prepare("
                INSERT INTO persona (
                    nombrePersona, apellidosPersona, emailContacto,
                    telefonoContacto, genero, fechaNacimiento,
                    curpPersona, rfcPersona, institucion, puesto
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
            ");

            $stmt->bind_param(
                "ssssssssss",
                $data['nombre'],
                $data['apellidos'],
                $data['email'],
                $data['telefono'],
                $data['genero'],
                $data['fechaNacimiento'],
                $data['curp'],
                $data['rfc'],
                $data['institucion'],
                $data['puesto']
            );

            $stmt->execute();
            $idPersona = $db->insert_id;

            // 🔹 Insertar usuario
            $stmt = $db->prepare("
                INSERT INTO usuario (
                    idPersona, correoInstitucional, contrasena, bActivo
                ) VALUES (?, ?, ?, b'1')
            ");

            $stmt->bind_param(
                "iss",
                $idPersona,
                $data['correoInstitucional'],
                $data['contrasena']
            );

            $stmt->execute();
            $idUsuario = $db->insert_id;

            // 🔥 Insertar roles (loop mágico)
            $stmtRol = $db->prepare("
                INSERT INTO usuario_rol (idUsuario, idRol)
                VALUES (?, ?)
            ");

            foreach ($data['roles'] as $idRol) {
                $stmtRol->bind_param("ii", $idUsuario, $idRol);
                $stmtRol->execute();
            }

            $db->commit();

        } catch (Exception $e) {
            $db->rollback();
            die("Error al guardar usuario: " . $e->getMessage());
        }
    }

    public function obtenerDatosPorId($idUsuario)
    {
        $db = db();

        $sql = "
            SELECT 
                u.idUsuario,
                u.claveUsuario,
                u.correoInstitucional,
                u.bActivo,
                p.idPersona,
                p.clavePersona,
                p.nombrePersona AS nombre,
                p.apellidosPersona AS apellidos,
                CONCAT(p.nombrePersona, ' ', p.apellidosPersona) AS nombreCompleto,
                p.emailContacto,
                p.telefonoContacto,
                p.curpPersona,
                p.rfcPersona,
                p.institucion,
                p.puesto,
                GROUP_CONCAT(r.nombreRol SEPARATOR ', ') AS rol
            FROM usuario u
            JOIN persona p ON u.idPersona = p.idPersona
            LEFT JOIN usuario_rol ur ON u.idUsuario = ur.idUsuario
            LEFT JOIN rol r ON ur.idRol = r.idRol
            WHERE u.idUsuario = ?
            GROUP BY u.idUsuario
        ";

        $stmt = $db->prepare($sql);
        $stmt->bind_param("i", $idUsuario);
        $stmt->execute();

        $result = $stmt->get_result();
        return $result->fetch_assoc();
    }

    public function countAll()
    {
        $db = db();

        $sql = "SELECT COUNT(*) AS total FROM usuario";

        $result = $db->query($sql);

        return $result->fetch_assoc();
    }
}

















/*

class Usuario
{
    public function registrarPerUser ($data)
    {
        $db = db();

        $stmt = $db->prepare("
            CALL sp_registrar_usuario_persona(
                ?,?,?,?,?,?,?,?,?,?,?,?,?
            )
        ");

        $passwordMd5 = md5($data['password']);

        $passwordMd5 = md5($data['password']);

        $stmt->bind_param(
            "sssssssssssss",
            $data['clavePersona'],
            $data['nombrePersona'],
            $data['apellidosPersona'],
            $data['emailContacto'],
            $data['telefonoContacto'],
            $data['curpPersona'],
            $data['rfcPersona'],
            $data['institucion'],
            $data['puesto'],

            $data['claveUsuario'],
            $data['correoInstitucional'],
            $passwordMd5,          // ✔ variable
            $data['rol']
        );


        try {
            $stmt->execute();
            return ['status' => true];
        } catch (mysqli_sql_exception $e) {

            // MOSTRAR ERROR REAL (solo desarrollo)
            return [
                'status' => false,
                'error'  => $e->getMessage()
            ];
        }
    }
    public function registrarPersonaUsuario($data)
{
    $db = db();

    // Generar claves
    $clavePersona = 'PER' . rand(1000, 9999);
    $claveUsuario = 'USR' . rand(1000, 9999);

    // Encriptar contraseña
    $password = password_hash($data['contrasena'], PASSWORD_BCRYPT);

    $sql = "CALL sp_registrar_usuario_persona(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    $stmt = $db->prepare($sql);

    if (!$stmt) {
        return ['status' => false, 'error' => $db->error];
    }

    $stmt->bind_param(
        "sssssssssssssss",
        $clavePersona,
        $data['nombre'],
        $data['apellidos'],
        $data['email'],
        $data['telefono'],
        $data['genero'],
        $data['fechaNacimiento'],
        $data['curp'],
        $data['rfc'],
        $data['institucion'],
        $data['puesto'],

        $claveUsuario,
        $data['correoInstitucional'],
        $password,
        $data['rol']
    );

    if ($stmt->execute()) {
        return ['status' => true];
    } else {
        return ['status' => false, 'error' => $stmt->error];
    }
}

    public function validarCredenciales($email, $password)
    {
        $db = db();

        $stmt = $db->prepare(
            "SELECT 
                idUsuario,
                CAST(bActivo AS UNSIGNED) AS bActivo
             FROM usuario
             WHERE correoInstitucional = ?
               AND contrasena = ?"
        );

        $stmt->bind_param("ss", $email, md5($password));
        $stmt->execute();

        $res = $stmt->get_result();

        if ($res->num_rows === 0) {
            return ['status' => false, 'error' => 'CREDENCIALES'];
        }

        $user = $res->fetch_assoc();

        if ((int)$user['bActivo'] !== 1) {
            return ['status' => false, 'error' => 'INACTIVO'];
        }

        return ['status' => true, 'idUsuario' => $user['idUsuario']];
    }

    public function obtenerDatosPorId($idUsuario)
    {
        $db = db();

        $stmt = $db->prepare(
            "SELECT * 
             FROM vw_usuarioPersona 
             WHERE idUsuario = ?"
        );

        $stmt->bind_param("i", $idUsuario);
        $stmt->execute();

        return $stmt->get_result()->fetch_assoc();
    }

    public function getAll()
    {
        $db = db();

        $sql = "
            SELECT *
            FROM vw_usuarioPersona
            ORDER BY nombreCompleto
        ";

        $result = $db->query($sql);

        if (!$result) {
            return [];
        }

        return $result->fetch_all(MYSQLI_ASSOC);
    }

    public function countAll()
    {
        $sql = "SELECT COUNT(*) AS total FROM usuario";
        $result = db()->query($sql);
        return $result->fetch_assoc();
    }

    public function getById($id)
    {
        $db = db();

        $stmt = $db->prepare("
            SELECT 
                u.idUsuario,
                u.correoInstitucional,
                u.rol,
                u.bActivo,
                p.idPersona,
                p.nombrePersona,
                p.apellidosPersona
            FROM usuario u
            INNER JOIN persona p ON u.idPersona = p.idPersona
            WHERE u.idUsuario = ?
        ");

        $stmt->bind_param("i", $id);
        $stmt->execute();

        return $stmt->get_result()->fetch_object();
    }

   public function update($data)
   {
       $db = db();
       $db->begin_transaction();

       try {

           // 🔹 actualizar persona
           $stmt1 = $db->prepare("
               UPDATE persona
               SET nombrePersona = ?, apellidosPersona = ?
               WHERE idPersona = ?
           ");

           $stmt1->bind_param(
               "ssi",
               $data['nombrePersona'],
               $data['apellidosPersona'],
               $data['idPersona']
           );

           $stmt1->execute();

           // 🔹 actualizar usuario
           $stmt2 = $db->prepare("
               UPDATE usuario
               SET correoInstitucional = ?, rol = ?
               WHERE idUsuario = ?
           ");

           $stmt2->bind_param(
               "ssi",
               $data['correoInstitucional'],
               $data['rol'],
               $data['idUsuario']
           );

           $stmt2->execute();

           $db->commit();

           return ['status' => true];

       } catch (Exception $e) {

           $db->rollback();

           return [
               'status' => false,
               'error' => $e->getMessage()
           ];
       }
   }

   public function toggleActivo($id)
{
    $db = db();

    $stmt = $db->prepare("
        UPDATE usuario 
        SET bActivo = NOT bActivo
        WHERE idUsuario = ?
    ");

    $stmt->bind_param("i", $id);

    return $stmt->execute();
}
}*/
