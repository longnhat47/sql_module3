CREATE TABLE hlv (
  	id int,
  	ten varchar(255),
    ngay_sinh datetime,
	PRIMARY KEY (id)
);

CREATE TABLE doi (
  	id int,
  	ten varchar(255),
	id_hlv int,
	PRIMARY KEY (id),
    FOREIGN KEY (id_hlv) REFERENCES hlv(id)
);

CREATE TABLE cau_thu (
  	id int,
  	ten varchar(255),
    ngay_sinh datetime,
	id_doi int,
	PRIMARY KEY (id),
    FOREIGN KEY (id_doi) REFERENCES doi(id)
);

CREATE TABLE vi_tri (
  	id int,
  	ten varchar(255),
	PRIMARY KEY (id)
);

CREATE TABLE cau_thu_vi_tri (
	id_cau_thu int,
	id_vi_tri int,
	PRIMARY KEY (id_cau_thu, id_vi_tri),
    FOREIGN KEY (id_cau_thu) REFERENCES cau_thu(id),
    FOREIGN KEY (id_vi_tri) REFERENCES vi_tri(id)
);


CREATE TABLE tran (
	id int,
    ngay datetime,
    doi_a int,
    doi_b int,
	PRIMARY KEY (id),
    FOREIGN KEY (doi_a) REFERENCES doi(id),
    FOREIGN KEY (doi_b) REFERENCES doi(id)
);

CREATE TABLE tran_dau_cau_thu (
	id_cau_thu int,
	id_tran int,
	PRIMARY KEY (id_cau_thu, id_tran),
    FOREIGN KEY (id_cau_thu) REFERENCES cau_thu(id),
    FOREIGN KEY (id_tran) REFERENCES tran(id)
);