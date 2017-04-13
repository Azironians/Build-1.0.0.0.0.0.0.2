var f: Text;
name: string;
s: string; 
begin
  Read(name);
  name := name + '.hoa';
  AssignFile(f, name);
  try
  Reset(f);
  while not Eof(f) do begin
  readln (f, s);
  Writeln(s);
  end;
  CloseFile(f);
  except Writeln('NoName');
  end;
end. 