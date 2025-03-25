-- Criando o Banco de dados
create database  gameCollection
charset utf8mb4
collate utf8mb4_unicode_ci;

-- Indicando a utilização do Banco
use gameCollection;

-- Criando a tabela Games

create table games(
	id_game int not null auto_increment,
    title varchar(30) not null,
    publisher varchar(20) not null default "Não Informado",
    gender varchar(20) not null default "Não Informado",
    year_of year not null,
    primary key (id_game)
); 

-- Verificando a tabela
describe games;

-- Inserindo mùltiplos registros de games
insert into games
value
(default, "Super Mario Bros", "Nintendo", "Plataforma", 1985),
(default, "Super Castlevania 4", "Konami", "Plataforma", 1991),
(default, "Assasins's Creed", "Ubisoft", "Stelth", 2007),
(default, "Halo: Combat Envolved", "Microsoft", "FPS", 2001),
(default, "Super Mario Sunshine", "Nintendo", default, 2002),
(default, "Resident Evil", default, default, 1996);

-- Visualizando os registros
select * from games;

-- Criando a tabela players com  chave estrangeira
-- para relacionamento com games

create table players(
	
    -- Indicando os atributos normais
    id_player int not null auto_increment,
    pname varchar(50) not null,
    fav_game int,
    
    -- Indicando a chave primaria
    primary key (id_player),
    
    -- Indicando o relacionamento com a chave estrangeira
    foreign key (fav_game) references games(id_game)
);


-- descrevendo a tabela players
describe players;

-- Inserindo registros em players
insert into players values
(default, "Maria das Pedras",3);

insert into players values
(default, "José das Couves", 5);

-- Visualizando todos os registros em players
select * from players;
 












