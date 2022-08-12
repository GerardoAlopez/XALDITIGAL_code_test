INSERT INTO AEROLINEAS (ID_AEROLINEA, NOMBRE_AEROLINEA)
VALUES 
(1,'Volaris'),
(2, 'Aeromar'),
(3, 'Interjet'),
(4, 'Aeromexico');

INSERT INTO AEROPUERTOS (ID_AEROPUERTO, NOMBRE_AEROPUERTO)
VALUES
(1, 'Benito Juarez'),
(2, 'Guanajuato'),
(3, 'La paz'),
(4, 'Oaxaca');

INSERT INTO MOVIMIENTOS (ID_MOVIMIENTO, DESCRIPCION)
VALUES 
(1, 'Salida'),
(2, 'Entrada');

INSERT INTO VUELOS (ID_AEROLINEA, ID_AEROPUERTO, ID_MOVIMIENTO, DIA)
VALUES 
(1, 1, 1, '2021-05-02'),
(2, 1, 1, '2021-05-02'),
(3, 2, 2, '2021-05-02'),
(4, 3, 2, '2021-05-02'),
(1, 3, 2, '2021-05-02'),
(2, 1, 1, '2021-05-02'),
(2, 3, 1, '2021-05-04'),
(3, 4, 1, '2021-05-04'),
(3, 4, 1, '2021-05-04');