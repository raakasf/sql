/* 
loops:
  - Basic Loops  
*/
declare
   v_counter number(2) := 1;
begin
   loop
      dbms_output.put_line('My counter is : ' || v_counter);
      v_counter := v_counter + 1;
      exit when v_counter > 10;
   end loop;
end;
