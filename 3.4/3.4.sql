CREATE TABLE giao_vien (
  	id int,
  	ten varchar(255),
	PRIMARY KEY (id)
);



CREATE TABLE hoc_sinh (
	id int,
	ten varchar(255),
    id_giao_vien int,
	PRIMARY KEY (id),
    FOREIGN KEY (id_giao_vien) REFERENCES giao_vien(id)
);