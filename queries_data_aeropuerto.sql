-- 1. ¿Cuál es el nombre aeropuerto que ha tenido mayor movimiento durante el año?
SELECT nombre_aeropuerto from aeropuertos 
where id_aeropuerto in (SELECT id_aeropuerto FROM VUELOS
GROUP BY id_aeropuerto
HAVING count(ID_AEROPUERTO) > 0
ORDER BY ID_AEROPUERTO DESC 
LIMIT 1);

-- 2.¿Cuál es el nombre aerolínea que ha realizado mayor número de vuelos durante el año?
SELECT NOMBRE_AEROLINEA FROM AEROLINEAS 
WHERE ID_AEROLINEA IN (SELECT ID_AEROLINEA FROM VUELOS 
GROUP BY ID_AEROLINEA
HAVING count(dia) > 1
ORDER BY ID_AEROLINEA DESC 
LIMIT 1);

-- 3. ¿En qué día se han tenido mayor número de vuelos?
SELECT DAYNAME(DIA)AS dia, COUNT(DIA) AS TOTAL FROM VUELOS
group by DIA
order by total DESC 
LIMIT 1;  

-- 4. ¿Cuáles son las aerolíneas que tienen mas de 2 vuelos por día?
SELECT NOMBRE_AEROLINEA FROM AEROLINEAS
WHERE ID_AEROLINEA IN (SELECT ID_AEROLINEA 
FROM VUELOS 
GROUP BY ID_AEROLINEA 
HAVING COUNT(DIA) > 1 
ORDER BY ID_AEROLINEA DESC);

