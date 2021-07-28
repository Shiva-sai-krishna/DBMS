declare 
	i number:=0;
begin
	
	for c in 1..100
	loop
		if mod(c,2)!=1 then
			i:=i+c;
		end if;
	end loop;
	DBMS_OUTPUT.PUT_LINE('sum is: ' ||i);

end;
/