-- Criando base de dados
create database db_generation_game_online;

use db_generation_game_online;

-- Criando tabela de classes
create table tb_classes(
	-- Criando id da chave primaria
	id bigint auto_increment not null,
    -- bot, mid ou top
    lane varchar(255),
    -- mago, guerreiro, atirador ...
    tipo varchar(255),
    primary key(id)
);

-- Inserindo registros das classes *todos varchar*
insert into tb_classes(lane,tipo)values("bot","atirador");
insert into tb_classes(lane,tipo)values("bot","suporte");
insert into tb_classes(lane,tipo)values("mid","mago");
insert into tb_classes(lane,tipo)values("top","guerreiro");
insert into tb_classes(lane,tipo)values("selva","assassino");

-- drop table tb_personagens;
-- drop table tb_classes;

create table tb_personagens(
	-- Criando "Atributos e id da classe"
    classe_id bigint ,
    id bigint auto_increment,
    nome varchar(255),
    idade bigint,
    ataque int,
    defesa int,
    
    -- "Criando chave externa"
    foreign key(classe_id) references tb_classes (id),
    primary key(id) 
    );

-- Inserindo registros dos personagens *todos int menos o nome*
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("dravem",35,3000,1000,1);
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("yumi",777,100,4000,2);
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("master",100,2500,3000,5);
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("jinx",23,3200,800,1);
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("thresh",2000,500,3800,2);
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("ezreal",20,3100,50,1);
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("yasuo",40,3850,1250,5);
insert into tb_personagens(nome,idade,ataque,defesa,classe_id)values("riven",50,2500,2500,4);

-- Realizando os selects propostos no enunciado
select * from tb_personagens where ataque >2000;
select * from tb_personagens where ataque >1000 and ataque<2000;
select * from tb_personagens where nome like "%c%";
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;
select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id where lane = "bot";

-- drop database db_generation_game_online;






	