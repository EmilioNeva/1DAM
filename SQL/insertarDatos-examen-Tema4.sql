-- 'categoria'
INSERT INTO categoria (nombre_cat, tipo_iva, descripcion) VALUES
('1 Estrella', 'IVA reducido', 'Hoteles con una sola estrella'),
('2 Estrellas', 'IVA general', 'Hoteles con dos estrellas'),
('3 Estrellas', 'IVA superreducido', 'Hoteles con tres estrellas'),
('4 Estrellas', 'IVA general', 'Hoteles con cuatro estrellas'),
('5 Estrellas', 'IVA reducido', 'Hoteles con cinco estrellas');

-- 'hotel'
INSERT INTO hotel (nombre_h, direccion_h, tlf_h, año_const, id_cat) VALUES
('Hotel Royal', 'Avenida de los Reyes', '123456789', '2024-01-01', 1),
('Hotel Martinica', 'Calle Bogotá', '987654321', '2024-01-02', 2);

-- 'habitacion'
INSERT INTO habitacion (cod_hab, id_hotel, tipo_hab) VALUES
(103, 1, 'Individual'),
(222, 2, 'Doble'),
(309, 2, 'Especial'),
(505, 1, 'Suite');


-- 'cliente'
INSERT INTO cliente (nombre_cli, direccion_cli, tlf_cli) VALUES
('Cliente 1', 'Direccion 1', '123456789'),
('Cliente 2', 'Direccion 2', '987654321'),
('Agencia el gran Viaje', 'Calle de los viajes', '+34766667541');

--  'reserva'
INSERT INTO reserva (precio, fecha_inicio, fecha_fin, titular, cod_cliente, cod_hab) VALUES
(100.00, '2024-01-01', '2024-01-10', 'Cliente 1', 1, 103),
(200.00, '2024-01-11', '2024-01-20', 'Cliente 2', 3, 222);
