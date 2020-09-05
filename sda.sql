create database cafedb;
use cafedb;
 
create table tblItems(ItmId int auto_increment ,primary key(ItmId) , itm_name varchar(50) , itm_price varchar(20));
create table tblRegister(RegId int auto_increment ,primary key(RegId) , Username varchar(50) , Pwd varchar(50));
create table tblOrder(OdrId int auto_increment ,primary key(OdrId), RegId int ,foreign key(RegId) references tblRegister(RegId) on delete cascade , ItmId int ,foreign key(ItmId) references tblItems(ItmId),quantity varchar(50),OdrDate date ,Total varchar(50));

create table tbladmin (admId int auto_increment,primary key(admId),adm_name varchar(50),pwd varchar(100));
insert into tbladmin(adm_name,pwd) VALUES ('admin','majucafe');
 
insert into tblItems(itm_name , itm_price) values('anda','10');
insert into tblItems(itm_name , itm_price) values('patt','50');
insert into tblItems(itm_name , itm_price) values('samosa','10');
insert into tblItems(itm_name , itm_price) values('Fries','50');
insert into tblItems(itm_name , itm_price) values('choco','30');
insert into tblItems(itm_name , itm_price) values('chat','30');
insert into tblItems(itm_name , itm_price) values('cake','300');
insert into tblItems(itm_name , itm_price) values('soup','80');
insert into tblItems(itm_name , itm_price) values('macaroni','120');
insert into tblItems(itm_name , itm_price) values('pasta','230');
insert into tblItems(itm_name , itm_price) values('bfburg','80');
insert into tblItems(itm_name , itm_price) values('chkburg','230');
insert into tblItems(itm_name , itm_price) values('kabab','40');
insert into tblItems(itm_name , itm_price) values('golgappa','60');
insert into tblItems(itm_name , itm_price) values('sandw','120');
insert into tblItems(itm_name , itm_price) values('tikka','130');
insert into tblItems(itm_name , itm_price) values('roll','110');
insert into tblItems(itm_name , itm_price) values('pepsi','90');
insert into tblItems(itm_name , itm_price) values('up','70');
insert into tblItems(itm_name , itm_price) values('dew','90');
insert into tblItems(itm_name , itm_price) values('singrice','320');
insert into tblItems(itm_name , itm_price) values('bfpulao','120');
insert into tblItems(itm_name , itm_price) values('biryani','120');
insert into tblItems(itm_name , itm_price) values('zingburg','300');
insert into tblItems(itm_name , itm_price) values('pizza','1000');
insert into tblItems(itm_name , itm_price) values('coffe','150');
insert into tblItems(itm_name , itm_price) values('tea','30');
insert into tblItems(itm_name , itm_price) values('paratha','25');
insert into tblItems(itm_name , itm_price) values('raita','30');
insert into tblItems(itm_name , itm_price) values('water','35');

select *from tblorder
where Odrdate='2017-12-17' and RegId='1';




select *from tblRegister;
insert into tblRegister(Username,Pwd)values('naveed','naveed123');



select *from tblItems;


select *from tblRegister;


