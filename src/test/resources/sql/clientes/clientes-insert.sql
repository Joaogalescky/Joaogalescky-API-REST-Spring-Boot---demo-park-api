INSERT INTO USUARIOS (id, username, password, role) VALUES
(100, 'ana@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_ADMIN'),
(101, 'bia@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(102, 'bob@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(103, 'toby@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE');
(104, 'carlos@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(105, 'fernando@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE');
(106, 'maria@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(107, 'robson@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE');

INSERT INTO CLIENTE (id, nome, cpf, id_usuario) VALUES
(10, 'Bianca Silva', '00891800034', 101),
(20, 'Toby Maguire', '93360359089', 102);
(30, 'Carlos da Rosa', '22345784008', 103),
(40, 'Fernando Kursky', '05442027081', 104);
(50, 'Maria Gomes', '40829560009', 105),
(60, 'Robson Crusué', '72031430076', 106);