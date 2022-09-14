USE academia;

-- ADICONANDO PERSONAL

INSERT INTO personal (id_personal, nome)
VALUES (1,  'Isadora');

INSERT INTO personal (id_personal, nome)
VALUES (2,  'Van');

-- ADICIONANDO CLIENTES

INSERT INTO clientes_academia (id_clientes_academia, nome_completo, data_nascimento, cpf, email, telefone, id_personal_fk)
VALUES (1,  'Helter Emanoel Soares Pereira', '1999/01/29', 11504977424, 'helteremanoel@outlook.com', 82988506219, 2);

INSERT INTO clientes_academia (id_clientes_academia, nome_completo, data_nascimento, cpf, email, telefone, id_personal_fk)
VALUES (2,  'Jamile Soares Silva Pereira', '1983/05/02', 00940171406, 'jamile@outlook.com', 82900526314, 1);

INSERT INTO clientes_academia (id_clientes_academia, nome_completo, data_nascimento, cpf, email, telefone, id_personal_fk)
VALUES (3,  'Kauê Soares', 02/10/2004, 11847520655, 'kaues@outlook.com', 82955224488, 2);

INSERT INTO clientes_academia (id_clientes_academia, nome_completo, data_nascimento, cpf, email, telefone, id_personal_fk)
VALUES (4,  'Juciele Teixeira', 06/06/2004, 85236974100, 'kju@outlook.com', 82988523698, 1);

-- ADICIONANDO TIPOS DE PLANOS

INSERT INTO tipos_planos_mensal (id_tipo_plano_mensal, planoA, planoB, planoC, planoD, planoE)
VALUES (1, 'Musculação', 'Lutas', 'FitDance', 'Zumba', 'Cardio');

-- ADICIONANDO ENDEREÇOS

INSERT INTO endereco (id_endereco, rua, bairro, cep, numero_casa, id_clientes_fk)
VALUES (1, 'Sete de Setembro', 'Luiz gonzaga', '57525000', '2586', 1);

INSERT INTO endereco (id_endereco, rua, bairro, cep, numero_casa, id_clientes_fk)
VALUES (2, 'Sete de Setembro', 'Luiz gonzaga', '57525000', '2586', 1);

INSERT INTO endereco (id_endereco, rua, bairro, cep, numero_casa, id_clientes_fk)
VALUES (3, 'Sete de Setembro', 'Luiz gonzaga', '57525000', '2586', 1);

INSERT INTO endereco (id_endereco, rua, bairro, cep, numero_casa, id_clientes_fk)
VALUES (4, 'Sete de Setembro', 'Luiz gonzaga', '57525000', '2586', 1);

-- TABELA INTERMEDIÁRIA

INSERT INTO clientes_planos (id_clientes_planos, id_clientes, id_tipos_planos_mensal)
VALUES (1, 1, 1);

INSERT INTO clientes_planos (id_clientes_planos, id_clientes, id_tipos_planos_mensal)
VALUES (2, 2, 1);

INSERT INTO clientes_planos (id_clientes_planos, id_clientes, id_tipos_planos_mensal)
VALUES (3, 3, 1);

INSERT INTO clientes_planos (id_clientes_planos, id_clientes, id_tipos_planos_mensal)
VALUES (4, 4, 1);

-- TABELA INTERMEDIÁRIA

INSERT INTO treinos (id_treinos, id_clientes, id_personal)
VALUES (1, 1, 2);

INSERT INTO treinos (id_treinos, id_clientes, id_personal)
VALUES (2, 2, 1);

INSERT INTO treinos (id_treinos, id_clientes, id_personal)
VALUES (3, 3, 2);

INSERT INTO treinos (id_treinos, id_clientes, id_personal)
VALUES (4, 4, 1);

-- ALTERAÇÃO DE DADOS

UPDATE endereco
SET id_clientes_fk = 2
WHERE id_endereco = 2;

UPDATE endereco
SET id_clientes_fk = 3
WHERE id_endereco = 3;

UPDATE endereco
SET id_clientes_fk = 4
WHERE id_endereco = 4;

-- MAIS UM CLIENTE
INSERT INTO clientes_academia (id_clientes_academia, nome_completo, data_nascimento, cpf, email, telefone, id_personal_fk)
VALUES (5,  'Jose', 05/2/1976, 05324786200, 'jose@outlook.com', 82988563974, 2);