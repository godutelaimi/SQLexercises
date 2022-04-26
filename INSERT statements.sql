use moviecatalogue;

INSERT INTO actor ( ActorID, FirstName, LastName, BirthDate ) VALUES 

('1','Bill','Murray', '1950/09/21'),
('2','Dan', 'Aykroyd', '1952/07/01'),
('3','John', 'Candy', '1950/10/31'),
('4','Steve', 'Martin', '0000/00/00'),
('5','Sylvester', 'Stallone', '0000/00/00');

INSERT INTO director ( DirectorID, FirstName, LastName, BirthDate ) VALUES 
('1','Ivan', 'Reitman', '1946/10/27'),
('2','Ted', 'Kotcheff', '0000/00/00');
 
INSERT INTO rating ( RatingID, RatingName) VALUES 
('1','G'),
('2','PG'),
('3','PG-13'),
('4','R');

INSERT INTO genre ( GenreID, GenreName) VALUES 
('1','Action'),
('2','Comedy'),
('3','Drama'),
('4','Horror');

INSERT INTO movie ( MovieID, GenreID, DirectorID, RatingID, Title, ReleaseDate ) VALUES 

('1','1','2', '4', 'Rambo: First Blood', '1982/10/22'),
('2','2', '0', '4', 'Planes, Trains & Automobiles', '1987/11/25'),
('3','2', '1', '2', 'Ghostbusters', '0000/00/00'),
('4','2', '0', '2', 'The Great Outdoors', '1988/06/17');

INSERT INTO Cast_Member ( CastMemberID, ActorID, MovieID, Role) VALUES 

('1','5','1', 'John Rambo'),
('2','4', '2', 'Neil Page'),
('3','3', '2', 'Del Griffith'),
('4','1', '3', 'Dr. Peter Venkman'),
('5','2', '3', 'Dr. Raymond Stanz'),
('6','2', '4', 'Roman Craig' ),
('7','3', '4', 'Chet Ripley');





       


