SELECT
    CONCAT(v.nombre,' ', v.apellido) as veterinario,
    COUNT (c.id_cita) as citas_pendientes
    MIN (c.fecha_hora) as proxima_cita
    FROM veterinarios v
    LEFT JOIN citas c ON v.id_veterinario = c.id_veterinario
    WHERE c.estado = 'Programada'
    GROUP BY v.id_veterinario
