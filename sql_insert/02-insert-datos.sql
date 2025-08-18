
INSERT INTO especialidades (nombre, descripcion, costo_consulta) VALUES
('Medicina General', 'Consultas generales y chequeos de rutina', 350.00),
('Cirugía', 'Procedimientos quirúrgicos menores y mayores', 800.00),
('Dermatología', 'Tratamiento de problemas de piel y pelaje', 450.00),
('Cardiología', 'Especialista en problemas cardíacos', 600.00),
('Oncología', 'Tratamiento de tumores y cáncer', 750.00),
('Ortopedia', 'Problemas óseos y articulares', 650.00);


INSERT INTO veterinarios (nombre, apellido, cedula_profesional, telefono, email, fecha_contratacion, salario, id_especialidad) VALUES
('María Elena', 'Rodríguez Pérez', 'VET-001-2020', '9988-7766', 'mrodriguez@veterinaria.com', '2020-03-15', 25000.00, 1),
('Carlos Alberto', 'Mendoza Silva', 'VET-002-2018', '9988-7767', 'cmendoza@veterinaria.com', '2018-06-01', 35000.00, 2),
('Ana Patricia', 'López García', 'VET-003-2021', '9988-7768', 'alopez@veterinaria.com', '2021-01-10', 28000.00, 3),
('Roberto', 'Hernández Ruiz', 'VET-004-2019', '9988-7769', 'rhernandez@veterinaria.com', '2019-08-20', 32000.00, 4),
('Isabel Cristina', 'Morales Castro', 'VET-005-2022', '9988-7770', 'imorales@veterinaria.com', '2022-02-14', 38000.00, 5),
('Diego Fernando', 'Vargas Soto', 'VET-006-2020', '9988-7771', 'dvargas@veterinaria.com', '2020-11-30', 30000.00, 6);


INSERT INTO propietarios (nombre, apellido, telefono, email, direccion) VALUES
('Juan Carlos', 'Martínez Torres', '2234-5678', 'jc.martinez@email.com', 'Col. Centro, Calle Principal #123'),
('Rosa María', 'González Vega', '2234-5679', 'rosa.gonzalez@email.com', 'Col. Palmira, Av. Universidad #456'),
('Pedro Antonio', 'Ramírez Cruz', '2234-5680', 'pedro.ramirez@email.com', 'Col. Las Flores, Calle Reforma #789'),
('Lucía Isabel', 'Fernández Díaz', '2234-5681', 'lucia.fernandez@email.com', 'Col. Moderna, Av. Constitución #101'),
('Miguel Ángel', 'Jiménez Herrera', '2234-5682', 'miguel.jimenez@email.com', 'Col. Jardines, Calle Juárez #202'),
('Carmen Elena', 'Castro Mendoza', '2234-5683', 'carmen.castro@email.com', 'Col. Esperanza, Av. Libertad #303'),
('Fernando José', 'Moreno Aguilar', '2234-5684', 'fernando.moreno@email.com', 'Col. San José, Calle Hidalgo #404'),
('Patricia', 'Ruiz Delgado', '2234-5685', 'patricia.ruiz@email.com', 'Col. Vista Hermosa, Av. Revolución #505');

INSERT INTO mascotas (nombre, especie, raza, fecha_nacimiento, peso, color, sexo, esterilizado, id_propietario) VALUES
('Max', 'Perro', 'Labrador', '2020-05-15', 28.5, 'Dorado', 'Macho', TRUE, 1),
('Luna', 'Gato', 'Siamés', '2021-08-20', 4.2, 'Gris', 'Hembra', TRUE, 1),
('Rocky', 'Perro', 'Pastor Alemán', '2019-12-03', 35.0, 'Negro y café', 'Macho', FALSE, 2),
('Mimi', 'Gato', 'Persa', '2022-01-10', 3.8, 'Blanco', 'Hembra', FALSE, 3),
('Toby', 'Perro', 'Golden Retriever', '2020-09-25', 31.2, 'Dorado claro', 'Macho', TRUE, 4),
('Whiskers', 'Gato', 'Angora', '2021-03-18', 5.1, 'Gris y blanco', 'Macho', TRUE, 4),
('Bella', 'Perro', 'French Bulldog', '2021-11-30', 12.3, 'Atigrado', 'Hembra', FALSE, 5),
('Coco', 'Ave', 'Canario', '2022-06-05', 0.025, 'Amarillo', 'Macho', FALSE, 6),
('Sasha', 'Perro', 'Husky Siberiano', '2019-07-14', 22.8, 'Blanco y gris', 'Hembra', TRUE, 7),
('Garfield', 'Gato', 'Naranja Común', '2020-10-31', 6.2, 'Naranja', 'Macho', FALSE, 8);


