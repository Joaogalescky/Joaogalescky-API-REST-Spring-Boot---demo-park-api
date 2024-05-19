INSERT INTO USUARIOS (id, username, password, role) VALUES
(100, 'ana@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_ADMIN'),
(101, 'bia@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(102, 'bob@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(103, 'toby@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(104, 'maguire@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(105, 'carlos@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(106, 'fernando@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(107, 'maria@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(108, 'robson@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE');

INSERT INTO CLIENTES (id, nome, cpf, id_usuario) VALUES
(10, 'Bianca Silva', '00891800034', 101),
(20, 'Toby Maguire', '40663565081', 104),
(30, 'Carlos da Rosa', '22345784008', 105),
(40, 'Fernando Kursky', '05442027081', 106),
(50, 'Maria Gomes', '40829560009', 107),
(60, 'Robson Crusué', '72031430076', 108);

INSERT INTO vagas (id, codigo, status) VALUES
(100, 'A-01', 'OCUPADA'),
(200, 'A-02', 'OCUPADA'),
(300, 'A-03', 'OCUPADA'),
(400, 'A-04', 'LIVRE'),
(500, 'A-05', 'LIVRE');

INSERT INTO clientes_tem_vagas (numero_recibo, placa, marca, modelo, cor, data_entrada, id_cliente, id_vaga) VALUES
('20230313-101300', 'FIT-1020', 'FIAT', 'PALIO', 'VERDE', '2023-03-13 10:15:00', 10, 100),
('20230314-101400', 'SIE-1020', 'FIAT', 'SIENA', 'BRANCO', '2023-03-14 10:15:00', 20, 200),
('20230315-101500', 'FIT-1020', 'FIAT', 'PALIO', 'VERDE', '2023-03-14 10:15:00', 10, 300);