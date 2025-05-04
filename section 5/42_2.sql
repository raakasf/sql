-- case statement
declare
   v_job_code        varchar2(10) := 'IT_PROG';
   v_department      varchar2(10) := 'IT';
   v_salary_increase number;
begin
   case
      when v_job_code = 'SA_MAN' then
         v_salary_increase := 0.2;
         dbms_output.put_line('The salary increase for a Sales Manager is: ' || v_salary_increase);
      when
         v_department = 'IT'
         and v_job_code = 'IT_PROG'
      then
         v_salary_increase := 0.2;
         dbms_output.put_line('The salary increase for a Sales Manager is: ' || v_salary_increase);
      else
         v_salary_increase := 0;
         dbms_output.put_line('The salary increase for this job code is: ' || v_salary_increase);
   end case;
end;
