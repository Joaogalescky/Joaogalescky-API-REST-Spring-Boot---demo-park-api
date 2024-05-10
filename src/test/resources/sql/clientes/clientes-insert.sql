INSERT INTO USUARIOS (id, username, password, role) VALUES
(100, 'ana@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_ADMIN'),
(101, 'bia@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(102, 'bob@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE'),
(103, 'toby@email.com', '$2a$12$wr40UKhti9831Ue016ctrOFwNZ3wTLSU5OO5/gGmQu3Lpmmp0EIJ6', 'ROLE_CLIENTE');

INSERT INTO CLIENTE (id, nome, cpf, id_usuario) VALUES
(10, 'Bianca Silva', '00891800034', 101),
(20, 'Roberto Gomes', '93360359089', 102);