CREATE VIEW ingresos_dia AS
SELECT 
    DATE(co.fecha_consulta) AS fecha,
    COUNT(*) AS total_consultas,
    SUM(co.costo_consulta) AS ingresos_consultas,
    SUM(t.subtotal) AS ingresos_tratamientos,
    SUM(co.costo_consulta + COALESCE(t.subtotal, 0)) AS total_dia
FROM consultas co
LEFT JOIN tratamientos t ON co.id_consulta = t.id_consulta
GROUP BY DATE(co.fecha_consulta)
ORDER BY fecha DESC;