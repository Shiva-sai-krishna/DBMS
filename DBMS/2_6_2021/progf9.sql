CREATE OR REPLACE Function funcount(n number) return number as
	cursor cur_dept is select * from emp where deptno=n;
	no cur_dept%rowtype;
begin
	
	open cur_dept;
	loop
		fetch cur_dept into no;
		exit when cur_dept%notfound;
	end loop;
	return cur_dept%rowcount;
	close cur_dept;
end;
/