SELECT 
    s.nombre,
    COUNT(t.id_tratamiento) AS veces_usado,
    SUM(t.cantidad * t.precio_unitario) AS ingresos_totales,
    AVG(t.precio_unitario) AS precio_promedio
FROM servicios s
JOIN tratamientos t ON s.id_servicio = t.id_servicio
GROUP BY s.id_servicio 
ORDER BY ingresos_totales DESC;