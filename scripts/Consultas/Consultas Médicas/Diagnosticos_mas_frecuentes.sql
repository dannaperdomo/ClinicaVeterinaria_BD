SELECT 
    diagnostico 
    COUNT (*) as frecuencia,
    AVG (costo_consulta) as costo_promedio
FROM consultas 
WHERE diagnostico IS NOT NULL
GROUP BY diagnostico
ORDER BY frecuenciaa DESC
LIMIT 10;

