declare 
    n number(10);
    r number(20);
begin
    n := &number;
    r := fn_factorial(n);
    dbms_output.put_line('Factorial of '||n||' is '||r);
end;
/