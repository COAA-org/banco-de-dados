CREATE DATABASE bdCOOA;
USE bdCOOA;

CREATE TABLE tbUser(
	idUser INT PRIMARY KEY AUTO_INCREMENT
    , nomeUser VARCHAR(100)
    , email VARCHAR(100)
    , senha VARCHAR(100)
);

CREATE TABLE tbEndereco(
	idEndereco INT PRIMARY KEY AUTO_INCREMENT
    , logradouro VARCHAR(100)
	, numero VARCHAR(100)
	, bairro VARCHAR(100)
    , municipio VARCHAR(100)
    , estado CHAR(2)
    , cep CHAR(8)
);

CREATE TABLE tbPredio(
	idPredio INT PRIMARY KEY AUTO_INCREMENT
	, nomePredio VARCHAR(100)
    , construtora VARCHAR(100)
    , fkEndereco INT
    , FOREIGN KEY (fkEndereco) REFERENCES tbEndereco(idEndereco)
    , fkUser INT
    , FOREIGN KEY (fkUser) REFERENCES tbUser(idUser)
);

CREATE TABLE tbSensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT
    , porta VARCHAR(10)
    , andarPredio VARCHAR(100)
    , identificacao VARCHAR(100)
	, horarioData DATETIME
    , fkPredio INT
    , FOREIGN KEY (fkPredio) REFERENCES tbPredio(idPredio)
);

CREATE TABLE tbEmpresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT
    , nomeEmpresa VARCHAR(100)
    , gestor VARCHAR(100)
    , telefone CHAR(11) -- ddd + 9 digitos
    , whatsapp CHAR(15) -- +55 ddd + 9 digitos
    , cnpj CHAR(18) --  padrão: XX.XXX.XXX/0001-XX
	, fkPredio INT
    , FOREIGN KEY (fkPredio) REFERENCES tbPredio(idPredio)
);