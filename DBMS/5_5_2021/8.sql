declare 
	
begin
	DBMS_OUTPUT.PUT_LINE('odd numbers are : ');
	for c in 1..100
	loop
		if mod(c,2)!=0 then
			DBMS_OUTPUT.PUT_LINE(c);
		end if;
	end loop;

end;
/