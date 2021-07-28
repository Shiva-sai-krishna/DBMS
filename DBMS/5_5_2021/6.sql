declare 
	i number:=1;
begin
	DBMS_OUTPUT.PUT_LINE('USING LOOP');
	loop
		DBMS_OUTPUT.PUT_LINE(i);
		i:=i+1;
		exit when i>10;
	end loop;

	DBMS_OUTPUT.PUT_LINE('USING FOR LOOP');
	for c in 1..10
	loop
		DBMS_OUTPUT.PUT_LINE('number is : '|| c);
	end loop;

	
	DBMS_OUTPUT.PUT_LINE('USING WHILE LOOP');
	i:=1;
	while(i<=10)
	loop
		DBMS_OUTPUT.PUT_LINE('number is : '|| i);
		i:=i+1;
	end loop;
end;
/