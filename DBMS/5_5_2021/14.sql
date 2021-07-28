declare 
	i number(10);
	r number:=1;
	c number:=0;
	s1 varchar2(10);
	s2 varchar2(10);
begin
	i:=&number1;
	s1:='';
	s2:=''||i;
	while(i>=1)
	loop
		r:=mod(i,10);
		
		i:=i/10-(r/10);
		
		s1:=s1||r;
	end loop;
	If s1=s2 then
		DBMS_OUTPUT.PUT_LINE('Palindrome');
	else
		DBMS_OUTPUT.PUT_LINE('Not Palindrome');
	end if;

end;
/