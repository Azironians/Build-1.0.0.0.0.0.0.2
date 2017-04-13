//Авторизация:
var f: Text;
name: string;
s: string; 
triggerStrProfile: byte;
triggerInit: longint;
trueProfile: boolean;
begin
  Read(name);
  name := name + '.hoa';
  trueProfile := true;
  try
  AssignFile(f, name);
  Reset(f);
  triggerStrProfile := 0;
  while not Eof(f) do begin
  readln (f, s);
  if (triggerStrProfile = 1) then begin
  var parts: array of string;
  parts := s.Split('/');
  if (parts[0].ToInteger > 20) then
  begin
  trueProfile := false;
  break;
  end;
  end;
  if (triggerStrProfile > 1) then begin
  triggerInit := s.ToInteger;
  end;
  triggerStrProfile := triggerStrProfile + 1;
  end;
  CloseFile(f);
  triggerStrProfile := 0;
  except trueProfile := false;
  end;
  if trueProfile = true then Writeln('Авторизация прошла успешно') else
  Writeln('Неверное имя пользователя');
end. 