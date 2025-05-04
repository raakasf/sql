variable var_sql number;

begin
   :var_sql := '100';
end;
select *
  from hr.employees
 where employee_id = :var_sql;
