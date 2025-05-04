   SET SERVEROUTPUT ON;
begin
   dbms_output.put_line('HELLO WORLD');
   begin
      dbms_output.put_line('PL/SQL');
   end;
end;
