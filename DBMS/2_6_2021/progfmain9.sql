declare
	a number(5);
	n number(10);
begin
	n:= &number;
	a:=funcount(n);
	dbms_output.put_line('Number of employees in department '||a);
end;
/