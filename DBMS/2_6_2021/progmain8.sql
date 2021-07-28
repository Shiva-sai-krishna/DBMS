declare
	a number(5);
begin
	
	a:=func_count();
	dbms_output.put_line('Number of depatments in department table '||a);
end;
/