INSERT INTO servicios (nombre, descripcion, precio, duracion_minutos, requiere_especialista) VALUES
('Consulta General', 'Examen físico completo y evaluación general', 350.00, 30, FALSE),
('Vacunación Múltiple', 'Aplicación de vacunas según calendario', 280.00, 15, FALSE),
('Desparasitación', 'Tratamiento antiparasitario interno y externo', 150.00, 10, FALSE),
('Cirugía Menor', 'Procedimientos quirúrgicos ambulatorios', 1200.00, 60, TRUE),
('Cirugía Mayor', 'Procedimientos quirúrgicos complejos', 2500.00, 120, TRUE),
('Esterilización Canina', 'Castración o ovariohisterectomía', 1800.00, 90, TRUE),
('Esterilización Felina', 'Castración o ovariohisterectomía', 1500.00, 60, TRUE),
('Limpieza Dental', 'Profilaxis dental con anestesia', 800.00, 45, FALSE),
('Radiografía', 'Estudio radiológico', 450.00, 20, FALSE),
('Análisis de Sangre', 'Perfil bioquímico completo', 380.00, 15, FALSE),
('Electrocardiograma', 'Estudio cardiológico', 350.00, 20, TRUE),
('Biopsia', 'Toma de muestra para análisis histopatológico', 600.00, 30, TRUE);

INSERT INTO citas (fecha_hora, id_mascota, id_veterinario, motivo, estado) VALUES
('2025-06-15 09:00:00', 1, 1, 'Chequeo anual y vacunas', 'Completada'),
('2025-06-15 10:30:00', 3, 2, 'Consulta por cojera en pata trasera', 'Completada'),
('2025-06-16 14:00:00', 2, 3, 'Problemas de piel y rascado excesivo', 'Completada'),
('2025-06-20 11:00:00', 4, 1, 'Revisión post-operatoria', 'Completada'),
('2025-07-02 16:00:00', 5, 4, 'Soplo cardíaco detectado', 'Completada'),
('2025-07-05 09:30:00', 7, 1, 'Vómito y diarrea', 'Completada'),
('2025-07-10 15:00:00', 6, 1, 'Vacunación anual', 'Completada'),
('2025-07-15 10:00:00', 8, 1, 'Chequeo rutinario ave', 'Completada'),
('2025-07-20 08:30:00', 9, 6, 'Dolor articular', 'Completada'),
('2025-07-25 13:00:00', 10, 1, 'Revisión general', 'Completada'),
('2025-08-01 09:00:00', 1, 1, 'Seguimiento vacunas', 'Completada'),
('2025-08-05 11:30:00', 3, 2, 'Cirugía programada', 'Completada'),
('2025-08-10 14:30:00', 5, 4, 'Control cardiológico', 'Completada'),
('2025-08-15 16:00:00', 2, 3, 'Tratamiento dermatológico', 'Programada'),
('2025-08-20 10:00:00', 7, 1, 'Esterilización programada', 'Programada');

