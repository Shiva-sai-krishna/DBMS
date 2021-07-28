declare
    cursor emp_recs is select * from emp order by sal desc;     
    emp_row emp_recs%rowtype;

begin
    open emp_recs;

    loop 
        fetch emp_recs into emp_row;
        exit when emp_recs%rowcount=6;
        dbms_output.put_line(emp_recs%rowcount||'    '||emp_row.empno||'   '
        ||emp_row.ename||'    '||emp_row.job||'    '||emp_row.sal||'    '
        ||emp_row.mgr||'    '||emp_row.hiredate||'    '||emp_row.deptno
        ||'    '||emp_row.comm);
    end loop;

    close emp_recs;

end;
/