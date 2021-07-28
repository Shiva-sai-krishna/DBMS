declare 
	i number(10);
	r number:=1;
	c number:=0;
begin
	i:=&number1;
	while(i>=1)
	loop
		r:=mod(i,10);
		c:=c+r;
		i:=i/10-(r/10);	
		
	end loop;
	DBMS_OUTPUT.PUT_LINE('sum of digits are '|| c);

end;
/