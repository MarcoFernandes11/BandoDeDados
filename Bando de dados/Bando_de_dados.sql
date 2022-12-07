create database Diversao;


create table Amigos(
id INT NOT NULL primary KEY,
nome varchar(30),
idade int,
cor varchar(10),
sexo varchar(10),
cor_f. varchar(10),
comida_f varchar(10),
tipo_san_ varchar(10),
data_de_nacismento DATETIME,
humor varchar(10)
);

create table jogos(
id INT NOT NULL auto_increment, primary key(id), foreign key(id) references 
Amigos(id),
nome varchar(20),
estilo_de_jogo varchar(30),
minnha_nota int,
historia varchar(15),
qualidade_grafica varchar(15),
felicidade varchar(40)
);

create database escola;

create table aluno(
id INT NOT NULL primary KEY auto_increment,
nome varchar(10),
sobrenome varchar(10),
telefone in,
sexo varchar(10),
fase int,
disciplina varchar(10),
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
fase int,
turmas varchar(10)
);

create table diretora(
id INT NOT NULL auto_increment,
primary key(id),
foreign key(id) references aluno(id),
nome varchar(20),
sobrenome varchar(20),
sexo varchar(20),
cor varchar(10),
ifsc varchar(20)
);

/*Os insert com os seus updates, ignora os dados tão todos aleatorios, tem select para cada um tambem*/


insert into 
Amigos(id,nome,idade,cor,sexo,cor_f,comida_f,tipo_san_,data_de_nacismento,humor)

values 
(1,jorge,18,branco,masculino,verde,pastel,A,01/02/2002,maravilhoso),
(2,roberto,19,branco,masculino,vermelho,pastel,A,02/01/2002,horrivel),
(3,pedro,20,branco,masculino,roxo,pastel,A,20/06/2001,null),
(4,renata,31,branco,feminina,amarelo,pastel,A,05/05/1980,bom),
(5,renato,20,branco,masculino,preto,pastel,A,06/01/2001,medio),
(6,barbara,19,branco,masculino,branco,pastel,A,17/07/2001,null),
(7,bernado,19,branco,masculino,verde,pastel,A,01/03/2001,maravilhoso),
(8,rafael,19,branco,masculino,azul,pastel,A,01/10/2001,maravilhoso),
(9,frena,19,morreno,masculino,ciano,pastel,A,17/12/2001,maravilhoso),
(10,sergio,21,negro,masculino,cinza,pastel,A,07/06/1999,ruim);


update Amigos set nome = gustavo where id = 10;
update Amigos set comida_f = coxinha where id = 2;
update Amigos set sexo = feminina where id = 6;
update Amigos set humor = incrivel where id = 7;
update Amigos set cor_f = amarelo where id = 1;

delete Amigos where id = 10;
delete Amigos where id = 2;
delete Amigos where id = 6;
delete Amigos where id = 7;
delete Amigos where id = 1;

select * from Amigos order by idade;

/*/////////*/

insert into 
jogos(id,nome,estilo_de_jogo,minnha_nota,historia,qualidade_grafica,felicidade)

values
(1,Minecraft,RPG,10,Boa,Boa,muito_alegre),
(2,Genshin,mundo_aberto,8,maravilhoso,Boa,muito_alegre),
(3,Mario,2d,7,media,Boa,meio_termo),
(4,anime_adventure,defender_castelo,10,null,9,mt_feliz),
(5,god_of_war,hack_and_slash,10,boa,maravilhosa,mt_feliz),
(6,digimon_ds,rpg_por_turno,9,medio,media,feliz),
(7,pokemon,rpg_por_turno,10,boa,media,feliz),
(8,sonic,plataforma,5,media,media,meio_termo),
(9,Overwacht,luta_cincoXcinco,7,boa,maravilhosa,meio_termo),
(10,ben10,hack_and_slash,10,boa,maravilhosa,felicidade);

update jogos set qualidade_grafica= maravilhoso where id = 1;
update jogos set minnha_nota = 7 where id = 2;
update jogos set felicidade = triste where id = 3;
update jogos set qualidade_grafica = 10 where id = 4;
update jogos set felicidade = incrivelmente-feliz where id = 5;

delete jogos where id = 1;
delete jogos where id = 2;
delete jogos where id = 3;
delete jogos where id = 4;
delete jogos where id = 5;

select * from jogos order by nota;

/*/////////*/

insert into aluno(id,nome,sobrenome,telefone,sexo,fase,disciplina,nota)
values
(1,Marco,fernandes,99998888,masculino,5,informatica,6);
(2,jorge,silva,77776666,masculino,5,informatica,7),
(3,maria,pinto,88872227,feminina,2,portugues,9),
(4,marcos,dl,99014033,masculino,5,desing,10),
(5,renato,numsei,90098745,masculino,5,fisica,5),
(6,gabriel,seila,99017821,masculino,6,sociologia,7),
(7,bernado,sapo,87990919,masculino,1,logica,10),
(8,julia,gonzavez,79882143,feminina,2,artes,10),
(9,maria,silva,70908090,feminina,3,educacao_fisica,10),
(10,Seiya,zodiaco,77777777,masculino,10,fisico,10);

update aluno set sobrenome = aurelio where id = 1;
update aluno set nota = 10 where id = 2;
update aluno set sobrenome = alegria where id = 3;
update aluno set disciplina = portugues where id = 4;
update aluno set nota = 0 where id = 5;

delete aluno where id = 1;
delete aluno where id = 2;
delete aluno where id = 3;
delete aluno where id = 4;
delete aluno where id = 5;

select * from aluno order by nome;

/*/////////*/

insert into profes(id,nome,sobrenome,nome_da_materia,sexo,fase,turmas)
values
(1,fabio,numsei,projeto_integrador,masculino,5,informatica),
(2,renata,numsei,historia,feminina,3,quimica),
(3,marcia,numsei,ingles,feminina,4,informatica),
(4,maykon,numsei,pds,masculino,5,informatica),
(5,herculano,numsei,portugues,3,quimica);

update profes set sobrenome = roberto where id = 1;
update profes set fase = 2 where id = 2;
update profes set turmas = quimica where id = 3;
update profes set nome_da_materia = projeto_integrador where id = 4;
update profes set fase = 5 where id = 5;

delete profes where id = 1;
delete profes where id = 2;
delete profes where id = 3;
delete profes where id = 4;
delete profes where id = 5;

select * from profes order by fase;

/*/////////*/

insert into diretora(id,nome,sobrenome,sexo,cor,ifsc)
values
(1,Ana,Paula,feminina,branca,gaspar),
(2,Luís,Fernando,masculino,branco,itajai),
(3,Adriano,Antunes,masculino,branco,ararangua),
(4,Robinson,Pizzio,masculino,branco,florianopolis),
(5,GIOVANI,ROPELATO,masculino,branco,chapeco);

update diretora set sobrenome = paulinha where id = 1;
update diretora set nome = Luisa where id = 2;
update diretora set sexo = trans where id = 3;
update diretora set ifsc = null where id = 4;
update diretora set nome = giovani where id = 5;

delete diretora where id = 1;
delete diretora where id = 2;
delete diretora where id = 3;
delete diretora where id = 4;
delete diretora where id = 5;

select * from diretora order by ifsc;
