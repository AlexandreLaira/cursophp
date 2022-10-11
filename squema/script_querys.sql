create database moviestar;

use moviestar;

create table users(
	idusers int primary key auto_increment,
    name varchar(100),
    lastname varchar(100),
    image varchar(200),
    email varchar(100),
    password varchar(200),
    token varchar(200),
    bio text);
    
    create table movies(
		idmovies int primary key auto_increment,
        title varchar(100),
        description text,
        image varchar(200),
        trailer varchar(150),
        category varchar(50),
        length varchar (50),
        users_idusers Int,
        foreign key (users_idusers) references users(idusers));
        
create table reviews (
	idreviews Int primary key auto_increment,
    rating int,
    review TEXT,
    users_idusers int,
    movies_idmovies int,
    foreign key (users_idusers) references users(idusers),
    foreign key (movies_idmovies) references movies(idmovies));