SELECT CONCAT(cedula) cedula,
	   CONCAT(primer_nombre,' ', primer_apellido) Nombre, 
	   CONCAT(dias_mora) diasEnMora, 
       CONCAT(CASE 
              	WHEN dias_mora >= 1 AND dias_mora <= 20 THEN 'Riesgo Bajo'
              	WHEN dias_mora >= 21 AND dias_mora <= 35 THEN 'Riesgo Medio'
              	WHEN dias_mora > 35 THEN 'Riesgo Alto'
              END) riesgo,
       CONCAT(ciudad.nombre) ciudad
FROM cliente c
JOIN ciudad ON c.id_ciudad = ciudad.id
ORDER BY diasEnMora DESC