SELECT p.nombre, p.apellido, COUNT(m.id_mascota) AS total_mascotas
FROM propietarios p
LEFT JOIN mascotas m ON p.id_propietario = m.id_propietario
GROUP BY p.id_propietario
ORDER BY total_mascotas DESC;