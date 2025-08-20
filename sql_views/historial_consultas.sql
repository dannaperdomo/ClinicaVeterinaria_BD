CREATE VIEW historial_consultas AS
SELECT 
    m.nombre AS mascota,
    co.fecha_consulta,
    CONCAT(v.nombre, ' ', v.apellido) AS veterinario,
    co.sintomas,
    co.diagnostico,
    co.costo_consulta
FROM consultas co
JOIN citas c ON co.id_cita = c.id_cita
JOIN mascotas m ON c.id_mascota = m.id_mascota
JOIN veterinarios v ON c.id_veterinario = v.id_veterinario
ORDER BY co.fecha_consulta DESC;