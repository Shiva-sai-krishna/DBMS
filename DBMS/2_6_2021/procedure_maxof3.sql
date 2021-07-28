create or replace procedure proc_maxof3(x number,y number,z number,r out number) 
as

begin
    
    If x>y and x>z Then
        r := x ;
    Elsif y>x and y>z Then
        r := y ;
    Else
        r := z ;
    End If;

end;
/