create or replace procedure proc_sumofnumbers(n number,r out number) as

    s number(20) := 0;

begin 
    
    for i in 1..n
    loop
        s := s+i ;
    end loop;
    r := s;

end;
/
     