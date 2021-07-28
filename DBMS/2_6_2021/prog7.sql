CREATE OR REPLACE PROCEDURE PROC_COUNT
AS
	cursor cur_emp is select * from emp;
	name cur_emp%rowtype;
begin
	
	open cur_emp;
	loop
		fetch cur_emp into name;
		exit when cur_emp%notfound;
	end loop;
	dbms_output.put_line('Number of employees in the employee table '||cur_emp%rowcount);
	close cur_emp;
end;
/