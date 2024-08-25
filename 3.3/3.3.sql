CREATE TABLE khach_hang (
  	id int,
  	ten varchar(255),
	PRIMARY KEY (id)
);



CREATE TABLE tai_khoan (
	id int,
	so_du decimal,
    id_khach int,
	PRIMARY KEY (id),
    FOREIGN KEY (id_khach) REFERENCES khach_hang(id)
);