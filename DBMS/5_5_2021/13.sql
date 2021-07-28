declare 
	i number(10);
	r number:=1;
	c number:=0;
	s varchar2(10);
begin
	i:=&number1;
	s:='';
	while(i>=1)
	loop
		r:=mod(i,10);
		i:=i/10-(r/10);
		
		s:=s||r;
	end loop;
	DBMS_OUTPUT.PUT_LINE('Reversed number is '|| s);

end;
/