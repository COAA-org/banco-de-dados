CREATE DATABASE bdCOOA;
USE bdCOOA;

CREATE TABLE tbEndereco(
    idEndereco INT PRIMARY KEY AUTO_INCREMENT
    , logradouro VARCHAR(60)
    , bairro VARCHAR(60)
    , municipio VARCHAR(60)
    , estado VARCHAR(60)
    , cep CHAR(8)
);

CREATE TABLE tbEmpresa(
    idEmpresa INT PRIMARY KEY AUTO_INCREMENT
    , cnpj CHAR(14)
    , razaoEmpresa VARCHAR(60)
    , nomeEmpresa VARCHAR(60)
    , telefone CHAR(15)
    , email VARCHAR(60)
    , numero VARCHAR(15)
    , senha VARCHAR(60)
    , fkEndereco INT 
    , FOREIGN KEY (fkEndereco) REFERENCES tbEndereco(idEndereco)
);

CREATE TABLE tbFabrica(
    idFabrica INT PRIMARY KEY AUTO_INCREMENT
    , nomeFabrica VARCHAR(60)
    , telefone CHAR(15)
    , fkEmpresa INT 
    , FOREIGN KEY (fkEmpresa) REFERENCES tbEmpresa(idEmpresa)
    , fkEndereco INT 
    , FOREIGN KEY (fkEndereco) REFERENCES tbEndereco(idEndereco)
);

CREATE TABLE tbFuncionario(
    idFuncionario INT PRIMARY KEY AUTO_INCREMENT
    , nomeFuncionario VARCHAR(60)
    , sexo CHAR(1) CHECK(sexo in ('m','f','n'))
    , cargoFuncionario VARCHAR(45)
    , fkFuncionarioSuper INT 
    , FOREIGN KEY (fkFuncionarioSuper) REFERENCES tbFuncionario(idFuncionario)
    , fkFabrica INT
    , FOREIGN KEY (fkFabrica) REFERENCES tbFabrica(idFabrica)
);

CREATE TABLE tbLocal(
    idLocal INT PRIMARY KEY AUTO_INCREMENT
    , nomeLocal VARCHAR(60)
    , piso INT
    , setor VARCHAR(60)
    , fkFabrica INT 
    , FOREIGN KEY (fkFabrica) REFERENCES tbFabrica(idFabrica)
);

CREATE TABLE tbSensor(
    idSensor INT PRIMARY KEY AUTO_INCREMENT
    , modeloSensor VARCHAR(60)
    , dataInstalacao DATE
    , fkFabrica INT 
    , FOREIGN KEY (fkFabrica) REFERENCES tbFabrica(idFabrica)
    , fkLocal INT 
    , FOREIGN KEY (fkLocal) REFERENCES tbLocal(idLocal)
);

CREATE TABLE tbRegistro(
    idRegistro INT PRIMARY KEY AUTO_INCREMENT
    , saidaDado INT
    , dataHora DATETIME
    , fkSensor INT 
    , FOREIGN KEY (fkSensor) REFERENCES tbSensor(idSensor) 
);