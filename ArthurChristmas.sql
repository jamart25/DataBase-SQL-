-- ENTREGA BASES DE DATOS: ARTHUR CHRISTMAS -- 


CREATE DATABASE IF NOT EXISTS ArthurChristmas;
USE ArthurChristmas;


-- 1. Definicion de tablas y definicion de claves primarias

-- TABLA DE LOS ELFOS
CREATE TABLE IF NOT EXISTS elfos (
	NSS_elfo            VARCHAR(12) NOT NULL,
	nombre_elfo         VARCHAR(30),
	apellido_elfo       VARCHAR(30),
	tipo_contrato       BOOL NOT NULL, -- Tiempo_Completo = 1; Tiempo_Parcial = 0
	ID_dto              INT NOT NULL, -- Todo elfo pertenece a un departamento.
	CONSTRAINT elfo_PK PRIMARY KEY (NSS_elfo) 
);

-- TABLA DE ELFOS CONTRATADOS A TIEMPO COMPLETO 
CREATE TABLE IF NOT EXISTS completos (
	NSS_elfo            VARCHAR(12) NOT NULL,   
	CONSTRAINT completo_PK PRIMARY KEY (NSS_elfo) 
);

-- TABLA DE ELFOS CONTRATADOS A TIEMPO PARCIAL 
CREATE TABLE IF NOT EXISTS parciales (
	NSS_elfo            VARCHAR(12) NOT NULL,
	CONSTRAINT parcial_PK PRIMARY KEY (NSS_elfo) 
);

-- TABLA DE LAS TAREAS DE LOS ELFOS CONTRATADOS A TIEMPO PARCIAL 
CREATE TABLE IF NOT EXISTS tareas (
	NSS_elfo            VARCHAR(12) NOT NULL,
	nombre_tarea        VARCHAR(30) NOT NULL,
	CONSTRAINT tarea_PK PRIMARY KEY (NSS_elfo, nombre_tarea)
);

-- TABLA DE LOS DEPARTAMENTOS
CREATE TABLE IF NOT EXISTS departamentos (
	ID_dto          INT NOT NULL,
	nombre_dto      VARCHAR(30),
	NSS_director    VARCHAR(12) DEFAULT NULL UNIQUE, -- Cada elfo a tiempo completo dirige un unico departamento 
	CONSTRAINT dto_PK PRIMARY KEY (ID_dto) 
);

-- TABLA DE LOS NIÑOS 
CREATE TABLE IF NOT EXISTS niños (
	nombre_niño         VARCHAR(30) NOT NULL,
	apellido_niño       VARCHAR(30) NOT NULL,
	coordenadas_niño    CHAR(20) NOT NULL CHECK (coordenadas_niño LIKE '__° __′ _, __° __′ _'), -- ejemplo 39° 17′ N, 76° 36′ W
	fecha_nacimiento    DATE NOT NULL, -- La fecha es necesaria para calcular la edad y ver si se le puede entregar un juguete
	NSS_elfo            VARCHAR(12) UNIQUE, -- Todo niño es observado por un elfo
	CONSTRAINT niño_PK PRIMARY KEY (nombre_niño, apellido_niño, coordenadas_niño) 
);
-- AÑADIR: Si hay error en las coordenadas que salte ejemplo

-- TABLA DEL PARENTESCO DE LOS NIÑOS
CREATE TABLE IF NOT EXISTS parentescos (
	nombre_niño1        VARCHAR(30) NOT NULL,
	apellido_niño1      VARCHAR(30) NOT NULL,
	coordenadas_niño1   CHAR(20) NOT NULL, 
	nombre_niño2        VARCHAR(30) NOT NULL,
	apellido_niño2      VARCHAR(30) NOT NULL,
	coordenadas_niño2   CHAR(20) NOT NULL, 
	tipo_hermandad      BOOL, -- Hermanos = 1; Hermanastros = 0
	CONSTRAINT parentesco_PK PRIMARY KEY (nombre_niño1, apellido_niño1, coordenadas_niño1, nombre_niño2, apellido_niño2, coordenadas_niño2)
);

