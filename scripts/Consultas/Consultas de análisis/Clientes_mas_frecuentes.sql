SELECT
    CONCAT(p.nombre, ' ', p.apellido) as propietario,
    p.telefono,
    COUNT(DISTINCT c.id_cita) as total_visitas,
    SUM(con.costo_consulta) as gasto_total
FROM propietarios p
JOIN mascotas m ON p.id_propietario = m. id_propietario
JOIN citas c ON m.id_mascota = c.id_mascota
JOIN consultas con ON c.id_cita = con.id_cita
GROUP BY p.id_propietario 
ORDER BY total_visitas DESC
LIMIT 10



