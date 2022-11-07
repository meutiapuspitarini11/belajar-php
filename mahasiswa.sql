CREATE DATABASE fakultas;

CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

CREATE TABLE mahasiswa(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL, 
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki', 'perempuan') NOT NULL, 
    tempat_lahir  VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan(id)
);

-- insert jurusan
insert into jurusan(kode, nama) values ("ILPOL", "Ilmu Politik");

-- insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) value (1, "20220001", "Meutia", "perempuan", "Purworejo", "2001-07-11", "Papan Mas Blok G 53 No 5");

-- update mahasiswa
update mahasiswa set alamat = "Papan Mas Blok G 53 No 5" where id = 1;

-- delete mahasiswa
delete from mahasiswa where id = 2;