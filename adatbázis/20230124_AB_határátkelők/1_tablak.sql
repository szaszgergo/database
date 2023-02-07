CREATE TABLE hataratkelo_hatar (
  az int PRIMARY KEY AUTO_INCREMENT NOT NULL,
  magyarh varchar(50)  NOT NULL,
  szomszedh varchar(50) NOT NULL,
  orszag varchar(50) NOT NULL,
  tipus varchar(20) NOT NULL
);

CREATE TABLE hataratkelo_telepules (
  nev varchar(50) PRIMARY KEY NOT NULL,
  tipus varchar(20) NOT NULL,
  megye varchar(25) NOT NULL  
);