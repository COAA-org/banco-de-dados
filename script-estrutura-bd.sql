CREATE DATABASE bdCOOA;
USE bdCOOA;

CREATE TABLE tbLogin(
	idLogin INT PRIMARY KEY AUTO_INCREMENT
    , email VARCHAR(45)
    , senha VARCHAR(45)
);

CREATE TABLE tbEndereco(
	idEndereco INT PRIMARY KEY AUTO_INCREMENT
    , logradouro VARCHAR(45)
	, numero VARCHAR(15)
	, bairro VARCHAR(45)
    , municipio VARCHAR(45)
    , estado CHAR(2)
    , cep CHAR(8)
);

CREATE TABLE tbPredio(
	idPredio INT PRIMARY KEY AUTO_INCREMENT
	, nomePredio VARCHAR(45)
    , construtora VARCHAR(45)
    , fkEndereco INT
    , FOREIGN KEY (fkEndereco) REFERENCES tbEndereco(idEndereco)
    , fkLogin INT
    , FOREIGN KEY (fkLogin) REFERENCES tbLogin(idLogin)
);

CREATE TABLE tbSensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT
    , porta VARCHAR(5)
    , andarPredio VARCHAR(45)
    , identificacao VARCHAR(45)
	, horarioData DATETIME
    , fkPredio INT
    , FOREIGN KEY (fkPredio) REFERENCES tbPredio(idPredio)
);

CREATE TABLE tbEmpresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT
    , nomeEmpresa VARCHAR(45)
    , gestor VARCHAR(45)
    , telefone CHAR(11) -- ddd + 9 digitos
    , whatsapp CHAR(15) -- +55 ddd + 9 digitos
    , cnpj CHAR(18) --  padrão: XX.XXX.XXX/0001-XX
	, fkPredio INT
    , FOREIGN KEY (fkPredio) REFERENCES tbPredio(idPredio)
);