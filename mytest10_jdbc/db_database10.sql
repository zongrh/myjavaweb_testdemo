create table mytest_user
(
  id   varchar(32) not null
    primary key,
  name varchar(20) null,
  sex  varchar(20) null,
  age  int(20)     null
)
  charset = utf8;

create table tb_books
(
  id        int(3) unsigned zerofill auto_increment
    primary key,
  name      varchar(255)  null,
  price     double(10, 2) null,
  bookCount int(255)      null,
  author    varchar(255)  null
);

create table tb_product
(
  id    int unsigned auto_increment,
  name  varchar(45)  not null,
  price double       not null,
  num   int unsigned not null,
  unit  varchar(45)  not null,
  primary key (id, name)
)
  engine = MyISAM
  charset = utf8;

create table tb_student_batch
(
  id   int unsigned auto_increment
    primary key,
  name varchar(45) charset utf8 not null,
  sex  varchar(3) charset utf8  not null,
  age  int unsigned             not null
);

create table user_tab
(
  uid       int(32) auto_increment
    primary key,
  uname     varchar(32) null,
  upassword varchar(32) null
);

