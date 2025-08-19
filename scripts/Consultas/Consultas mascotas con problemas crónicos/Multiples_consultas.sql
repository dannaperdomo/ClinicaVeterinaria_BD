SELECT 
    m.nombre as mascota,
    CONCAT (p.nombre, ' ', p.apellido) as propietario
    COUNT (c.id_cita) as total_consultas,
    MAX(c.fecha_hora) as ultima_visita
FROM mascotas m
JOIN propietarios p ON m.id_propietario = p.id_propietario
JOIN citas c ON m.id_consulta = c.id_mascota
GROUP BY m.id_mascota
HAVING total_consultas > 2
ORDER B total_consultas DESC;
