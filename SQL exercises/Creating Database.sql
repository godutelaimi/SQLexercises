CREATE DATABASE IF NOT EXISTS MovieCatalogue;

USE MovieCatalogue;

CREATE TABLE GENRE (
	GenreID int not null auto_increment,
	GenreName varchar(30) not null,
    PRIMARY KEY (GenreID)
);

CREATE TABLE RATING (
	RatingID int not null auto_increment,
	RatingName varchar(5) not null,
    PRIMARY KEY (RatingID)
);

CREATE TABLE DIRECTOR (
	DirectorID int not null auto_increment,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	BirthDate date null,
    PRIMARY KEY (DirectorID)
);

CREATE TABLE ACTOR (
	ActorID  int not null auto_increment,
	FirstName varchar(30) not null,
	LastName varchar(30) not null,
	BirthDate date null,
    PRIMARY KEY (ActorID)
);

CREATE TABLE MOVIE (
	MovieID int not null auto_increment,
	GenreID int not null,
	DirectorID int null,
	RatingID int null,
	Title varchar(128) not null,
	ReleaseDate date null,
    PRIMARY KEY (MovieID)
);


ALTER TABLE MOVIE
 ADD CONSTRAINT fk_MovieGenre FOREIGN KEY (GenreID) REFERENCES GENRE
(GenreID) ON DELETE NO ACTION;
ALTER TABLE MOVIE
 ADD CONSTRAINT fk_MovieDirector FOREIGN KEY (DirectorID) REFERENCES DIRECTOR
(DirectorID) ON DELETE NO ACTION;
ALTER TABLE MOVIE
 ADD CONSTRAINT fk_MovieRating FOREIGN KEY (RatingID) REFERENCES RATING
(RatingID) ON DELETE NO ACTION;

CREATE TABLE IF NOT EXISTS CAST_MEMBER (
	CastMemberID int not null auto_increment,
	ActorID int not null,
	MovieID int not null,
	Role varchar(50) not null,
    PRIMARY KEY (CastMemberID)
);

ALTER TABLE CAST_MEMBER
 ADD CONSTRAINT fkCastMemberActor FOREIGN KEY (ActorID) REFERENCES ACTOR
(ActorID) ON DELETE NO ACTION;


ALTER TABLE CAST_MEMBER
 ADD CONSTRAINT fkCastMemberMovie FOREIGN KEY (MovieID) REFERENCES MOVIE
(MovieID) ON DELETE NO ACTION;

    
