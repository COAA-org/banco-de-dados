USE bdCOOA;

-- Talvez seja bom fazer uma tabela para telefones
-- tbModelo sensor não precisa de fkFabrica, pois o fkLocal já referencia a fábrica
-- ...

INSERT INTO tbEndereco (logradouro, bairro, municipio, estado, cep) VALUES  
('Praia de Botafogo', 'Botafogo', 'Rio de Janeiro', 'RJ', '22250040'), 
('Rua Werner Von Siemens', 'Lapa de Baixo', 'São Paulo', 'SP', '05069900'), 
('Rua Riachao', 'Prazeres', 'Jaboatão dos Guararapes', 'PE', '54335035'), 
('Rodovia BR-101', 'Tabajara', 'Cariacica', 'ES', '29154580'), 
('Rua André Rocha', 'Jacarepaguá', 'Rio de Janeiro', 'RJ', '22710560'), 
('Alameda Araguaia', 'Alphaville Industrial', 'Barueri', 'SP', '06455000'), 
('Rua Jaime Ribeiro Wright', 'Colônia', 'São Paulo', 'SP', '08260070'), 
('Rodovia Presidente Dutra', 'São Roque', 'Guarulhos', 'SP', '07192270'), 
('Rua Ministro João Gonçalves de Araújo', 'Distrito Industrial I', 'Manaus', 'AM', '69075840'); 

INSERT INTO tbEmpresa (cnpj, razaoEmpresa, nomeEmpresa, telefone, email, numero, senha, fkEndereco) VALUES  
(45997418000153, 'Coca Cola Indústrias Ltda', 'Coca-Cola', '2125591000', 'rh_cocacola@ccl.com', 374, 'CC#ola!232425@2hDoL', 1), 
(59546515000134, 'NIKE do Brasil Comércio e Participações Ltda.', 'Nike', '1127396453', 'processofiscal@gruposbf.com.br', 111, 'Yf1Si#9a@jHjK', 2), 
(31565104025838, 'Pepsico do Brasil Ltda', 'Elma Chips', '1148717124', 'p-pepsicoltda@pscco.com', 200, 'E18naCH10$@pdphLe', 3), 
(43447044000410, 'Sony Brasil Ltda.', 'Sony', '1121969085', 'fiscal.sp@am.sony.com', 111, 'j0#oOm3!Ddav4m6Ww', 2);

INSERT INTO tbFabrica (nomeFabrica, telefone, fkEmpresa, fkEndereco) VALUES 
('Coca-cola Andina', '08000235338', 1, 4), 
('Coca-cola', '08000235338', 1, 5), 
('Nike do Brasil', '1121666453', 2, 6),
('Pepsico do Brasil', '1127238910', 3, 7),
('Pepsico do Brasil', '1124642400', 3, 8),
('Sony Brasil', '9231824600', 4, 9);

INSERT INTO tbFuncionario (nomeFuncionario, sexo, cargoFuncionario, fkFuncionarioSuper, fkFabrica) VALUES 
('João Paulo', 'm', 'Supervisor de linha', null, 1),
('Eliane Rocha', 'f', 'Programador da Produção', 1, 1),
('José Pacheco', 'm', 'Analista de PCP', null, 2), 
('Felipe Bernades', 'm', 'Operador de Máquina', null, 3), 
('Daniele Dias', 'f', 'Supervisor de linha', null, 4), 
('Natalia Dias', 'f', 'Analista de PCP', 5, 4), 
('Osmar Kontato', 'n', 'Almoxarife', 5, 4),
('Osvaldo Cruz', 'm', 'Supervisor de linha', null, 5),
('Ana Claudia', 'f', 'Almoxarife', null, 6);

INSERT INTO tbLocal (nomeLocal, piso, setor, fkFabrica) VALUES 
('Corredor 2-b', 2, 'Financeiro', 1), 
('Laboratório 1-a', 1, 'Produção', 2), 
('Sala administrativa 3-c', 1, 'Administrativo', 3), 
('Sala das máquinas 1-f', 1, 'Produção', 4), 
('Laboratório 2-a', 3, 'Produção', 5), 
('Corredor 5-d', 3, 'TI', 6);

INSERT INTO tbSensor (modeloSensor, dataInstalacao, fkFabrica, fkLocal) VALUES 
('TCRT5000', '2023-02-03', 1, 1), 
('TCRT5000', '2023-02-21', 2, 2), 
('TCRT5000', '2023-06-30', 3, 3), 
('TCRT5000', '2023-11-13', 4, 4), 
('TCRT5000', '2023-09-15', 5, 5), 
('TCRT5000', '2023-04-13', 6, 6);

INSERT INTO tbRegistro (saidaDado, dataHora, fkSensor) VALUES 
( 1, '2023-02-03 19:40:21', 1), 
( 1, '2023-02-21 14:58:30', 2), 
( 1, '2023-06-30 09:30:00', 3), 
( 1, '2023-11-13 13:08:08', 4), 
( 1, '2023-09-15 17:38:59', 5), 
( 1, '2023-04-13 13:57:45', 6);
    
-- ===============SELECTS================== --

SELECT * FROM tbEndereco;
SELECT * FROM tbEmpresa;
SELECT * FROM tbFabrica;
SELECT * FROM tbFuncionario;
SELECT * FROM tbLocal;
SELECT * FROM tbSensor;
SELECT * FROM tbRegistro;

-- DROP DATABASE bdCOOA;