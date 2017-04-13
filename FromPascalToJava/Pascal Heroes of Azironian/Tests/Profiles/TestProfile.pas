var f: Text;
name: string; 
begin
Read(name);
assign(f, name + '.txt');
Rewrite(f);




//  AssignFile(f,'StarKRE.hoa');
//  Reset(f);
//  while not Eof(f) do begin
//  readln (f, s);
//  Writeln(s);
//  end;
//  CloseFile(f);
end. 