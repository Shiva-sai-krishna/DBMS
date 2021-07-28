declare 
	i number(10);
	r number:=1;
	c number:=0;
begin
	i:=&number1;
	while(r>=1)
	loop
		r:=i/10;
		c:=c+1;
		i:=i/10;	
		
	end loop;
	DBMS_OUTPUT.PUT_LINE('Number of digits are '|| c);

end;
/