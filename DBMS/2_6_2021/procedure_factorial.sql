create or replace procedure proc_factorial(n number,r out number) as

    pro number(20) := 1;

begin 
    
    for i in 1..n
    loop
        pro := pro * i;
    end loop;
    r := pro;
end;
/
     