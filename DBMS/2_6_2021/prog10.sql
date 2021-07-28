create or replace procedure pro_name(n number)  
AS
	cursor cu_emp is select ename from emp where empno=n;
	name cu_emp%rowtype;
begin
	
	open cu_emp;
	loop
		fetch cu_emp into name;
		exit when cu_emp%notfound;
	end loop;
	dbms_output.put_line(cu_emp);
	close cu_emp;
	
end;
/