declare
   sal number;
   gross number;
begin
   sal:=&salary;
   if(sal<=10000) then
      gross:=sal+(0.2*sal)+(0.8*sal);
   elsif(sal<=20000) then
      gross:=sal+(0.25*sal)+(0.9*sal);
   else
      gross:=sal+(0.3*sal)+(0.95*sal);
   end if;
   dbms_output.put_line('Gross salary of employee is '||gross);
end;
/