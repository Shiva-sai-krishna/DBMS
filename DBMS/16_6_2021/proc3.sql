create or replace procedure proc3 as
	dno dept.deptno%type;
	dpname dept.dname%type;
	c number;
	cursor cur1 is select deptno,dname from dept;
begin
	select count(*) into c from dept;
	dbms_output.put_line(chr(9)||chr(9)||chr(9)||'EMPLOYEE and DEPARTMENT DETAILS'||chr(10));
	dbms_output.put_line('--------------------------------------------------------------------'||chr(10));
	select count(*) into c from emp;
	dbms_output.put_line('Number of employees : '||c||chr(10));
	select sum(sal) into c from emp;
	dbms_output.put_line('Total Salary of All Employees : '||c||chr(10));
	dbms_output.put_line('deptno'||chr(9)||chr(9)||'Total salary'||chr(10));
	for row in cur1 loop
		select sum(sal) into c from emp
		where deptno=row.deptno;
		dbms_output.put_line(row.deptno||chr(9)||chr(9)||c);
	end loop;
	dbms_output.put_line('--------------------------------------------------------------------'||chr(10));	
	dbms_output.put_line(chr(9)||chr(9)||chr(9)||'END'||chr(10));
end;
/