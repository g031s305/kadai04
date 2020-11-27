create table users(
    id int not null primary key ,--ユーザーID 
    password varchar(10) , --パスワード 
    name varchar(80)  --ユーザー名
);

create table lists(
    index serial not null primary key , --通し番号
    id int , --ユーザーID
    listid int , --リストID
    listname varchar(10)  --リスト名 
);

create table contents(
    index serial not null primary key , --通し番号
    id int , --ユーザーID
    listid int , --リストID 
    contentid int , --コンテンツID 
    contentname varchar(80) , --コンテンツ名 
    deadline date , --期限
    status bit --ステータス 
);

create table reminds(
    index serial not null primary key , --通し番号
    id int , --ユーザーID
    listid int , --リストID 
    contentid int , --コンテンツID  
    remind date --通知日
);