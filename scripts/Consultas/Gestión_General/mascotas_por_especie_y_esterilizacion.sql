SELECT especie, esterilizado, COUNT(*) AS cantidad
FROM mascotas
GROUP BY especie, esterilizado 
ORDER BY especie;
