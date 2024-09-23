-a
show databases;

-b
show tables;

-c
DESC setor;

-d
INSERT into candidato(cpf,nome,email,estadocivil,estado,cidade)
values ('12345678901','batatinha','batata@gmail','casado','AC','hortolandia');
INSERT into candidato(cpf,nome,email,estadocivil,estado,cidade)
values ('11343675901','tomatinha','tomeito@gmail','casado','AC','hortolandia');
INSERT into candidato(cpf,nome,email,estadocivil,estado,cidade)
values ('12312348901','papel','higienedasilva@gmail','viuvo','sp','higienopules');
INSERT into candidato(cpf,nome,email,estadocivil,estado,cidade)
values ('12345698765','bywqgye','analfabeto@gmail','solteiro','PI','Caxingó');
INSERT into candidato(cpf,nome,email,estadocivil,estado,cidade)
values ('12957364901','cachaceiro','presidiario@gmail','solteiro','DF','Brasilia');

INSERT into setor(nome,salario,jornada_diaria_trabalho)
values ('ti',95000.99,8);
INSERT into setor(nome,salario,jornada_diaria_trabalho)
values ('presidencia',1.99,3);
INSERT into setor(nome,salario,jornada_diaria_trabalho)
values ('uber',300.01,14);
INSERT into setor(nome,salario,jornada_diaria_trabalho)
values ('limpesa',0.0,24);
INSERT into setor(nome,salario,jornada_diaria_trabalho)
values ('desenpregado',3000000000.97,24);

INSERT into ADM(gmail,nome,senha)
values ('fullprogramers@gmail.com','enzo','12345678');
INSERT into ADM(gmail,nome,senha)
values ('cleitomsilva@gmail.com','cleitom','1#7@9br1');
INSERT into ADM(gmail,nome,senha)
values ('jaulinmatacalango@gmail.com','tobias','tobias24');
INSERT into ADM(gmail,nome,senha)
values ('carvalho@gmail.com','marcos','85432451');
INSERT into ADM(gmail,nome,senha)
values ('analfabeto@gmail.com','jasdie','12345678');

INSERT into vaga(cod_vaga,cod_setor,descricao,prazo_inicio,prazo_fim,gmail_adm)
values ('12345678890','123456789','nao tem trabalho','20/09/2000 20:00','20/09/2017 21:00','jaulinmatacalango@gmail.com');
INSERT into vaga(cod_vaga,cod_setor,descricao,prazo_inicio,prazo_fim,gmail_adm)
values ('0987654321','987654321','trabalho duro sem remuneração','28/10/2018 20:00','20/09/2024 21:00','cleitomsilva@gmail.com');
INSERT into vaga(cod_vaga,cod_setor,descricao,prazo_inicio,prazo_fim,gmail_adm)
values ('0986556391','995654321','vaga de junior','10/04/2020 20:00','20/09/2025 21:00','cleitomsilva@gmail.com');
INSERT into vaga(cod_vaga,cod_setor,descricao,prazo_inicio,prazo_fim,gmail_adm)
values ('7391554321','995654321','exigencia ser honesto','10/04/2000 20:00','20/09/2004 21:00','analfabeto@gmail.com');
INSERT into vaga(cod_vaga,cod_setor,descricao,prazo_inicio,prazo_fim,gmail_adm)
values ('9372845321','995654321','somente para papeis','10/04/1856 20:00','20/04/1856 21:00','cleitomsilva@gmail.com');


-e 
SELECT * FROM candidatos;

-f
SELECT * FROM candidato 
WHERE nome like 'g%';

-g
DELETE prazo_fim FROM vaga
WHERE prazo_fim BETWEEN '01/01/2018' and '20/01/2018';

-h
SELECT * FROM adm

UPDATE adm
set gmail = 'nadadaa'
WHERE EXISTS 'gmail.com';

-i
SELECT nome FROM candidato
WHERE estadocivil LIKE 'solteiro'

-j
SELECT * FROM vendas
WHERE data < '03/12/2018'