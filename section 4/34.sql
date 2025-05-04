declare
   v_text varchar2(10) := 'PL/SQL';
begin
-- This is a single line comment
/* This is a
   multi line 
   comment */
   dbms_output.put_line(v_text || ' is a good language');
   -- null;
end;
