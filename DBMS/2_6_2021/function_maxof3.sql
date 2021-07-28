create or replace function fn_maxof3(x number,y number,z number) return number 
as

begin
    
    If x>y and x>z Then
        return x ;
    Elsif y>x and y>z Then
        return y ;
    Else
        return z ;
    End If;

end;
/