/*
	for loops
*/
begin
--    for i in 1..3 loop
--       dbms_output.put_line('My counter is : ' || i);
--    end loop;
   for i in reverse 1..3 loop
      dbms_output.put_line('My counter is : ' || i);
   end loop;
end;
