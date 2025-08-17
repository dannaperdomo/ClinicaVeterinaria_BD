
-- Eliminar tablas si existen (para poder ejecutar el script múltiples veces)
DROP TABLE IF EXISTS tratamientos;
DROP TABLE IF EXISTS consultas;
DROP TABLE IF EXISTS citas;
DROP TABLE IF EXISTS mascotas;
DROP TABLE IF EXISTS propietarios;
DROP TABLE IF EXISTS veterinarios;
DROP TABLE IF EXISTS especialidades;
DROP TABLE IF EXISTS servicios;

CREATE TABLE especialidades (
    id_especialidad INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT,
    costo_consulta DECIMAL(8,2) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE veterinarios (
    id_veterinario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    cedula_profesional VARCHAR(20) UNIQUE NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    fecha_contratacion DATE NOT NULL,
    salario DECIMAL(10,2),
    id_especialidad INT NOT NULL,
    activo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_especialidad) REFERENCES especialidades(id_especialidad)
);

CREATE TABLE propietarios (
    id_propietario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    email VARCHAR(100),
    direccion TEXT,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE mascotas (
    id_mascota INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    especie ENUM('Perro', 'Gato', 'Ave', 'Reptil', 'Roedor', 'Otro') NOT NULL,
    raza VARCHAR(50),
    fecha_nacimiento DATE,
    peso DECIMAL(5,2),
    color VARCHAR(30),
    sexo ENUM('Macho', 'Hembra') NOT NULL,
    esterilizado BOOLEAN DEFAULT FALSE,
    id_propietario INT NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    activo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (id_propietario) REFERENCES propietarios(id_propietario)
);

CREATE TABLE servicios (
    id_servicio INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(8,2) NOT NULL,
    duracion_minutos INT DEFAULT 30,
    requiere_especialista BOOLEAN DEFAULT FALSE,
    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE citas (
    id_cita INT PRIMARY KEY AUTO_INCREMENT,
    fecha_hora DATETIME NOT NULL,
    id_mascota INT NOT NULL,
    id_veterinario INT NOT NULL,
    motivo TEXT NOT NULL,
    estado ENUM('Programada', 'En curso', 'Completada', 'Cancelada') DEFAULT 'Programada',
    observaciones TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id_mascota),
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id_veterinario)
);

CREATE TABLE consultas (
    id_consulta INT PRIMARY KEY AUTO_INCREMENT,
    id_cita INT NOT NULL,
    sintomas TEXT NOT NULL,
    diagnostico TEXT,
    peso_actual DECIMAL(5,2),
    temperatura DECIMAL(4,2),
    frecuencia_cardiaca INT,
    observaciones_medicas TEXT,
    fecha_consulta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    costo_consulta DECIMAL(8,2) NOT NULL,
    FOREIGN KEY (id_cita) REFERENCES citas(id_cita)
);

CREATE TABLE tratamientos (
    id_tratamiento INT PRIMARY KEY AUTO_INCREMENT,
    id_consulta INT NOT NULL,
    id_servicio INT NOT NULL,
    cantidad INT DEFAULT 1,
    precio_unitario DECIMAL(8,2) NOT NULL,
    subtotal DECIMAL(10,2) GENERATED ALWAYS AS (cantidad * precio_unitario) STORED,
    instrucciones TEXT,
    fecha_aplicacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_consulta) REFERENCES consultas(id_consulta),
    FOREIGN KEY (id_servicio) REFERENCES servicios(id_servicio)
);
