declare
name emp.ename%type;
begin
	select ename into name from emp
	where sal = (select max(sal) from emp);
	dbms_output.put_line(chr(9)||chr(9)||chr(9)||'EMPLOYEE DETAILS');
	dbms_output.put_line('------------------------------------------------------------');
	dbms_output.put_line('Number of Employees : '||no_of_emp());
	dbms_output.put_line('Name of President : '||president_name());
	dbms_output.put_line('Name of Employee with highest salary : '||name);	
	select ename into name from emp
	where sal = (select min(sal) from emp);
	dbms_output.put_line('Name of Employee with lowest salary : '||name);	
	select ename into name from emp
	where hiredate = (select min(hiredate) from emp);
	dbms_output.put_line('Name of Employee most seinor : '||name);
	select ename into name from emp
	where hiredate = (select max(hiredate) from emp);
	dbms_output.put_line('Name of Employee most juinor : '||name);
	dbms_output.put_line('------------------------------------------------------------');
	dbms_output.put_line(chr(9)||chr(9)||chr(9)||'END');		
end;
/