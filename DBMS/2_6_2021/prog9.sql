create or replace procedure pro_DEPTC(n number)  
AS
	cursor cu_emp is select * from emp where deptno=n;
	name cu_emp%rowtype;
begin
	
	open cu_emp;
	loop
		fetch cu_emp into name;
		exit when cu_emp%notfound;
	end loop;
	dbms_output.put_line('Number of employees in the department '||cu_emp%rowcount );
	close cu_emp;
	
end;
/