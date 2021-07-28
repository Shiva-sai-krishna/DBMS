Create or replace trigger emp_trigger

After insert on emp

For each row


Declare

Begin 


dbms_output.put_line('you have inserted 1 row'); 

End;

/