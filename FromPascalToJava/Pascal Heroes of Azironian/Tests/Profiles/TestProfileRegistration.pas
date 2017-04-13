var f: Text;
name: string; 
triggerRegistration: boolean;
begin
triggerRegistration := false;
Read(name);
try 
begin
assign(f, name + '.hoa');
Reset(f);
end;
except begin
Rewrite(f);
f.Writeln(name);
f.Writeln ('1/0');
f.Writeln(0);
f.Writeln(0);
f.Writeln(0);
f.Writeln(0);
f.Writeln(0);
end;
CloseFile(f);
Writeln('Регистрация прошла успешно');
end;
end. 