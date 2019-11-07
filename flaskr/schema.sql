drop table if exists user;
drop table if exists posts;

create table user(
    id integer primary key autoincrement,
    username text not null unique,
    password text not null
);

create table posts(
    id integer primary key autoincrement,
    author_id integer not null,
    created timestamp default current_timestamp,
    title text not null,
    body text not null,
    foreign key(author_id) references user(id)
);