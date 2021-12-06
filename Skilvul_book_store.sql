--- Create Database ---
create database skilvulbookstore;

--- Use Database ---
use skilvulbookstore;

--- Create Table ---
create table penerbit (id int not null auto_increment primary key,
    -> nama varchar(50),
    -> kota varchar(50) 
    -> );

--- Create Table ---
create table penulis (id int(10) not null auto_increment primary key,
    -> nama varchar(50),
    -> kota varchar(50)
    -> );

--- Create Table ---
create table buku ( id int not null auto_increment, 
    ->     ISBN varchar(50), 
    ->     judul varchar(50), 
    ->     harga int, 
    ->     stock int, 
    ->     penulis int, 
    ->     penerbit int, 
    ->     foreign key (penulis) references penulis(id),  
    ->     foreign key (penerbit) references penerbit(id) ,
    ->     constraint pk_buku primary key (id) );

--- Insert ke tabel penulis---
INSERT INTO `penulis` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'Saka', 'Bandung'), 
    (NULL, 'Saku', 'Bogor'),
    (NULL, 'Sake', 'Sumedang'),
    (NULL, 'Saki', 'Tasik'), 
    (NULL,'Sako', 'Garut'), 
    (NULL, 'Sakeu', 'Cimahi');


---insert ke tabel penerbit ---
INSERT INTO `penerbit` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'Kora', 'Jakarta'), 
    (NULL, 'Kori', 'Denpasar'), 
    (NULL, 'Koru', 'Gresik'), 
    (NULL, 'Kore', 'Makasar'),
    (NULL, 'Koreu', 'Lampung'),


--- insert  ke tabel buku---
INSERT INTO `buku` (`id`, `ISBN`, `judul`, `harga`, `stock`, `penulis`, `penerbit`) VALUES 
    (NULL, '22', 'Kampungan', '55000', '5', '2', '3'), 
    (NULL, '23', 'Perkotaan', '49000', '10', '2', '3'), 
    (NULL, '24', 'Perpindahan', '34000', '7', '2', '3'), 
    (NULL, '25', 'Tertinggal', '79000', '12', '2', '3');

--- join ---
SELECT *
FROM buku
INNER JOIN penerbit
ON buku.id = penerbit.id;

--- left ---
SELECT *
FROM buku
LEFT JOIN penerbit
ON buku.id = penerbit.id;

--- right ---
SELECT *
FROM buku
RIGHT JOIN penerbit
ON buku.id = penerbit.id;

--- max ---
SELECT MAX(harga)
FROM buku
WHERE stock < 20;

--- min ---
SELECT MIN(harga)
FROM buku;

--- count ---
SELECT COUNT(harga)
FROM buku
WHERE harga < 15000;