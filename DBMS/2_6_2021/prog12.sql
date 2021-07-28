create or replace function func_12(d out Number, e out number, president out varchar2, max out number, min out number) return number
AS
Begin
	select count(distinct deptno) into d from emp;
	select count(empno) into e from emp;
	select ename into president from emp where mgr IS NULL;

	select deptno into max from emp
	group by deptno
	having count(empno) >= ALL(select count(empno) from emp group by deptno);
	
	select deptno into min from emp
	group by deptno
	having count(empno) <= ALL(select count(empno) from emp group by deptno);
	
	return d;
END;
/