create or replace function fn_sumofnumbers(n number) return number as

    s number(20) := 0;

begin 
    
    for i in 1..n
    loop
        s := s+i ;
    end loop;
    return s;

end;
/
     