USE bdCOOA;

INSERT INTO tbEndereco (logradouro, bairro, municipio, estado, cep) 
VALUES  ()
    , ()
    , ()
    , ()
    , ()
    , ()
    , ();

INSERT INTO tbEmpresa (cnpj, razaoEmpresa, nomeEmpresa, telefone, email, numero, senha, fkEndereco)
VALUES  ()
    , ()
    , ()
    , ()
    , ()
    , ()
    , ()
    , ();

INSERT INTO tbFabrica (nomeFabrica, telefone, fkEmpresa, fkEndereco)
VALUES ()
    , ()
    , ()
    , ()
    , ()
    , ()
    , ();

INSERT INTO tbFuncionario (nomeFuncionario, sexo, cargoFuncionario, fkFuncionarioSuper, fkFabrica)
VALUES ()
    , ()
    , ()
    , ()
    , ()
    , ()
    , ();

INSERT INTO tbLocal (nomeLocal, piso, setor, fkFabrica)
VALUES ()
    , ()
    , ()
    , ()
    , ()
    , ();

INSERT INTO tbSensor (modeloSensor, dataInstalacao, fkFabrica, fkLocal)
VALUES ()
    , ()
    , ()
    , ()
    , ()
    , ();

INSERT INTO tbRegistro (saidaDado, dataHora, fkSensor)
VALUES ()
    , ()
    , ()
    , ()
    , ()
    , ()
    , ();