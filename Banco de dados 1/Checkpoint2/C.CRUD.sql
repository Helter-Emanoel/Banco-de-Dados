CREATE DATABASE academia;
USE academia;

CREATE TABLE personal(
id_personal BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome VARCHAR(50)
);

CREATE TABLE clientes_academia (
id_clientes_academia BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nome_completo VARCHAR(100),
data_nascimento DATE,
cpf CHAR(11),
email VARCHAR(50),
telefone VARCHAR(50),
id_personal_fk BIGINT,
CONSTRAINT clientes_academia_id_personal FOREIGN KEY (id_personal_fk) REFERENCES personal (id_personal)
);


CREATE TABLE endereco (
id_endereco BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
rua VARCHAR(50),
bairro VARCHAR(50),
cep VARCHAR(50),
numero_casa int,
id_clientes_fk BIGINT,
CONSTRAINT endereco_id_clientes_academia FOREIGN KEY (id_clientes_fk) REFERENCES clientes_academia (id_clientes_academia)
);

CREATE TABLE tipos_planos_mensal(
id_tipo_plano_mensal BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
planoA VARCHAR(45),
planoB VARCHAR(45),
planoC VARCHAR(45),
planoD VARCHAR(45),
planoE VARCHAR(45)
);

CREATE TABLE clientes_planos(
id_clientes_planos BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_clientes BIGINT,
id_tipos_planos_mensal BIGINT,
CONSTRAINT clientes_planos_id_planos_mensal FOREIGN KEY (id_tipos_planos_mensal) REFERENCES tipos_planos_mensal (id_tipo_plano_mensal),
CONSTRAINT clientes_planos_id_clientes FOREIGN KEY (id_clientes) REFERENCES clientes_academia (id_clientes_academia)
);

CREATE TABLE treinos(
id_treinos BIGINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_clientes BIGINT,
id_personal BIGINT,
CONSTRAINT treinos_id_clientes FOREIGN KEY (id_clientes) REFERENCES clientes_academia (id_clientes_academia),
CONSTRAINT treinos_id_personal FOREIGN KEY (id_personal) REFERENCES personal (id_personal)
);