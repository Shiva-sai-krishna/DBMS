declare 
    n number(10);
    r number(20);
begin
    n := &number;
    r := fn_sumofnumbers(n);
    dbms_output.put_line('sum of numbers upto '||n||' is '||r);
end;
/