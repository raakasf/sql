declare
   v_number      binary_integer not null := 50;
   v_number_1    binary_float not null := 50.42f;
   v_date        date not null := sysdate;
   v_timestamp   timestamp not null := systimestamp;
   v_timestamp_z timestamp with time zone not null := systimestamp;
   v_interval    interval day ( 4 ) to second ( 2 ) := '24 02:05:21.012';
   v_interval_1  interval year ( 3 ) to month := '122-3';
--    v_bool        boolean := true;
begin
   dbms_output.put_line(v_number || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_number_1 || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_date || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_timestamp || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_timestamp_z || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_interval || ' BEGINNER TO ADVANCED');
   dbms_output.put_line(v_interval_1 || ' BEGINNER TO ADVANCED');
--    dbms_output.put_line(v_bool || ' BEGINNER TO ADVANCED');
end;
