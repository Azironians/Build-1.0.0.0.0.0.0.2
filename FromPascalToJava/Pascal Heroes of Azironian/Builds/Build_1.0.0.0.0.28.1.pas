uses 
//Использованные модули:
  Timers, ABCObjects, GraphABC, ABCSprites, System.Media, System.Windows, System;
  //Инициализация игровых переменных:
  //1. Изображения:
  var WindowInit, TriggerLoadFrag, WindowMenu,
  WindowLocMch: Picture;
  //2. Системные переменные:
  var fragOffset: integer;
  menuChoice: byte;
  //2.1 Триггеры:
  var triggerInGame, localTime : boolean;
  var triggerWindow : byte; //0 выход, 1 меню, 2 локалный матч, 3 авторизация...
  //3. Текстовые переменные:
  //4. Строки:
  var bonusStrBuilder: string;
  //5. Массив бонусов:
  var bonusesArr: array [1..16] of PictureABC;
  //6. Изображения класса ABC:
  Cursor, headlinePict, headlineLocMch: PictureABC;
  

  
  
  
  
  //7. Кнопки:
  btnOffLocMch, btnOnLocMch, btnOffLocMchPlayOnTwo, btnOnLocMchPlayOnTwo,
  btnExitOff, btnExitOn, btnOffExitLocMch, btnOnExitLocMch: PictureABC;
  cursors: System.Windows.Input.ICommand;
  
  //8. Процедуры и функции:
  
  
  
  
  
  
 
  //8.0 Местное время:
 procedure ProcLocalTime; 
 begin
  
  Font.Size := 20;
    var t := DateTime.Now;
    var s := string.Format('{0:d2}:{1:d2}',t.Hour,t.Minute);
    var outTime := new TextABC(300, 300, 25, s, clBlue);
    Sleep(1000);
    outTime.Destroy();
  end;
 
  //8.1. Процедуры для аудиофайлов:
  procedure MenuMusic;
  begin
   try 
    var musicMenu := new SoundPlayer();
    musicMenu.Soundlocation := 'HoAData\Music\musicMenu.wav';
    musicMenu.PlayLooping();
  except
end;
  end;

  //8.2 Загрузка игры:
  procedure LoadingGame;
  begin
  
  Cursor := PictureABC.Create(-10000, -10000, 'HoAData\Mouse\Mouse.png');
  Cursor.Scale(0.08);
//  OnMouseMove := MouseCursor;
  
  
  
  WindowInit := Picture.Create('HoAData\Windows\WindowInit.bmp');
  WindowInit.Draw(0, 0, windowWidth, windowHeight);
  WindowInit.Draw(-10000, -10000);
  headlinePict := PictureABC.Create(-10000, -10000,'HoAData\Triggers\TriggerHeadline.png');
  headlinePict.Scale(windowwidth / headlinePict.Width * 951 / 2223);
  headlinePict.moveTo((windowWidth - headlinePict.Width) div 2,
  (windowheight - headlinePict.Height) div 2);
  //Запуск заставочной музыки:
