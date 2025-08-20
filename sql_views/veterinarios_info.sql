CREATE VIEW veterinarios_info AS
SELECT 
    CONCAT(v.nombre, ' ', v.apellido) AS veterinario,
    e.nombre AS especialidad,
    v.telefono,
    v.email
FROM veterinarios v
JOIN especialidades e ON v.id_especialidad = e.id_especialidad
WHERE v.activo = TRUE;