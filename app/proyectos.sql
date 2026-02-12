USE desicete;

CREATE TABLE proyecto (
    id_proyecto INT AUTO_INCREMENT PRIMARY KEY,
    clave_proyecto VARCHAR(50) UNIQUE,
    titulo VARCHAR(255) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    objetivo TEXT,
    resumen TEXT,
    linea_investigacion TEXT,
    experiencia_previa TEXT,
    carrera VARCHAR(150),
    fecha_registro DATE
);
CREATE TABLE titular (
    id_titular INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    nombre_completo VARCHAR(200),
    puesto VARCHAR(150),
    curp VARCHAR(18),
    rfc VARCHAR(13),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE integrante (
    id_integrante INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    nombre VARCHAR(200),
    categoria ENUM('Responsable','Colaborador','Alumno'),
    horas_semana INT,
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE financiamiento (
    id_financiamiento INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    equipo DECIMAL(12,2),
    material DECIMAL(12,2),
    otros DECIMAL(12,2),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE fuente_financiamiento (
    id_fuente INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    descripcion VARCHAR(255),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE produccion_proyecto (
    id_produccion INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    tipo ENUM(
        'Estadías',
        'Prototipo',
        'Patentes',
        'Investigación Básica',
        'Investigación Aplicada',
        'Desarrollo Experimental',
        'Servicio Público',
        'Servicio Social',
        'Servicio Productivo',
        'Otros'
    ),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE produccion_seaes (
    id_seaes INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    criterio ENUM(
        'Responsabilidad Social',
        'Equidad Social y de Género',
        'Inclusión',
        'Excelencia',
        'Vanguardia',
        'Innovación social',
        'Interculturalidad'
    ),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE cronograma (
    id_cronograma INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    actividad VARCHAR(255),
    bimestre_1 BOOLEAN,
    bimestre_2 BOOLEAN,
    bimestre_3 BOOLEAN,
    bimestre_4 BOOLEAN,
    bimestre_5 BOOLEAN,
    bimestre_6 BOOLEAN,
    bimestre_7 BOOLEAN,
    bimestre_8 BOOLEAN,
    bimestre_9 BOOLEAN,
    bimestre_10 BOOLEAN,
    bimestre_11 BOOLEAN,
    bimestre_12 BOOLEAN,
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE publicacion (
    id_publicacion INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    tipo ENUM(
        'Artículo indexado',
        'Artículo arbitrado',
        'Divulgación',
        'Memorias de Congreso',
        'Estadía',
        'Otra'
    ),
    especificacion VARCHAR(150),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);
CREATE TABLE validacion (
    id_validacion INT AUTO_INCREMENT PRIMARY KEY,
    id_proyecto INT,
    presenta_nombre VARCHAR(200),
    presenta_cargo VARCHAR(150),
    recibe_nombre VARCHAR(200),
    recibe_cargo VARCHAR(150),
    FOREIGN KEY (id_proyecto) REFERENCES proyecto(id_proyecto)
);

#VISTAS

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `adminDB`@`%` 
    SQL SECURITY DEFINER
VIEW `vw_proyectosgeneral` AS
    SELECT 
        `c`.`claveCT` AS `claveCT`,
        `c`.`nombreCT` AS `celulatecnologica`,
        `p`.`id_proyecto` AS `id_proyecto`,
        `p`.`clave_proyecto` AS `clave_proyecto`,
        `p`.`titulo` AS `titulo`,
        `p`.`carrera` AS `carrera`,
        `p`.`fecha_inicio` AS `fecha_inicio`,
        `p`.`fecha_fin` AS `fecha_fin`,
        `p`.`linea_investigacion` AS `linea_investigacion`,
        `t`.`id_titular` AS `id_titular`,
        `t`.`nombre_completo` AS `nombreTitular`
    FROM
        ((`proyecto` `p`
        LEFT JOIN `celulatecnologica` `c` ON ((`p`.`idCelula` = `c`.`idCT`)))
        JOIN `titular` `t` ON ((`t`.`id_proyecto` = `p`.`id_proyecto`)))

CREATE VIEW vw_integrantesproyecto AS
    SELECT
        p.clave_proyecto,
        i.nombre,
        i.categoria,
        i.horas_semana
    FROM proyecto p
    INNER JOIN integrante i 
        ON p.id_proyecto = i.id_proyecto;

CREATE VIEW vw_proyectosseaes AS
    SELECT
        p.clave_proyecto,
        p.titulo,
        s.criterio
    FROM proyecto p
    INNER JOIN produccion_seaes s
        ON p.id_proyecto = s.id_proyecto;

#PROCEDIMIENTOS
DELIMITER $$

CREATE PROCEDURE sp_registrar_proyecto (
    IN p_clave VARCHAR(50),
    IN p_titulo VARCHAR(255),
    IN p_inicio DATE,
    IN p_fin DATE,
    IN p_objetivo TEXT,
    IN p_resumen TEXT,
    IN p_linea TEXT,
    IN p_carrera VARCHAR(150),
    IN p_idcelula INT
)
BEGIN
    INSERT INTO proyecto (
        clave_proyecto,
        titulo,
        fecha_inicio,
        fecha_fin,
        objetivo,
        resumen,
        linea_investigacion,
        carrera,
        idCelula,
        fecha_registro
    ) VALUES (
        p_clave,
        p_titulo,
        p_inicio,
        p_fin,
        p_objetivo,
        p_resumen,
        p_linea,
        p_carrera,
        p_idcelula,
        CURDATE()
    );
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_agregar_integrante (
    IN p_id_proyecto INT,
    IN p_nombre VARCHAR(200),
    IN p_categoria ENUM('Responsable','Colaborador','Alumno'),
    IN p_horas INT
)
BEGIN
    INSERT INTO integrante (
        id_proyecto,
        nombre,
        categoria,
        horas_semana
    ) VALUES (
        p_id_proyecto,
        p_nombre,
        p_categoria,
        p_horas
    );
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_agregar_produccion (
    IN p_id_proyecto INT,
    IN p_tipo VARCHAR(50)
)
BEGIN
    INSERT INTO produccion_proyecto (
        id_proyecto,
        tipo
    ) VALUES (
        p_id_proyecto,
        p_tipo
    );
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_proyectosconcelula (
    IN p_id_celula INT
)
BEGIN
    SELECT 
        clave_proyecto,
        titulo,
        carrera,
        fecha_inicio,
        fecha_fin
    FROM proyecto
    WHERE id_celula = p_id_celula;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_proyectossincelula ()
BEGIN
    SELECT 
        clave_proyecto,
        titulo,
        carrera,
        fecha_inicio,
        fecha_fin
    FROM proyecto
    WHERE id_celula IS NULL;
END$$

DELIMITER ;