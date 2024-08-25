CREATE TABLE tac_gia (
  	id int,
  	ten varchar(255),
	PRIMARY KEY (id)
);


CREATE TABLE nhan_vien (
	id int,
	ten varchar(255),
	dia_chi varchar(255),
	PRIMARY KEY (id)
);

CREATE TABLE sach (
	id int,
	ten varchar(255),
	id_tac_gia int,
	PRIMARY KEY (id),
    FOREIGN KEY (id_tac_gia) REFERENCES tac_gia(id)

);

CREATE TABLE nhan_vien_sach (
	id_sach int,
	id_nhan_vien int,
	PRIMARY KEY (id_sach, id_nhan_vien),
    FOREIGN KEY (id_sach) REFERENCES sach(id),
    FOREIGN KEY (id_nhan_vien) REFERENCES nhan_vien(id)
);

