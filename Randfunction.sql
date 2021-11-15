select dbms_random.random from dual;

select dbms_random.value from dual;

select dbms_random.value(1,10) from dual;

select round(dbms_random.value(1,10) ) from dual;
/*
'u', 'U' - returning string in uppercase alpha characters
'l', 'L' - returning string in lowercase alpha characters
'a', 'A' - returning string in mixed case alpha characters
'x', 'X' - returning string in uppercase alpha-numeric characters
'p', 'P' - returning string in any printable characters.
*/

select dbms_random.STRING('L',7) from dual;

select dbms_random.STRING('U',10) from dual;

select dbms_random.STRING('U',10) from dual;

select dbms_random.STRING('X',20) from dual;

select dbms_random.STRING('P',20) from dual;



insert into etudiant 
	select round(dbms_random.value(20,40) ) , 
	dbms_random.STRING('L',7) , 
	dbms_random.STRING('L',7) 
from dual ;



SET SERVEROUTPUT ON
BEGIN
DBMS_OUTPUT.put_line('Test remplire table hhhh ');
FOR i IN 1 ..300 
LOOP
insert into etudiant
select round(dbms_random.value(10000,100000) ) ,
dbms_random.STRING('L',4) ,
dbms_random.STRING('L',4)
from dual ;
END LOOP;
DBMS_OUTPUT.put_line('safi 3mre  hhhh ');
END;
/