begin
   << outer >> declare
      v_text varchar2(50) := 'Out-text!';
   begin
      declare
         v_text varchar2(50) := 'In-text!';
      begin
         dbms_output.put_line('inside_inner -> ' || v_text);
         dbms_output.put_line('inside_outer -> ' || outer.v_text);
      end;
      dbms_output.put_line('outside -> ' || v_text);
   end;
end outer;
