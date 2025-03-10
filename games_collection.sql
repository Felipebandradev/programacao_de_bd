-- Aula 10/03/2025 no MySQL
-- Criando um banco de dados
create database game_collection
character set utf8mb4
collate utf8mb4_unicode_ci;

-- Indicando utilização do banco
use game_collection;

-- Criando uma tabela
create table games(
	id int not null auto_increment,
    tittle varchar(30) not null,
    publisher varchar(20) not null default "Não Informado",
    gender varchar(20) not null default "Não Informado",
    year_of year not null,
    primary key (id)
);

-- Inserindo dados - Forma Tradicional
-- Tupla parâmetros
insert into games (id, tittle, publisher, gender, year_of)
-- Tupla de argumentos
values (1, "Super Mario Bros", "Nintendo", "Plataforma", 1985);


-- Visualizando todos os registros em uma tabela
select * from games;

-- Suprimindo a indicação do campo auto_increment
insert into games (tittle, publisher, gender, year_of)
values ("Super Castlevania 4", "Konami", "Plataforma", 1991);

-- Preenchimento dos campos default
insert into games (tittle, publisher, gender, year_of)
values ("Resident Evil", default, default, 1996);

-- Para suprimimir toda a tupla de parâmetros,
-- devemos preencher TODOS os valores
-- respeitando a ordem das colunas na tabela de destino:

insert into games
values
(default, "Enduro", "Actvision", "Corrida", "1983");

-- inserindo multiplos registros
insert into games
values
(default, "Assins's Creed", "Ubisoft", "Stelth", "2007"),
(default, "Halo: Combat Envolved", "Microsoft", "FPS", "2001"),
(default, "Super Mario Sunshine", "Nintendo", default, "2002");

-- Atualizando um campo da nossa tabela
update games
set tittle = "Resident Evil 1"
where id = 3;

-- Atualizando múltiplos campos
update games
set publisher = "Capcom", gender = "Survivor Horror"
where id = 3;

-- Perigos do where - safe mode ligado
-- esse comando não será executado pois o safe mode está ligado
update games
set publisher = "Nintendooo"
where publisher = "Nintendo";

-- Apagando um registro por id
 delete from games 
 where id = 4;
 
-- Visualizando todos os registros em uma tabela
select * from games;



