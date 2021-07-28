Declare 
    num1 number(10) ;
    num2 number(10) ;
    num3 number(10) ;
    num number(10) ;

Begin
    num1 := &firstnumber;
    num2 := &secondnumber;
    num3 := &thirdnumber;
    num := fn_maxof3(num1,num2,num3);
    dbms_output.put_line('Max of 3 numbers is '||num);

end;
/