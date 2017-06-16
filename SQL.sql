CREATE TABLE  user (
  user_id int(10) ,
  username varchar(50),
  password varchar(50),
  is_enabled boolean default 0,
  register_date date,
  name varchar(30),
  surname varchar(30),
  email varchar(50),
  phone varchar(50)
  ) ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
  INSERT INTO user VALUES(1, 'bsbruno', 'bsbeirao123', true, now(), 'Bruno', 'Beirao', 'bsbeirao@gmail.com', '48995522111');
  INSERT INTO user VALUES(2, 'albertos', 'albertosouza5', true, now(), 'Alberto', 'Souza', 'albertos@gmail.com', '4834225522');
  INSERT INTO user VALUES(3, 'navarros', 'navarro99', true, now(), 'Navarro', 'Silva', 'navarros@gmail.com', '1155221100');
  INSERT INTO user VALUES(4, 'carlosaraujo', 'carlosaraujo1', false, now(), 'Carlos', 'Araujo', 'carlosaraujo1@gmail.com', '4888441144');
  INSERT INTO user VALUES(5, 'souza12', 'bsouza123', false, now(), 'Bruno', 'Souza', 'brunosouza94@gmail.com', '485851122');
