create database Filmes;
use Filmes;

create table Filmes (
id int auto_increment primary key,
Nome varchar(100),
Lançamento date,
Genero varchar(100),
Diretor varchar (100)
);

insert into Filmes (Nome, Lançamento, Genero, Diretor)
values

('Para todos os garotos que já amei', '2014-04-15', 'comédia romântica', 'Susan Johnson'),
('Alerta vermelho', '2021-11-12', 'ação', 'Rawson Marshall Thurber'),
('Velozes e furiosos 3', '2006-08-11', 'ação', 'Justin Lin'),
('Avatar', '2009-12-18', 'ficção cíentifica', 'James Cameron'),
('Carros 4', '2017-07-13', 'animação', 'Brian Fee');

select * from Filmes;

delete from Filmes
where id in (4);