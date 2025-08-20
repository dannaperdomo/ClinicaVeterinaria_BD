CREATE VIEW agenda_hoy AS
SELECT 
    TIME(c.fecha_hora) AS hora,
    m.nombre AS mascota,
    CONCAT(p.nombre, ' ', p.apellido) AS propietario,
    p.telefono,
    CONCAT(v.nombre, ' ', v.apellido) AS veterinario,
    c.estado
FROM citas c
JOIN mascotas m ON c.id_mascota = m.id_mascota
JOIN propietarios p ON m.id_propietario = p.id_propietario
JOIN veterinarios v ON c.id_veterinario = v.id_veterinario
WHERE DATE(c.fecha_hora) = CURDATE()
ORDER BY c.fecha_hora;