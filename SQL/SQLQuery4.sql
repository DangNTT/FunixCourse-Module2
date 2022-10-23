use MicosoftSQL1;
create sequence test as int
start with 1 increment By 1
minvalue 1 
maxvalue 10
no cycle
cache 10;

create sequence happy
start with 1
increment by 1;