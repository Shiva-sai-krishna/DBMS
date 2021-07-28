DECLARE
	d Number;
	e number;
	president emp.ename%type;
	dmax number;
	dmin number;
Begin
	dbms_output.put_line('                           EMPLOYEE SUMMARY DETAILS');
	dbms_output.put_line('-------------------------------------------------------------------------------');

	d:=func_12(d,e,president,dmax,dmin);

	dbms_output.put_line('                  Number of Departments:  '||d);
	dbms_output.put_line('                  Number of Employees:    '||e);
	dbms_output.put_line('                  Name of the President:   '||president);
	dbms_output.put_line('                  Department Number(Max. no of Employees): '||dmax);
	dbms_output.put_line('                  Department Number(Min. no of Employees): '||dmin);
END;
/