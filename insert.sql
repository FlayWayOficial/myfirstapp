
INSERT INTO cidade (nome, estado) VALUES
('Brasília','DF'),
('São Paulo','SP'),
('Rio de Janeiro','RJ'),
('Salvador','BA'),
('Fortaleza','CE'),
('Belo Horizonte','MG'),
('Curitiba','PR'),
('Porto Alegre','RS'),
('Manaus','AM'),
('Florianópolis','SC');

INSERT INTO cliente (nome, cpf, email, telefone) VALUES
('Ana Silva','000.000.000-01','ana.silva@example.com','61999990001'),
('Bruno Souza','000.000.000-02','bruno.souza@example.com','11333330002'),
('Camila Lima','000.000.000-03','camila.lima@example.com','21944440003'),
('Daniel Oliveira','000.000.000-04','daniel.oliveira@example.com','71955550004'),
('Eduarda Torres','000.000.000-05','eduarda.torres@example.com','85966660005'),
('Felipe Costa','000.000.000-06','felipe.costa@example.com','31377770006'),
('Gabriela Rocha','000.000.000-07','gabriela.rocha@example.com','41988880007'),
('Henrique Alves','000.000.000-08','henrique.alves@example.com','51399990008'),
('Isabela Fernandes','000.000.000-09','isabela.fernandes@example.com','92911110009'),
('João Pereira','000.000.000-10','joao.pereira@example.com','48322220010');

INSERT INTO endereco (numero, complemento, bairro, cep, cidade_id) VALUES
('100','Apto 101','Centro','70000000',1),
('200','Bloco B','Jardins','01001000',2),
('300','Casa','Copacabana','22040001',3),
('400','Sala 5','Pelourinho','40020000',4),
('500','Casa','Meireles','60020000',5),
('600','Apto 702','Savassi','30140071',6),
('700','Kitnet','Batel','80040060',7),
('800','Cobertura','Moinhos de Vento','90020000',8),
('900','Sala comercial','Centro','69005000',9),
('1000','Casa','Centro','88010000',10);

INSERT INTO hotel (nome, endereco_id) VALUES
('Hotel Brasília Palace',1),
('Hotel Paulista',2),
('Hotel Copacabana',3),
('Hotel Salvador',4),
('Hotel Fortaleza',5);

INSERT INTO hospedagem (check_in, check_out, numero_quarto, cliente_id, hotel_id) VALUES
('2025-09-01 14:00','2025-09-05 11:00',101,1,1),
('2025-09-02 15:00','2025-09-06 12:00',202,2,2),
('2025-09-03 13:00','2025-09-07 10:00',303,3,3),
('2025-09-04 16:00','2025-09-08 11:00',404,4,4),
('2025-09-05 14:00','2025-09-09 12:00',505,5,5),
('2025-09-06 15:00','2025-09-10 10:00',106,6,1),
('2025-09-07 14:00','2025-09-11 11:00',207,7,2),
('2025-09-08 13:00','2025-09-12 12:00',308,8,3),
('2025-09-09 16:00','2025-09-13 10:00',409,9,4),
('2025-09-10 14:00','2025-09-14 11:00',510,10,5);

INSERT INTO passagem (data_embarque, data_desembarque, companhia, cliente_id, origem_id, destino_id) VALUES
('2025-10-01 08:00','2025-10-01 10:00','Azul',1,1,2),
('2025-10-02 09:00','2025-10-02 11:00','GOL',2,2,3),
('2025-10-03 10:00','2025-10-03 12:00','LATAM',3,3,4),
('2025-10-04 11:00','2025-10-04 13:00','Azul',4,4,5),
('2025-10-05 12:00','2025-10-05 14:00','GOL',5,5,6),
('2025-10-06 13:00','2025-10-06 15:00','LATAM',6,6,7),
('2025-10-07 14:00','2025-10-07 16:00','Azul',7,7,8),
('2025-10-08 15:00','2025-10-08 17:00','GOL',8,8,9),
('2025-10-09 16:00','2025-10-09 18:00','LATAM',9,9,10),
('2025-10-10 17:00','2025-10-10 19:00','Azul',10,10,1);

INSERT INTO pacote (data_inicio, data_fim, preco) VALUES
('2025-09-01','2025-09-05',1000.00),
('2025-09-06','2025-09-10',1500.50),
('2025-09-11','2025-09-15',2000.75),
('2025-09-16','2025-09-20',2500.00),
('2025-09-21','2025-09-25',3000.25);

INSERT INTO pacote_cliente (pacote_id, cliente_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5);

INSERT INTO pacote_hospedagem (pacote_id, hospedagem_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5);

INSERT INTO pacote_passagem (pacote_id, passagem_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5);

INSERT INTO pagamento (pacote_id, valor, forma_pagamento, data_pagamento, numero_parcelas) VALUES
(1, 1000.00, 'Cartão de Crédito', '2025-08-25 10:00:00', 3),
(2, 1500.50, 'PIX', '2025-08-26 11:30:00', 1),
(3, 2000.75, 'Transferência Bancária', '2025-08-27 14:45:00', 1),
(4, 2500.00, 'Cartão de Crédito', '2025-08-28 09:00:00', 6),
(5, 3000.25, 'Boleto', '2025-08-29 16:20:00', 1),
(1, 1000.00, 'Cartão de Crédito', '2025-09-01 10:30:00', 1),
(2, 1500.50, 'PIX', '2025-09-02 13:00:00', 1),
(3, 2000.75, 'Transferência Bancária', '2025-09-03 17:00:00', 1),
(4, 2500.00, 'Cartão de Crédito', '2025-09-04 08:45:00', 1),
(5, 3000.25, 'Boleto', '2025-09-05 12:00:00', 1);

