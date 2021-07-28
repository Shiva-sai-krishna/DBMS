declare 
	i number(10);
	r number:=1;
begin
	i:=&number1;
	for c in 1..10
	loop
		r:=i*c;
		DBMS_OUTPUT.PUT_LINE(i||'*'||c||'='||r);
	end loop;


end;
/