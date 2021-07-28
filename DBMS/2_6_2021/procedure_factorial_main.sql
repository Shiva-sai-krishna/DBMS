declare 
    n number(10);
    r number(20);
begin
    n := &number;
    proc_factorial(n,r);
    dbms_output.put_line('Factorial of '||n||' is '||r);
end;
/