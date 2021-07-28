create or replace function no_of_emp return number 
as
	no number;
begin
	select count(*) into no from emp;
	return no;
end;
/