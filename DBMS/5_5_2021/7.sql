declare 
	i number:=10;
begin
	DBMS_OUTPUT.PUT_LINE('USING LOOP');
	loop
		DBMS_OUTPUT.PUT_LINE(i);
		i:=i-1;
		exit when i<1;
	end loop;

	DBMS_OUTPUT.PUT_LINE('USING FOR LOOP');
	for c in reverse 1..10
	loop
		DBMS_OUTPUT.PUT_LINE('number is : '|| c);
	end loop;

	
	DBMS_OUTPUT.PUT_LINE('USING WHILE LOOP');
	i:=10;
	while(i>0)
	loop
		DBMS_OUTPUT.PUT_LINE('number is : '|| i);
		i:=i-1;
	end loop;
end;
/