desc hr.EMPLOYEES;
declare
   v_type  hr.employees.job_id%type;
   v_type2 v_type%type;
   v_type3 hr.employees.job_id%type;
begin
   v_type := 'IT_PROG'; --'ADMINISTRATOR';
   v_type2 := 'SA_MAN';
   v_type3 := null;
   dbms_output.put_line(v_type);
   dbms_output.put_line(v_type2);
   dbms_output.put_line(v_type3 || 'HELLO');
end;
