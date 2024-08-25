CREATE TABLE nguoi (
  	id int,
  	ten varchar(255),
	PRIMARY KEY (id)
);



CREATE TABLE so_dien_thoai (
	id int,
	so varchar(255),
    id_nguoi int,
	PRIMARY KEY (id),
    FOREIGN KEY (id_nguoi) REFERENCES nguoi(id)
);

CREATE TABLE email (
	id int,
	email varchar(255),
	id_nguoi int,
	PRIMARY KEY (id),
    FOREIGN KEY (id_nguoi) REFERENCES nguoi(id)

);