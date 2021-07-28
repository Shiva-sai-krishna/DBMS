create or replace procedure proc2 as
	dno dept.deptno%type;
	dpname dept.dname%type;
	c number;
	cursor cur1 is select deptno,dname from dept;
begin
	select count(*) into c from dept;
	dbms_output.put_line(chr(9)||chr(9)||chr(9)||'EMPLOYEE and DEPARTMENT DETAILS');
	dbms_output.put_line('--------------------------------------------------------------------');
	dbms_output.put_line('no of depts : '||c);
	dbms_output.put_line('department no'||chr(9)||chr(9)||'department name');
	for row in cur1 loop
		dbms_output.put_line(row.deptno||chr(9)||chr(9)||row.dname);
	end loop;
	dbms_output.put_line(chr(10)||'number of employees in each dept');
	dbms_output.put_line('department no'||chr(9)||chr(9)||'no of emps');
	for row in cur1 loop
		select count(*) into c from emp
		where deptno=row.deptno;
		dbms_output.put_line(row.deptno||chr(9)||chr(9)||c);
	end loop;
	dbms_output.put_line('--------------------------------------------------------------------');	
	dbms_output.put_line(chr(9)||chr(9)||chr(9)||'END');
end;
/