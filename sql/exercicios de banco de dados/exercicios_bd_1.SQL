
CREATE TABLE candidato (
cpf char(11) PRIMARY key NOT NULL,
nome varchar(80) NOT NULL,
email varchar(50) NOT NULL,
estadocivil varchar NOT NULL,
estado char(2) NOT NULL,
cidade varchar(30) NOT NULL
)Engine=InnoDB;

CREATE TABLE vaga_candidatos(
id_vaga candidato char(12) PRIMARY KEY,
cpf char(11) NOT NULL,
cod_vaga char(10) NOT NULL
)Engine=InnoDB;

CREATE TABLE vaga(
cod_vaga char(10) PRIMARY key NOT NULL,
cod_setor char(9) NOT NULL,
descricao varchar(1000),
prazo_inicio datetime NOT NULL,
prazo_fim datetime not NULL,
gmail_adm varchar NOT NULL
)Engine=InnoDB;

CREATE TABLE adm (
gmail varchar PRIMARY KEY,
nome varchar NOT NULL,
senha char(8) NOT NULL
)Engine=InnoDB;

CREATE TABLE setor (
cod_setor char(10) PRIMARY KEY,
nome varchar not NULL,
salario decimal NOT NULL,
jornada_diaria_trabalho integer not NULL
 )Engine=InnoDB;
 
 CREATE TABLE setor_vaga(
id_setor_vaga char(10) PRIMARY KEY,
cod_setor char(10) NOT NULL,
cod_vaga char(10) NOT NULL
)Engine=InnoDB;