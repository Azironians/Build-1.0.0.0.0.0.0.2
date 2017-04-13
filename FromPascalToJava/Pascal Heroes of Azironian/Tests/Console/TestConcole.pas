uses Timers, ABCObjects, GraphABC, ABCSprites, System.Media, System.Windows, System;
var sb: StringBuilder;
var PictConsole: PictureABC;
var WinAutorization: Picture;
var triggerConsole: boolean;
var arrWordsConsole: List<PictureABC>;
var ConsoleShiftX: integer;
var ConsoleElement: shortint;
var ConsoleOutPutChar: string;




//Корневая консоль, написанная через картинки, вставляемые на экран:
procedure ProcConsole(key: integer);
begin

try
case Key of
    VK_Escape: 
    begin
    Window.Close();
    triggerConsole := true;
    end;
    VK_Enter: 
    begin
    triggerConsole := true;
    end;
    VK_Delete:
    begin
    arrWordsConsole.Item[arrWordsConsole.Count - 1].Destroy;
    arrWordsConsole.RemoveLast();
    if (ConsoleElement > 0) and (ConsoleElement < 16) then ConsoleElement := ConsoleElement - 1;
    if (ConsoleShiftX > 0) and (ConsoleShiftX < 1600) then ConsoleShiftX := ConsoleShiftX - 100;
    sb.Remove(sb.Length - 1, 1);
    end;
    
    VK_Back:
    begin
    arrWordsConsole.Item[arrWordsConsole.Count - 1].Destroy;
    arrWordsConsole.RemoveLast();
    if (ConsoleElement > 0) and (ConsoleElement < 16) then ConsoleElement := ConsoleElement - 1;
    if (ConsoleShiftX > 0) and (ConsoleShiftX < 1600) then ConsoleShiftX := ConsoleShiftX - 100;
    sb.Remove(sb.Length - 1, 1);
    end;
    
    else
    begin
    if (ConsoleElement >= 0) and (ConsoleElement < 16) and (ConsoleElement + 1 < 16) then 
    begin 
    ConsoleOutputChar := 'Console\' + Chr(key) + '.png';
    arrWordsConsole.Add(new PictureABC(ConsoleShiftX, 270, ConsoleOutputChar));
    ConsoleElement := ConsoleElement + 1;
    ConsoleShiftX := ConsoleShiftX + 100;
    sb.Append(Chr(key));
    end;
    end;
   end;
  except
  end;
 
end;

//Главная функция, которая инициализирует графическое окно:
procedure ProcMainConsole;
begin
triggerConsole := false;
PictConsole := PictureABC.Create(-10000, -10000, 'Console.png');
WinAutorization := Picture.Create('WinAutorization.png');
WinAutorization.Draw(0, 0, WindowWidth, WindowHeight);
PictConsole.Scale(0.5);
PictConsole.MoveTo(100, 50);
ConsoleShiftX := 200;
OnKeyDown := ProcConsole;
arrWordsConsole := new List<PictureABC>;
sb := new StringBuilder;
end;


begin
Window.Maximize;
Window.Caption := 'Heroes of Azironian Build.1.0.0.0.0';
ProcMainConsole();
end.