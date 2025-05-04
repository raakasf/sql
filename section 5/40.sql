declare
   v_number number := null; --30;
begin
   if v_number < 10 then
      dbms_output.put_line('Number is less than 10');
   elsif v_number < 20 then
      dbms_output.put_line('Number is less than 20');
   elsif v_number < 30 then
      dbms_output.put_line('Number is less than 30');
   else
      if v_number is null then
         dbms_output.put_line('Number is null');
      else
         dbms_output.put_line('Number is not null');
      end if;
      dbms_output.put_line('Number is greater than or equal to 30');
   end if;
end;
