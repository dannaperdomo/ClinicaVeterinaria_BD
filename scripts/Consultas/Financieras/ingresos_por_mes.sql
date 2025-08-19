SELECT 
    DATE_FORMAT(c.fecha_hora, '%Y-%m') AS mes
    SUM(con.costo_consulta) AS ingresos_consultas,
    SUM(t.cantidad * t.precio_unitario) AS ingresos_tratamientos,
    SUM(con.costo_consulta + (t.cantidad * t.precio_unitario)) AS total_ingresos
FROM citas c
JOIN consultas con ON c.id_cita = con.id_cita
LEFT JOIN tratamientos t ON con.id_consulta = t.id_consulta
WHERE c.estado = 'Completada'
GROUP BY mes
ORDER BY mes DESC;