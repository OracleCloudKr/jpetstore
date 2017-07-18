alter session set container = pdb1;
create user USER2 identified by welcome1;
grant connect, resource, CREATE SESSION ,CREATE TABLE ,CREATE SEQUENCE ,CREATE VIEW to USER2;
alter user USER2 DEFAULT TABLESPACE USERS quota unlimited on USERS;