-- TABLA DE LAS MASCOTAS DE LOS NIÑOS
CREATE TABLE IF NOT EXISTS mascotas (
	nombre_niño         VARCHAR(30) NOT NULL,
	apellido_niño       VARCHAR(30) NOT NULL,
	coordenadas_niño    CHAR(20) NOT NULL, 
	nombre_mascota      VARCHAR(30) NOT NULL,
	especie             VARCHAR(30),
	año_nacimiento      DATE,
	CONSTRAINT mascota_PK PRIMARY KEY (nombre_niño, apellido_niño, coordenadas_niño, nombre_mascota) 
);

-- TABLA DEL CATALOGO DE JUGUETES 
CREATE TABLE IF NOT EXISTS juguetes (
	EAN                  CHAR(13) NOT NULL,
	nombre_juguete       VARCHAR(20),
	descripcion_juguete  TEXT,
	duracion             INT,       
	edad_min             INT NOT NULL,
	edad_max             INT NOT NULL,
	CONSTRAINT juguete_PK PRIMARY KEY (EAN),
    CONSTRAINT check_edad_para_juguete CHECK (edad_min <= edad_max)
);

-- TABLA CON LOS JUGETES PEDIDOS 
CREATE TABLE IF NOT EXISTS pedidos (
	nombre_niño         VARCHAR(30) NOT NULL,
	apellido_niño       VARCHAR(30) NOT NULL,
	coordenadas_niño    CHAR(20) NOT NULL,
	EAN                 CHAR(13) NOT NULL,
	CONSTRAINT pedidos_PK PRIMARY KEY (nombre_niño, apellido_niño, coordenadas_niño, EAN) 
); 

-- TABLA CON LOS JUGETES ENTREGADOS 
CREATE TABLE IF NOT EXISTS entregados (
	nombre_niño         VARCHAR(30) NOT NULL,
	apellido_niño       VARCHAR(30) NOT NULL,
	coordenadas_niño    CHAR(20) NOT NULL,
	EAN                 CHAR(13) NOT NULL,
	CONSTRAINT entregados_PK PRIMARY KEY (nombre_niño, apellido_niño, coordenadas_niño, EAN) 
); 


-- 2. Definicion de claves ajenas 

ALTER TABLE elfos
   ADD CONSTRAINT elfo_FK1 FOREIGN KEY (ID_dto)
   REFERENCES departamentos(ID_dto)
   ON UPDATE CASCADE
   ON DELETE RESTRICT; 
   /* ON UPDATE CASCADE: Si hay modificaciones en la tabla departamentos se realizan las modificaciones correspondientes
      en la tabla elfos.
      ON DELETE RESTRICT: No puedo eliminar un departamento si hay elfos que pertenecen a el. Primero he de reasignarlos o eliminarlos de la base de datos */
      
ALTER TABLE completos 
	ADD CONSTRAINT completos_FK1 FOREIGN KEY (NSS_elfo)
    REFERENCES elfos(NSS_elfo)
    ON UPDATE CASCADE
    ON DELETE CASCADE;
    /* ON UPDATE CASCADE: Si hay modificaciones en la tabla de elfos, se realizan las modificaciones correspondientes
       en la tabla completos.
       ON DELETE CASCADE: Si elimino un elfo de la tabla de elfos, este se elimina de la tabla completos. */
   
ALTER TABLE parciales 
	ADD CONSTRAINT parcial_FK1 FOREIGN KEY (NSS_elfo)
    REFERENCES elfos(NSS_elfo)
    ON UPDATE CASCADE 
    ON DELETE CASCADE ;
    /* ON UPDATE CASCADE: Si hay modificaciones en la tabla de elfos, se realizan las modificaciones correspondientes
       en la tabla completos.
       ON DELETE CASCADE: Si elimino un elfo de la tabla de elfos, este se elimina de la tabla completos. */
       
ALTER TABLE departamentos
   ADD CONSTRAINT departamentos_FK1 FOREIGN KEY (NSS_director)
   REFERENCES completos(NSS_elfo)
   ON UPDATE CASCADE
   ON DELETE SET NULL; 
	/* ON UPDATE CASCADE: Si hay modificaciones en la tabla completos, se realizan las modificaciones correspondientes
       en la tabla departamentos.
	   ON DELETE SET NULL: Si elimino un elfo (director de un departamento) de la tabla de completos, el departamento que dirigia
       queda en principio sin director y ponemos NULL.*/
       