//  MenuMusic;
  
  //Псевдозагрузка//////////////////////////////////////////////////////////////
  
  //1. Инициализация Триггеров:

  TriggerLoadFrag := Picture.Create('HoAData\Triggers\TriggerLoadFrag.png'); 
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50); 
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  headlineLocMch := PictureABC.Create(-10000, -10000, 'HoAData\Triggers\TriggerLocMchHeadline.png');
  headlineLocMch.Scale(0.17);
  //Инициализация игровых уведомлений:
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  
  //2. Инициализация кнопок
  btnOffExitLocMch := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonExitOffWindowLocMatchOnTwo.png');
  btnOffExitLocMch.Scale(0.15);
  btnOnExitLocMch := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonExitOnWindowLocMatchOnTwo.png');
  btnOnExitLocMch.Scale(0.15);
  btnExitOn := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonMenuExitProgrammOn.png');
  btnExitOn.Scale(0.35);
  btnExitOff := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonMenuExitProgrammOff.png');
  btnExitOff.Scale(0.35);
  btnOffLocMch := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonOffMenuLocMatch.png');
  btnOffLocMch.Scale(0.355);
  btnOnLocMch := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonOnMenuLocMatch.png');
  btnOnLocMch.Scale(0.355);
  btnOffLocMchPlayOnTwo := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonOffWindowLocMatchOnTwo.png');
  btnOffLocMchPlayOnTwo.Scale(0.355);
  btnOnLocMchPlayOnTwo := PictureABC.Create(-10000, -10000, 'HoAData\Buttons\ButtonOnWindowLocMatchOnTwo.png');
  btnOnLocMchPlayOnTwo.Scale(0.355);
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  
  //3.Инициализация Окон:
  WindowMenu := Picture.Create('HoAData\Windows\WindowMenu.png'); //Инициализация окна меню.
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth),trunc(1234 / 1434* windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223* windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 70);
  
  //4. Инициализация бонусов:
  for var i := 1 to 16 do // используется в инициализации цикоа бонусов
  begin
  Str(i, bonusStrBuilder); // Преобразователь
  bonusStrBuilder := 'HoAData\Bonuses\' + bonusStrBuilder + '.png';
  bonusesArr[i] := PictureABC.Create(-10000, -10000, bonusStrBuilder);
  bonusesArr[i].Scale(WindowHeight / bonusesArr[i].Height / 3 * 2);
  TriggerLoadFrag.Draw(trunc(844/2223 * WindowWidth),trunc(1234/1434* WindowHeight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  end;
 
  //Установка шрифта и цвета для написания текста:
  SetFontSize(30);
  SetFontColor(clblack);
  SetBrushColor(clblack);
  SetFontStyle(fsBold);  
  headlinePict.Destroy;
  ClearWindow(clblack); //Очистка экрана
  end;
  
  //8.2 Меню:======================================================================================================================================================
  
  //8.2.1 Реагирование кнопок на мышь:
  procedure MouseMoveMenuWindow(x, y, mb: integer);
  begin
  if mb = 0 then 
  begin
  if (x > trunc(windowWidth div 2 * 1.4)) and (x < trunc(windowWidth div 9 * 7.93)) and
  (y <= trunc(windowHeight div 10)) then
  begin
  btnOnLocMch.MoveTo(trunc(windowWidth div 2 * 1.4), trunc(windowHeight div 92));
  btnOffLocMch.MoveTo(-10000, -10000);
  end else begin
  btnOnLocMch.MoveTo(-10000, -10000);
  btnOffLocMch.MoveTo(trunc(windowWidth div 2 * 1.4), trunc(windowHeight div 92));
  end;
  if (x >= trunc(windowWidth div 9 * 7.93)) and (y <= trunc(windowHeight div 10)) then
  begin
  btnExitOn.MoveTo(trunc(windowWidth div 9 * 7.93) , trunc(windowHeight div 80));
  btnExitOff.MoveTo(-10000, -10000);
  end else begin
  btnExitOn.MoveTo(-10000, -10000);
  btnExitOff.MoveTo(trunc(windowWidth div 9 * 7.93) , trunc(windowHeight div 80));
  end;
  end;
  end;
  
  //8.2.2 Нажатие на кнопку в окне меню:
  procedure MouseDownMenuWindow(x, y, mb: integer);
  begin
  if mb = 1 then
  begin
  if (x > trunc(windowWidth div 2 * 1.4)) and (x < trunc(windowWidth div 9 * 7.93)) and
  (y <= trunc(windowHeight div 10)) then
  //Остановка цикла:
  begin
  triggerWindow := 2;
  WindowMenu.Clear(clBlack);
  btnExitOff.MoveTo(-10000, -10000);
  btnExitOn.MoveTo(-10000, -10000);
  WindowLocMch := Picture.Create('HoAData\Windows\LocMchWindow.png');
  WindowLocMch.Draw(0, 0, WindowWidth, WindowHeight);
  headlineLocMch.MoveTo(trunc(windowWidth div 5 * 1.16) , trunc(windowHeight div 5 * 1.1));
  btnOffExitLocMch.MoveTo(trunc(windowWidth div 2 * 1.478) , trunc(windowHeight div 5 * 1.02));
  btnOffLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.1), trunc(windowHeight div 3 * 1.6));
  end;
  if (x >= trunc(windowWidth div 9 * 7.93)) and (y <= trunc(windowHeight div 10)) then
  begin
  triggerWindow := 0; //Выход из цикла: 
  triggerInGame := false;
  end;
  end;
  end;
  
  //8.3 Окно "Локальный матч":================================================================================================================================================================================================
  
  //8.3.1 Реагирование кнопок на мышь:
  
  procedure MouseMoveLocMchWindow(x, y, mb: integer);
  begin
  if mb = 0 then 
  begin
  if (x >= trunc(windowWidth div 2 * 1.09)) and (x <= trunc(windowWidth div 2 * 1.49))
  and (y >= trunc(windowHeight div 3 * 1.6)) and (y <= trunc(windowHeight div 3 * 1.85)) then
  begin
  btnOnLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.1), trunc(windowHeight div 3 * 1.6));
  btnOffLocMchPlayOnTwo.MoveTo(-10000, -10000);
  end else begin
  btnOnLocMchPlayOnTwo.MoveTo(-10000, -10000);
  btnOffLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.1), trunc(windowHeight div 3 * 1.6));
  end;
  if (x >= trunc(windowWidth div 2 * 1.478)) and (y >= trunc(windowHeight div 5 * 1.02))
  and (x <= trunc(windowWidth div 2 * 1.535)) and (y <= trunc(windowHeight div 5 * 1.28)) then
  begin
  btnOnExitLocMch.MoveTo(trunc(windowWidth div 2 * 1.478) , trunc(windowHeight div 5 * 1.02));
  btnOffExitLocMch.MoveTo(-10000, -10000);
  end else begin
  btnOnExitLocMch.MoveTo(-10000, -10000);
  btnOffExitLocMch.MoveTo(trunc(windowWidth div 2 * 1.478) , trunc(windowHeight div 5 * 1.02));
  end;
  end;
  end;
  
  //8.3.2 Нажатие на кнопку в окне "Локальный матч":
  
  procedure MouseDownLocMchWindow(x, y, mb: integer);
  begin
  if mb = 1 then
  begin
  if (x >= trunc(windowWidth div 2 * 1.09)) and (x <= trunc(windowWidth div 2 * 1.49))
  and (y >= trunc(windowHeight div 3 * 1.6)) and (y <= trunc(windowHeight div 3 * 1.85)) then
  begin
  triggerWindow := 3;
  WindowLocMch.Clear(clBlack);
  headlineLocMch.MoveTo(-10000, -10000);
  btnOffExitLocMch.MoveTo(-10000, -10000);
  btnOnExitLocMch.MoveTo(-10000, -10000);
  btnOffLocMchPlayOnTwo.MoveTo(-10000, -10000);
  btnOnLocMchPlayOnTwo.MoveTo(-10000, -10000);
  var WindowAutorization := new Picture('HoAData\Windows\WindowAutorization.png');
  WindowAutorization.Draw(0, 0, WindowWidth, WindowHeight);
  end;
  if (x >= trunc(windowWidth div 2 * 1.478)) and (y >= trunc(windowHeight div 5 * 1.02))
  and (x <= trunc(windowWidth div 2 * 1.535)) and (y <= trunc(windowHeight div 5 * 1.28)) then
  begin
  triggerWindow := 1;
  WindowLocMch.Clear(clBlack);
  headlineLocMch.MoveTo(-10000, -10000);
  btnOffExitLocMch.MoveTo(-10000, -10000);
  btnOnExitLocMch.MoveTo(-10000, -10000);
  btnOffLocMchPlayOnTwo.MoveTo(-10000, -10000);
  btnOnLocMchPlayOnTwo.MoveTo(-10000, -10000);
  WindowMenu := Picture.Create('HoAData\Windows\WindowMenu.png');
  WindowMenu.Draw(0, 0, WindowWidth, WindowHeight);
  end;
  end;
  end;
  
  //8.4 Окно "Авторизация":===================================================================================================================================================================
  
  //8.3.1 Реагирование кнопок на мышь:
  
  procedure MouseMoveSignWindow(x, y, mb: integer);
  begin
  if mb = 0 then 
  begin
  if (x >= trunc(windowWidth div 2 * 1.09)) and (x <= trunc(windowWidth div 2 * 1.49))
  and (y >= trunc(windowHeight div 3 * 1.6)) and (y <= trunc(windowHeight div 3 * 1.85)) then
  begin
  btnOnLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.1), trunc(windowHeight div 3 * 1.6));
  btnOffLocMchPlayOnTwo.MoveTo(-10000, -10000);
  end else begin
  btnOnLocMchPlayOnTwo.MoveTo(-10000, -10000);
  btnOffLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.1), trunc(windowHeight div 3 * 1.6));
  end;
  if (x >= trunc(windowWidth div 2 * 1.478)) and (y >= trunc(windowHeight div 5 * 1.02))
  and (x <= trunc(windowWidth div 2 * 1.535)) and (y <= trunc(windowHeight div 5 * 1.28)) then
  begin
  btnOnExitLocMch.MoveTo(trunc(windowWidth div 2 * 1.478) , trunc(windowHeight div 5 * 1.02));
  btnOffExitLocMch.MoveTo(-10000, -10000);
  end else begin
  btnOnExitLocMch.MoveTo(-10000, -10000);
  btnOffExitLocMch.MoveTo(trunc(windowWidth div 2 * 1.478) , trunc(windowHeight div 5 * 1.02));
  end;
  end;
  end;
  
  //8.3.2 Нажатие на кнопку в окне "Локальный матч":
  
  procedure MouseDownSignWindow(x, y, mb: integer);
  begin
  if mb = 1 then
  begin
  if (x >= trunc(windowWidth div 2 * 1.09)) and (x <= trunc(windowWidth div 2 * 1.49))
  and (y >= trunc(windowHeight div 3 * 1.6)) and (y <= trunc(windowHeight div 3 * 1.85)) then
  begin
  triggerWindow := 3;
  WindowLocMch.Clear(clBlack);
  headlineLocMch.MoveTo(-10000, -10000);
  btnOffExitLocMch.MoveTo(-10000, -10000);
  btnOnExitLocMch.MoveTo(-10000, -10000);
  btnOffLocMchPlayOnTwo.MoveTo(-10000, -10000);
  btnOnLocMchPlayOnTwo.MoveTo(-10000, -10000);
  var WindowAutorization := new Picture('HoAData\Windows\WindowAutorization.png');
  WindowAutorization.Draw(0, 0, WindowWidth, WindowHeight);
  end;
  if (x >= trunc(windowWidth div 2 * 1.478)) and (y >= trunc(windowHeight div 5 * 1.02))
  and (x <= trunc(windowWidth div 2 * 1.535)) and (y <= trunc(windowHeight div 5 * 1.28)) then
  begin
  triggerWindow := 1;
  WindowLocMch.Clear(clBlack);
  headlineLocMch.MoveTo(-10000, -10000);
  btnOffExitLocMch.MoveTo(-10000, -10000);
  btnOnExitLocMch.MoveTo(-10000, -10000);
  btnOffLocMchPlayOnTwo.MoveTo(-10000, -10000);
  btnOnLocMchPlayOnTwo.MoveTo(-10000, -10000);
  WindowMenu := Picture.Create('HoAData\Windows\WindowMenu.png');
  WindowMenu.Draw(0, 0, WindowWidth, WindowHeight);
  end;
  end;
  end;
  //======================================================================================================================================================================================
  
  
  
  
  
  
