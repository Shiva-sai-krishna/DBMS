declare 
    n number(10);
    r number(20);
begin
    n := &number;
    proc_sumofnumbers(n,r);
    dbms_output.put_line('sum of numbers upto '||n||' is '||r);
end;
/