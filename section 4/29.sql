declare
   v_text     varchar2(50) not null := 'WELCOME';--'HELLO WORLD';
   v_number   number(4) not null := 50.42;
   v_number_1 number(
      10,
      5
   ) not null := 50.42;
begin
--    v_text := 'PL/SQL' || ' COURSE';
   dbms_output.put_line(v_text || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_number || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_number_1 || ' BEGINNER TO ADVANCED');
end;