ALTER TABLE tareas
   ADD CONSTRAINT tarea_FK1 FOREIGN KEY (NSS_elfo)
   REFERENCES parciales(NSS_elfo)
   ON UPDATE CASCADE
   ON DELETE CASCADE;
	/* ON UPDATE CASCADE: Si hay modificaciones en la tabla parciales, se realizan las modificaciones correspondientes
       en la tabla tareas.
       ON DELETE CASCADE: Si elimino un elfo de la tabla parciales, este se elimina de la tabla tareas. */       
-- ESTA TABLA TIENE ANOMALIAS
   
ALTER TABLE niños
	ADD CONSTRAINT niños_FK1 FOREIGN KEY (NSS_elfo)
	REFERENCES elfos(NSS_elfo)
	ON UPDATE CASCADE
    ON DELETE RESTRICT ;
	/* ON UPDATE CASCADE: Si hay modificaciones en la tabla completos, se realizan las modificaciones correspondientes
       en la tabla departamentos.
       ON DELETE RESTRICT: No puedo eliminar un elfo si este está observando a un niño.*/
    
ALTER TABLE parentescos
	ADD CONSTRAINT perentesco_FK1 FOREIGN KEY (nombre_niño1, apellido_niño1, coordenadas_niño1)
	REFERENCES niños(nombre_niño, apellido_niño, coordenadas_niño)
	ON UPDATE CASCADE
    ON DELETE CASCADE;
    /* ON UPDATE CASCADE: Si hay modificacions en la tabla de niños, se realizan las modificaciones correspondientes en la
       tabla de parentescos.
       ON DELETE CASCADE: Si eliminamos un niño de la tabla de niños, se considera que ya no tiene relacion de parentesco y se elimina. */

ALTER TABLE parentescos
	ADD CONSTRAINT perentesco_FK2 FOREIGN KEY (nombre_niño2, apellido_niño2, coordenadas_niño2)
	REFERENCES niños(nombre_niño, apellido_niño, coordenadas_niño)
	ON UPDATE CASCADE
    ON DELETE CASCADE;
    /* ON UPDATE CASCADE: Si hay modificacions en la tabla de niños, se realizan las modificaciones correspondientes en la
       tabla de parentescos.
       ON DELETE CASCADE: Si eliminamos un niño de la tabla de niños, se considera que ya no tiene relación de parentesco y se elimina. */
-- ANOMALIA (PEPE,JUAN)=(JUAN,PEPE)
   
ALTER TABLE mascotas
	ADD CONSTRAINT mascotas_FK1 FOREIGN KEY (nombre_niño, apellido_niño, coordenadas_niño)
	REFERENCES niños(nombre_niño, apellido_niño, coordenadas_niño)
	ON UPDATE CASCADE
    ON DELETE CASCADE;
    /* ON UPDATE CASCADE: Si hay modificacions en la tabla de niños, se realizan las modificaciones correspondientes en la
       tabla de parentescos.
       ON DELETE CASCADE: Si eliminamos un niño de la tabla de niños, se eliminan sus mascotas tambien al ser una relación debil. */
        
ALTER TABLE pedidos
	ADD CONSTRAINT pedidos_FK1 FOREIGN KEY (nombre_niño, apellido_niño, coordenadas_niño)
	REFERENCES niños(nombre_niño, apellido_niño, coordenadas_niño)
	ON UPDATE CASCADE
    ON DELETE CASCADE;
    /* ON UPDATE CASACADE: Si hay modificaciones en la tabla de niños se realizan las modificaciones correspondientes en la
       tabla de pedidos.
       ON DELETE CASCADE: Si eliminamos un niño de la tabla niños, se eliminan sus jueguetes pedidos en la tabla jueguetes. */

