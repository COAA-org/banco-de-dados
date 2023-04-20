USE bdCOOA;

INSERT INTO tbEndereco (logradouro, bairro, municipio, estado, cep) VALUES  
('PRAIA DE BOTAFOGO', 'Botafogo', 'Rio de Janeiro', 'RJ', '22250040'), 
('AVENIDA MARGINAL DA RODOVIA DOS BANDEIRANTES', 'Distrito Industrial', 'Jundiaí', 'SP', '13213008'), 
('RUA WERNER VON SIEMENS', 'Lapa de Baixo', 'São Paulo', 'SP', '05069900'), 
('RUA EUSTAQUIO JOSE NOGUEIRA', 'Barra Nova', 'Caicó', 'RN', '59300000'), 
('', '', '', '', ''),
('', '', '', '', ''), 
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''), 
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', '');

INSERT INTO tbEmpresa (cnpj, razaoEmpresa, nomeEmpresa, telefone, email, numero, senha, fkEndereco) VALUES  
(45997418000153, 'Coca Cola Indústrias Ltda', 'Coca-Cola', '2125591000', 'rh_cocacola@ccl.com', 374, 'CC#ola!232425@2hDoL', ), 
(08285374000102, 'FOXCONN BRASIL INDÚSTRIA E COMÉRCIO LTDA.', 'FOXCONN', '1133082000', 'luciana.barros@foxconn.com', 800, '45F0x3#omn!KL', ),
(59546515000134, 'FISIA COMERCIO DE PRODUTOS ESPORTIVOS S.A.', null, '1127396453', 'processofiscal@gruposbf.com.br', 111, 'Yf1Si#9a@jHjK', ), 
(31565104025838, 'Pepsico do Brasil Ltda', 'Elma Chips', '1148717124', 'p-pepsicoltda@pscco.com', null, 'E18naCH10$@pdphLe', ), 
(43447044000410, 'Sony Brasil Ltda.', 'Sony', '1121969085', 'fiscal.sp@am.sony.com', 111, 'j0#oOm3!Ddav4m6Ww', );

INSERT INTO tbFabrica (nomeFabrica, telefone, fkEmpresa, fkEndereco) VALUES 
('Coca-cola', '', , ), 
('Coca-cola', '', , ), 
('FOXCONN', '', , ), 
('FOXCONN', '', , ), 
('FOXCONN', '', , ), 
('FISIA', '', , ),
('Pepsico', '', , ),
('Sony', '', , );

INSERT INTO tbFuncionario (nomeFuncionario, sexo, cargoFuncionario, fkFuncionarioSuper, fkFabrica) VALUES 
('', '', '', , ),
('', '', '', , ),
('', '', '', , ), 
('', '', '', , ), 
('', '', '', , ), 
('', '', '', , ), 
('', '', '', , );

INSERT INTO tbLocal (nomeLocal, piso, setor, fkFabrica) VALUES 
('', , '', ), 
('', , '', ), 
('', , '', ), 
('', , '', ), 
('', , '', ), 
('', , '', );

INSERT INTO tbSensor (modeloSensor, dataInstalacao, fkFabrica, fkLocal) VALUES 
('', '', , ), 
('', '', , ), 
('', '', , ), 
('', '', , ), 
('', '', , ), 
('', '', , ),
('', '', , ),
('', '', , );

INSERT INTO tbRegistro (saidaDado, dataHora, fkSensor) VALUES 
( , '', ), 
( , '', ), 
( , '', ), 
( , '', ), 
( , '', ), 
( , '', ), 
( , '', )
( , '', );
    
-- ===============SELECTS==================--