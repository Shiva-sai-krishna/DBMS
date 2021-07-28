create or replace function fn_factorial(n number) return number as

    pro number(20) := 1;

begin 
    
    for i in 1..n
    loop
        pro := pro * i;
    end loop;
    return pro;
end;
/
     