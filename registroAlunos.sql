-- Criando o banco de dados
create database registroAlunos
charset utf8mb4
collate utf8mb4_unicode_ci;

-- Indicando a utilização do banco
use registroAlunos;

-- Criando a tabela Curso

create table curso(
	codigoCurso int not null auto_increment,
    nomeCurso varchar(30) not null,
    duracaoCurso int not null,
    dataPublicacao year not null,
    primary key (codigoCurso)
);

-- Descrevendo a Tabela Curso
describe curso;

-- Criando a tabela Aluno
create table aluno(
	matricula int not null auto_increment,
    nomeAluno varchar(50) not null,
    dataNascimento year not null,
    telefone varchar(20) not null default "Não Informado",
    bairro varchar(30) not null,
    cep int not null,
    codigoCurso int,
    
    primary key (matricula),
    
    foreign key (codigoCurso) references curso(codigoCurso)
    
);

describe aluno;

-- Inserindo Registro de Curso

insert into curso
values
(default, "Analise de Sistemas", 500, 2020),
(default, "Web Design", 480, 2025),
(default, "Administração", 300, 2025);

-- Verificando os registros de curso
select * from curso;

-- Inserindo registros em Aluno
insert into aluno
values
(default, "Claudio", 2004, default,"Penha", 03030666, 3),
(default, "Anderson Melo", 2003, "11 93417-2530", "Ferrais de Vasconcelos", 08040625, 2),
(default, "Samara Bonnie", 2004, "11 968546-5874", "Barretos", 080544796, 3),
(default, "João Gomes", 2002, "11 36547-9658", "Tiradentes", 0800545695, 1);

-- Verificando os registros de ALUNO
select * from aluno;

-- Grupo 4ºSemestre
-- Felipe Barbosa Brito de Andrade
-- Isac Batista Pina
-- Vanessa Barbosa Fonseca
-- João Pedro Viana 
-- Rhuam Gomes Araujo
