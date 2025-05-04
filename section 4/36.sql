declare
   v_outer varchar2(50) := 'Outer!';
begin
   declare
      v_inner varchar(30) := 'Innver variable';
   begin
      dbms_output.put_line('inside -> ' || v_outer);
      dbms_output.put_line('inside_inner -> ' || v_inner);
   end;
--    dbms_output.put_line('outside_inner -> ' || v_inner);
   dbms_output.put_line(v_outer);
end;
