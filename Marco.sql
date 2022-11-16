create database Diversao;


create table Amigos(
id INT NOT NULL primary KEY,
nome varchar(30),
idade int,
cor varchar(10),
sexo varchar(10)
);

create table jogos(
id INT NOT NULL auto_increment,
primary key(id),
foreign key(id) references Amigos(id),
nome varchar(20),
estilo_de_jogo varchar(30),
minnha_nota int
);

create database escola;

create table aluno(
id INT NOT NULL primary KEY auto_increment,
nome varchar(10),
sobrenome varchar(10),
sexo varchar(10),
fase int,
nota decimal
);

create table profes(
id INT NOT NULL auto_increment,
primary key(id),
foreign key(id) references aluno(id),
nome varchar(20),
sobrenome varchar(20),
nome_da_materia varchar(10),
sexo varchar(10),
turmas varchar(10)
);

create table diretora(
id INT NOT NULL auto_increment,
primary key(id),
foreign key(id) references aluno(id),
nome varchar(20),
sobrenome varchar(20),
sexo varchar(20),
cor varchar(10)
);
 