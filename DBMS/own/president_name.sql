create or replace function president_name return emp.ename%type
as
	name emp.ename%type;
begin
	select ename into name from emp where job='PRESIDENT' ;
	return name;
end;
/