INSERT INTO funcionario (nome, cpf, email, telefone, cargo) VALUES
('Pedro Afonso', '111.111.111-11', 'pedro.afonso@agencia.com', '61911111111', 'Gerente de Vendas'),
('Mariana Rocha', '222.222.222-22', 'mariana.rocha@agencia.com', '11922222222', 'Consultor de Viagens'),
('Lucas Costa', '333.333.333-33', 'lucas.costa@agencia.com', '21933333333', 'Atendente'),
('Larissa Dias', '444.444.444-44', 'larissa.dias@agencia.com', '71944444444', 'Consultor de Viagens'),
('Vinicius Silva', '555.555.555-55', 'vinicius.silva@agencia.com', '85955555555', 'Especialista em Destinos'),
('Amanda Gomes', '666.666.666-66', 'amanda.gomes@agencia.com', '31966666666', 'Gerente de Marketing'),
('Ricardo Neves', '777.777.777-77', 'ricardo.neves@agencia.com', '41977777777', 'Consultor de Viagens'),
('Juliana Santos', '888.888.888-88', 'juliana.santos@agencia.com', '51988888888', 'Atendente'),
('Gabriel Moraes', '999.999.999-99', 'gabriel.moraes@agencia.com', '92999999999', 'Consultor de Viagens'),
('Carolina Ribeiro', '101.101.101-01', 'carolina.ribeiro@agencia.com', '48910101010', 'Gerente de Vendas');

INSERT INTO venda (pacote_id, cliente_id, funcionario_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(1, 6, 6),
(2, 7, 7),
(3, 8, 8),
(4, 9, 9),
(5, 10, 10);

INSERT INTO transporte (tipo, companhia, origem_id, destino_id, data_partida, data_chegada) VALUES
('Avião', 'Azul', 1, 2, '2025-10-01 08:00:00', '2025-10-01 10:00:00'),
('Ônibus', 'Expresso do Sul', 2, 3, '2025-10-02 09:00:00', '2025-10-02 12:00:00'),
('Navio', 'Costa Cruzeiros', 3, 4, '2025-10-03 10:00:00', '2025-10-03 18:00:00'),
('Avião', 'LATAM', 4, 5, '2025-10-04 11:00:00', '2025-10-04 13:00:00'),
('Ônibus', 'Viação Cometa', 5, 6, '2025-10-05 12:00:00', '2025-10-05 15:00:00'),
('Navio', 'MSC Cruzeiros', 6, 7, '2025-10-06 13:00:00', '2025-10-06 20:00:00'),
('Avião', 'GOL', 7, 8, '2025-10-07 14:00:00', '2025-10-07 16:00:00'),
('Ônibus', 'Reunidas', 8, 9, '2025-10-08 15:00:00', '2025-10-08 19:00:00'),
('Navio', 'Royal Caribbean', 9, 10, '2025-10-09 16:00:00', '2025-10-10 02:00:00'),
('Avião', 'Azul', 10, 1, '2025-10-10 17:00:00', '2025-10-10 19:00:00');

INSERT INTO pacote_transporte (pacote_id, transporte_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

INSERT INTO seguro (cobertura, preco) VALUES
('Seguro Viagem Nacional', 50.00),
('Seguro Saúde', 80.00),
('Seguro Bagagem', 30.00),
('Seguro Cancelamento', 100.00),
('Seguro de Acidente', 75.00),
('Seguro Premium', 150.00),
('Seguro de Aventura', 120.00),
('Seguro Familiar', 200.00),
('Seguro Básico', 40.00),
('Seguro Completo', 95.00);

INSERT INTO pacote_seguro (pacote_id, seguro_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

INSERT INTO atividade (nome, descricao, preco, cidade_id) VALUES
('Passeio no Eixo Monumental', 'Tour guiado pelos principais pontos de Brasília.', 60.00, 1),
('Visita ao MASP', 'Tour pelo Museu de Arte de São Paulo.', 45.00, 2),
('Bondinho do Pão de Açúcar', 'Passeio de bondinho com vista panorâmica.', 80.00, 3),
('Tour no Mercado Modelo', 'Tour gastronômico no Mercado Modelo de Salvador.', 55.00, 4),
('Caminhada na Praia de Iracema', 'Atividade guiada para apreciar a orla de Fortaleza.', 30.00, 5),
('Visita à Lagoa da Pampulha', 'Tour de bicicleta pela Pampulha.', 70.00, 6),
('Jardim Botânico de Curitiba', 'Passeio relaxante pelos jardins.', 25.00, 7),
('Pôr do sol no Gasômetro', 'Passeio de barco pelo Guaíba.', 65.00, 8),
('Tour pelo Teatro Amazonas', 'Tour guiado pelo famoso teatro histórico.', 50.00, 9),
('Visita à Ponte Hercílio Luz', 'Passeio fotográfico pela icônica ponte.', 35.00, 10);

INSERT INTO pacote_atividade (pacote_id, atividade_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(1, 6),
(2, 7),
(3, 8),
(4, 9),
(5, 10);

