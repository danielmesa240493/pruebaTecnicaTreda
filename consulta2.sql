SELECT CONCAT(CC) CC,
       CONCAT(Nombre,' ',Apellido) Nombre,
       CONCAT(estudios.Institucion) Institución,
	   CONCAT(MAX(estudios.Fecha)) Fecha 
FROM persona p
JOIN estudios ON p.CC = estudios.FKPersona
GROUP BY estudios.FKPersona 

/* La consulta me muestra los registros con fecha de estudio más reciente,
   en este caso hice un ejemplo con Juan Valencia, realizando un estudio en el 2017
   en la Nacional y otro en el 2023 en la EAFIT. Lo que no pude realizar fue que me
   mostrará en el campo Institución la última donde realizo el estudio, en este caso
   seria EAFIT. 
 */ 