ALTER TABLE pedidos
	ADD CONSTRAINT pedidos_FK2 FOREIGN KEY (EAN)
	REFERENCES juguetes(EAN)
	ON UPDATE CASCADE
    ON DELETE CASCADE;
    /* ON UPDATE CASCADE: Si hay modificaciones en la tabla de juguetes, se realizan las modificaciones correspondientes en la 
       tabla de pedidos.
       ON DELETE CASCADE: Si eiminamos un juguete de la tabla juguetes, se elimina tambien de la tabla pedidios. */

ALTER TABLE entregados
	ADD CONSTRAINT entregados_FK1 FOREIGN KEY (nombre_niño, apellido_niño, coordenadas_niño)
	REFERENCES niños(nombre_niño, apellido_niño, coordenadas_niño)
	ON UPDATE CASCADE
    ON DELETE CASCADE;
    /* ON UPDATE CASACADE: Si hay modificaciones en la tabla de niños se realizan las modificaciones correspondientes en la
       tabla de entregados.
       ON DELETE CASCADE: Si eliminamos un niño de la tabla niños, se eliminan sus jueguetes entregados en la tabla jueguetes. */
       
ALTER TABLE entregados
	ADD CONSTRAINT entregados_FK2 FOREIGN KEY (EAN)
	REFERENCES juguetes(EAN)
	ON UPDATE CASCADE
    ON DELETE CASCADE;
	/* ON UPDATE CASCADE: Si hay modificaciones en la tabla de juguetes, se realizan las modificaciones correspondientes en la 
	   tabla de entregados.
	   ON DELETE CASCADE: Si eiminamos un juguete de la tabla juguetes, se elimina tambien de la tabla entregados. */
       
       
-- 3. Restricciones

-- RESTRICCION: Antes de insertar un niño, tenemos que ver si es "menor de edad"
delimiter $$
CREATE TRIGGER menor_edad BEFORE INSERT ON niños
FOR EACH ROW
	BEGIN 
		IF (year(curdate()) - year(new.fecha_nacimiento)) >= 18 THEN
			SIGNAL SQLSTATE '45000'
			SET MESSAGE_TEXT = 'No se puede añadir un niño mayor de edad';
		END IF;
        END;
$$
        
-- RESTRICCION: Antes de insertar un jueguete en entregados tenemos que ver si esta en pedidos
CREATE TRIGGER ha_pedido_el_juguete BEFORE INSERT ON entregados
FOR EACH ROW
	BEGIN
		IF new.EAN NOT IN (SELECT EAN FROM pedidos 
							WHERE ( pedidos.nombre_niño = new.nombre_niño AND pedidos.apellido_niño = new.apellido_niño AND pedidos.coordenadas_niño = new.coordenadas_niño and new.EAN = pedidos.EAN)) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El niño no ha pedido el juguete';
		END IF;
	END;
$$
	
-- RESTRICCION: Para pedir un juguete, la edad tiene que ser apropiada. Es decir, edad_min <= edad_niño <= edad_max
CREATE TRIGGER edad_para_pedir_juguete BEFORE INSERT ON pedidos
FOR EACH ROW
	BEGIN 
		IF (NEW.EAN) IN (SELECT EAN -- , nombre_niño, apellido_niño, coordenadas_niño, (year(curdate()) - year(niños.fecha_nacimiento)) as edad, edad_min, edad_max
							FROM juguetes JOIN niños 
                            ON ((year(curdate()) - year(niños.fecha_nacimiento)) < juguetes.edad_min 
								OR (year(curdate()) - year(niños.fecha_nacimiento)) > juguetes.edad_max)
							WHERE (nombre_niño = new.nombre_niño and apellido_niño = new.apellido_niño and coordenadas_niño = new.coordenadas_niño)
			) THEN 
            SIGNAL SQLSTATE '45000' 
			SET MESSAGE_TEXT = 'La edad del niño no es apropiada para pedir el juguete';
		END IF;
	END;
$$			

