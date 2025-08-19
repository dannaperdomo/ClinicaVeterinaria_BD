SELECT 
    CONCAT(v.nombre, ' ', v.apellido) AS veterinario,
    e.nombre AS especialidad,
    COUNT(con,costo_consulta) AS ingresos_generados
FROM veterinarios v
JOIN especialidades e ON v.id_especialidad = e.id_especialidad
LEFT JOIN citas c ON v.id_veterinario = c.id_veterinario
LEFT JOIN consultas con ON c.id_cita = con.id_cita
WHERE c.estado = 'Completada'
GROUP BY v.id_veterinario
ORDER BY total_citas DESC;