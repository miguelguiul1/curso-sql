create database miguel;
use miguel;

drop database miguel1;

create table miguel (
	nome varchar (100),
    idade int ,
    escolaridade varchar (100)
    );
    insert into miguel (nome, idade, escolaridade)
    values
    ('Miguel', 16, 'Ensino Médio'),
	('Kaue', 15, 'Ensino Médio'),
    ('Nicolly', 16, 'Ensino Médio'),
    ('Maria Eduarda', 16, 'Ensino Médio'),
    ('Lorena', 15, 'Ensino Médio');
    
    drop table miguel;
   
    
    create table miguel (
    id int auto_increment primary key,
    	Nome_da_Música varchar (500),
        Gênero varchar (50),
        Cantor varchar (100),
        Gravadora varchar (100),
        Ano_de_Lancamento date
        );
    
        insert into miguel (Nome_da_Música, Gênero, Cantor, Gravadora, Ano_de_Lancamento)
        values
        
	('Shape of You', 'Pop', 'Ed Sheeran', 'Asylum Records', '2017-01-06'),
	('Rolling in the Deep', 'Pop / Soul', 'Adele', 'XL Recordings', '2010-11-29'),
	('Billie Jean', 'Pop', 'Michael Jackson', 'Epic Records', '1983-01-02'),
	('Imagine', 'Pop / Rock', 'John Lennon', 'Apple Records', '1971-10-11'),
	('Ai Se Eu Te Pego', 'Sertanejo / Pop', 'Michel Teló', 'Som Livre', '2011-08-05'),
	('Evidências', 'Sertanejo', 'Chitãozinho & Xororó', 'PolyGram', '1990-01-01'),
	('Tempo Perdido', 'Rock Brasileiro', 'Legião Urbana', 'EMI', '1986-05-01'),
	('Garota de Ipanema', 'Bossa Nova', 'Tom Jobim', 'Philips Records', '1962-03-01'),
	('Pais e Filhos', 'Rock Brasileiro', 'Legião Urbana', 'EMI', '1989-06-01'),
	('Asa Branca', 'Forró', 'Luiz Gonzaga', 'RCA Victor', '1947-01-01');
        
     select * from miguel;
   delete from miguel
   where id in (7, 8, 9);
	
    drop database escola_db;
    
    drop table tabela_dos_alunos;
    
    create database escola_db;
    use escola_db;
    
    create table alunos(
    id int auto_increment primary key,
    nome varchar (100),
    idade int (3),
	curso varchar (100),
    periodo varchar (100)
    );
    
    INSERT INTO	 alunos(nome, idade, curso, periodo)
    values
    
    ('Ana Paula Santos', 18, 'Informática', 'Manhã'),
	('Bruno Henrique Lima', 22, 'Administração', 'Noite'),
	('Carla Mendes Rocha', 20, 'Comunicação Visual', 'Tarde'),
	('Diego Alves Pereira', 19, 'Informática', 'Tarde'),
	('Elaine Costa Ribeiro', 24, 'Administração', 'Noite'),
	('Felipe Nogueira', 21, 'Comunicação Visual', 'Manhã'),
	('Gabriela Torres', 18, 'Informática', 'Manhã'),
	('Henrique Matos', 27, 'Administração', 'Noite'),
	('Isabela Farias', 23, 'Comunicação Visual', 'Tarde'),
	('João Victor Azevedo', 20, 'Informática', 'Noite'),
	('Karen Oliveira', 19, 'Administração', 'Manhã'),
	('Lucas Martins', 25, 'Comunicação Visual', 'Noite'),
	('Mariana Lopes', 18, 'Informática', 'Tarde'),
	('Nelson Barros', 28, 'Administração', 'Noite'),
	('Otávio Cunha', 22, 'Comunicação Visual', 'Manhã'),
	('Paula Rangel', 21, 'Informática', 'Noite'),
	('Rafael Teixeira', 24, 'Administração', 'Tarde'),
	('Helena Castro', 18, 'Comunicação Visual', 'Manhã');


    select * from alunos;
    
DELETE FROM alunos
where curso = 'Comunicação Visual';

DELETE FROM alunos
WHERE curso = 'Administração';
    
    UPDATE alunos
SET periodo = 'Manhã'
WHERE curso = 'Informática';
    
	
    
    