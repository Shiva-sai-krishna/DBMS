declare
    cursor emp_recs is select * from emp;     
    emp_row emp_recs%rowtype;

begin
    open emp_recs;

    loop 
        fetch emp_recs into emp_row;
        exit when emp_recs%notfound;
        dbms_output.put_line(emp_recs%rowcount||'    '||emp_row.empno||'   '||emp_row.ename||'    '||emp_row.job||'    '||emp_row.sal
	||'    '||emp_row.comm
        ||'    '||emp_row.hiredate||'    '||emp_row.deptno||'    '||emp_row.mgr);
    end loop;

    close emp_recs;

end;
/