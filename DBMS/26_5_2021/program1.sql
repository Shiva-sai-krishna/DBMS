Declare
         No number(10);
		 Name varchar2(50);
		 Sal number(20);
Begin
      select deptno,ename,sal into No,Name,Sal from emp where empno=7839;
	  dbms_output.put_line(' ');
	  dbms_output.put_line(No||'   '||Name||'    '||Sal);
end;
/