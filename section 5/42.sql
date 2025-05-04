-- simple case statement
declare
   v_job_code        varchar2(10) := 'SA_MAN';
   v_salary_increase number;
begin
   v_salary_increase :=
      case v_job_code
         when 'SA_MAN' then
            0.2
         when 'SA_REP' then
            0.3
         else 0
      end;
   dbms_output.put_line('Salary increase for '
                        || v_job_code
                        || ' is '
                        || v_salary_increase);
end;