//Main//////////////////////////////////////////////////////////////////////////
  begin
  // Название окна:
  Window.Caption := 'Heroes of Azironian Build.1.0.0.0.0';
  //На весь экран:
  MaximizeWindow;
  //Процедура загрузки игры:
  LoadingGame;
  //Подготовка к внутриигровым процессам:
  WindowMenu.Draw(0, 0, windowWidth, windowHeight);
  
  //Установка координат кнопок меню:
  btnOffLocMch.MoveTo(trunc(windowWidth div 2 * 1.4), trunc(windowHeight div 92));
  btnExitOff.MoveTo(trunc(windowWidth div 9 * 7.93) , trunc(windowHeight div 80));
  triggerInGame := true;
  localTime := true;
  triggerWindow := 1; 
  //Вход:
  while triggerInGame = true do
  begin
  //1 Меню: 
  while triggerWindow = 1 do //Меню
  begin
  ProcLocalTime;
  OnMouseMove := MouseMoveMenuWindow;
  OnMouseDown := MouseDownMenuWindow;
  end;
  //2. Локальный матч:
  while triggerWindow = 2 do //Локальный матч
  begin
  OnMouseMove := MouseMoveLocMchWindow;
  OnMouseDown := MouseDownLocMchWindow;
  end;
  //3. Игра на двоих:
  while triggerWindow = 3 do //Игра на двоих
  begin
//  OnMouseMove := 
//  OnMouseDown := 
  end;
  while triggerWindow = 4 do
  begin
  end;
  while triggerWindow = 5 do
  begin
  end;
  end;
  CloseWindow;
end.
//EndGame///////////////////////////////////////////////////////////////////////
  