INSERT INTO consultas (id_cita, sintomas, diagnostico, peso_actual, temperatura, frecuencia_cardiaca, observaciones_medicas, costo_consulta) VALUES
(1, 'Chequeo preventivo', 'Animal en excelente estado de salud', 28.5, 38.5, 90, 'Continuar con rutina actual de ejercicio y alimentación', 350.00),
(2, 'Cojera intermitente en pata trasera derecha', 'Posible luxación de rótula grado II', 35.2, 38.8, 95, 'Requiere intervención quirúrgica', 350.00),
(3, 'Rascado excesivo, pérdida de pelo en zonas', 'Dermatitis alérgica por contacto', 4.1, 38.2, 180, 'Evitar alérgenos identificados, tratamiento tópico', 450.00),
(4, 'Revisión post-operatoria esterilización', 'Cicatrización adecuada, sin complicaciones', 3.9, 38.0, 170, 'Recuperación exitosa, retirar puntos en 3 días', 350.00),
(5, 'Fatiga, intolerancia al ejercicio', 'Soplo cardíaco grado III, posible insuficiencia mitral', 31.0, 38.3, 110, 'Requiere tratamiento cardiológico inmediato', 600.00),
(6, 'Vómito frecuente, diarrea, letargo', 'Gastroenteritis aguda, posible intoxicación alimentaria', 11.8, 39.2, 120, 'Dieta blanda, medicación sintomática', 350.00),
(7, 'Vacunación anual de rutina', 'Animal sano, apto para vacunación', 5.2, 38.1, 160, 'Aplicar vacuna triple felina', 350.00),
(8, 'Chequeo rutinario, ave muy activa', 'Estado general excelente', 0.024, 40.5, 300, 'Continuar dieta actual, suplemento vitamínico', 350.00),
(9, 'Dificultad para levantarse, dolor articular', 'Artritis degenerativa múltiple', 23.5, 38.4, 85, 'Tratamiento antiinflamatorio crónico', 650.00),
(10, 'Chequeo anual, propietario reporta normalidad', 'Gato geriátrico en buen estado', 6.0, 38.0, 165, 'Considerar análisis de sangre geriátrico', 350.00),
(11, 'Seguimiento plan de vacunación', 'Inmunización completa exitosa', 29.0, 38.3, 88, 'Próxima vacuna en 12 meses', 350.00),
(12, 'Preparación prequirúrgica', 'Apto para procedimiento quirúrgico', 35.0, 38.6, 92, 'Cirugía de luxación rotuliana programada', 800.00),
(13, 'Control evolución tratamiento cardíaco', 'Mejoría significativa con medicación', 30.8, 38.1, 95, 'Continuar tratamiento actual', 600.00);

INSERT INTO tratamientos (id_consulta, id_servicio, cantidad, precio_unitario, instrucciones) VALUES
-- Consulta 1: Chequeo + Vacunas
(1, 1, 1, 350.00, 'Examen físico completo realizado'),
(1, 2, 1, 280.00, 'Vacuna séxtuple canina aplicada'),
(1, 3, 1, 150.00, 'Desparasitante oral administrado'),

-- Consulta 2: Diagnóstico luxación
(2, 1, 1, 350.00, 'Examen ortopédico detallado'),
(2, 9, 2, 450.00, 'Radiografías de cadera y rodilla'),

-- Consulta 3: Dermatitis
(3, 1, 1, 450.00, 'Consulta especializada dermatología'),
(3, 10, 1, 380.00, 'Perfil alérgico completo'),

-- Consulta 4: Post-operatorio
(4, 1, 1, 350.00, 'Revisión de herida quirúrgica'),

-- Consulta 5: Cardiología
(5, 1, 1, 600.00, 'Consulta cardiológica especializada'),
(5, 11, 1, 350.00, 'Electrocardiograma con sedación leve'),

-- Consulta 6: Gastroenteritis
(6, 1, 1, 350.00, 'Consulta de urgencia'),
(6, 10, 1, 380.00, 'Análisis de sangre completo'),

-- Consulta 7: Vacunación felina
(7, 1, 1, 350.00, 'Examen pre-vacunal'),
(7, 2, 1, 280.00, 'Vacuna triple felina'),

-- Consulta 8: Chequeo ave
(8, 1, 1, 350.00, 'Examen físico ave exótica'),

-- Consulta 9: Artritis
(9, 1, 1, 650.00, 'Consulta ortopédica especializada'),
(9, 9, 3, 450.00, 'Serie radiográfica completa articulaciones'),

-- Consulta 10: Geriátrico
(10, 1, 1, 350.00, 'Chequeo geriátrico completo'),

-- Consulta 11: Seguimiento vacunas
(11, 1, 1, 350.00, 'Revisión estado inmunológico'),

-- Consulta 12: Pre-quirurgíco
(12, 1, 1, 800.00, 'Evaluación prequirúrgica especializada'),
(12, 10, 1, 380.00, 'Perfil bioquímico prequirúrgico'),

-- Consulta 13: Control cardíaco
(13, 1, 1, 600.00, 'Consulta cardiológica de seguimiento'),
(13, 11, 1, 350.00, 'ECG de control ');