-- RESTRICCION (NO FUNCIONA): Para añadir un niño sin repeticiones en la tabla, ordenamos alfabeticamente. Si no está ordenados en la inserción, los ordena el trigger
-- Orden niños para parentesco y debe ser a parte --> (PEPE, JUAN)=(JUAN,PEPE)
CREATE TRIGGER orden_parentesco AFTER INSERT ON parentescos
FOR EACH ROW 
	BEGIN
		DECLARE aux1, aux2 VARCHAR(30);
        SET aux1 := NEW.nombre_niño1, aux2 := NEW.nombre_niño2;
		IF NEW.nombre_niño1 > NEW.nombre_niño2
			THEN UPDATE parentescos
					SET nombre_niño1 = aux2, nombre_niño2 = aux1
                    WHERE (nombre_niño1 = aux1 AND nombre_niño2 = aux2);
		END IF;
    END;
$$
/*
*/

-- NUEVO!! 

-- Si dejamos las tablas de PARCIALES y COMPLETOS:
-- RESTRICCION: Para añadir un elfo en la tabla de parciales o de completos
CREATE TRIGGER tipo_elfo AFTER INSERT ON elfos 
FOR EACH ROW 
	BEGIN
		IF (NEW.tipo_contrato IS NOT NULL) 
			THEN IF (NEW.tipo_contrato) 
				THEN INSERT INTO completos VALUE(NEW.NSS_elfo);
		        ELSE INSERT INTO parciales VALUE(NEW.NSS_elfo);
             END IF;   
    END IF; 
    END;
$$

-- RESTRICCION: Para asignar a un elfo una tarea tiene que estar contratado a tiempo parcial, aunque antes del trigger salta un error de mySQL porque la FK NSS_elfo viene de parciales
CREATE TRIGGER asignar_tarea_elfo_parcial BEFORE INSERT ON tareas
FOR EACH ROW
	BEGIN 
		IF NEW.NSS_elfo NOT IN (SELECT NSS_elfo FROM parciales)
			THEN 
				SIGNAL SQLSTATE '45000' 
				SET MESSAGE_TEXT = '¡El elfo está contratado para trabajar a tiempo completo!';
		END IF;
	END;
$$

-- Si quitamos las tablas de PARCIALES Y COMPLETOS:

-- REVISAR LAS FK:
/* ALTER TABLE departamentos
   ADD CONSTRAINT departamentos_FK1 FOREIGN KEY (NSS_director)
   REFERENCES elfos(NSS_elfo)
   ON UPDATE CASCADE
   ON DELETE SET NULL; 
	/* ON UPDATE CASCADE: Si hay modificaciones en la tabla elfos, se realizan las modificaciones correspondientes
       en la tabla departamentos.
	   ON DELETE SET NULL: Si elimino un elfo (director de un departamento) de la tabla elfos, el departamento que dirigia
       queda en principio sin director y ponemos NULL.*/ 
       
/* ALTER TABLE tareas
   ADD CONSTRAINT tarea_FK1 FOREIGN KEY (NSS_elfo)
   REFERENCES elfos(NSS_elfo)
   ON UPDATE CASCADE
   ON DELETE CASCADE;
	/* ON UPDATE CASCADE: Si hay modificaciones en la tabla elfo, se realizan las modificaciones correspondientes
       en la tabla tareas.
       ON DELETE CASCADE: Si elimino un elfo parcial de la tabla elfos, este se elimina de la tabla tareas. */       
-- ESTA TABLA TIENE ANOMALIAS

-- Comprobaciones en la tabla TAREAS
/*
CREATE TRIGGER tipo_parcial BEFORE INSERT ON tareas
FOR EACH ROW
	BEGIN 
		IF NEW.NSS_elfo IN (SELECT NSS_elfo FROM elfos WHERE tipo_contrato = false)
			THEN SET NSS_elfo = NEW.NSS_elfo;
		END IF;
    END;
$$

-- Comprobaciones en la tabla DEPARTAMENTOS
CREATE TRIGGER tipo_completo BEFORE INSERT ON departamentos
FOR EACH ROW
	BEGIN 
		IF NEW.NSS_director IN (SELECT NSS_elfo FROM elfos WHERE tipo_contrato = true)
			THEN SET NSS_director = NEW.NSS_director;
		END IF;
    END;
$$

-- FALTA:
-- 2. Error al meter mal las coordenadas --> debe saltar un ejemplo de entrada