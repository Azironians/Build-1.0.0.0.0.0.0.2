uses graphABC;
var n: byte;
procedure MouseDown(x, y, mb: integer);
begin
if mb = 2 then 
begin
if (x>20) and (x<80) and (y>0) and (y<80) then n:=1;
end;
SetFontSize(10);
TextOut(20, 140, 'Pjsjsj');
end;
begin
SetWindowSize(200, 200);
Rectangle(20,20,80,80);
OnMouseDown := MouseDown ;
end.
