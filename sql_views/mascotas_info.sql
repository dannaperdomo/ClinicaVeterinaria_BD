CREATE VIEW mascotas_info AS
SELECT 
    m.nombre AS mascota,
    m.especie,
    m.raza,
    TIMESTAMPDIFF(YEAR, m.fecha_nacimiento, CURDATE()) AS edad,
    CONCAT(p.nombre, ' ', p.apellido) AS propietario,
    p.telefono
FROM mascotas m
JOIN propietarios p ON m.id_propietario = p.id_propietario
WHERE m.activo = TRUE;