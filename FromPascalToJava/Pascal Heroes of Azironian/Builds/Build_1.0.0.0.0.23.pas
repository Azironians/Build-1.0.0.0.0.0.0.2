uses 
//Использованные модули:
  Timers, ABCObjects, GraphABC, ABCSprites, System.Media;
  //Инициализация игровых переменных:
  //1. Изображения:
  var initWindow, loadFrag, choiceWindow, fieldWindow, menuWindow, bashWindow,
  beforeWindow, loadWindow, locMchWindow,
  ultDev1Pict, ultDev2Pict, ultDev3Pict, ultLV1Pict, ultLV2Pict, ultLV3Pict,
  ultBHR1Pict, ultBHR2Pict, ultBHR3Pict, devSpotlight, lvSpotlight, bhrSpotlight,
  dpsPict, healthPict, dpsDevPict, dpsLVPict, dpsBHRPict, healthDevPict,
  healthLVPict, healthBHRPict: Picture;
  //2. Системные переменные:
  var fragOffset: integer;
  menuChoice: byte;
  //2.1 Триггеры:
  var triggerInGame : boolean;
  var triggerWindow : byte; //0 выход, 1 меню, 2 локалный матч...
  //3. Текстовые переменные:
  var turnOfFstPlayer, turnOfScdPlayer, beginingStr: textabc;
  //4. Строки:
  var bonusStrBuilder: string;
  //5. Массив бонусов:
  var bonusesArr: array [1..16] of PictureABC;
  //6. Изображения класса ABC:
  headlinePict: PictureABC;
  //7. Кнопки:
  btnOffLocMch, btnOnLocMch, btnOffLocMchPlayOnTwo, btnOnLocMchPlayOnTwo,
  btnExitOff, btnExitOn, btnOffExitLocMch, btnOnExitLocMch: PictureABC;
  
  //8. Процедуры и функции:
 
  //8.1. Процедуры для аудиофайлов:
  procedure MenuMusic;
  begin
   try 
    var musicMenu := new SoundPlayer();
    musicMenu.Soundlocation := 'musicMenu.wav';
    musicMenu.PlayLooping();
  except
end;
  end;

  //8.2 Загрузка игры:
 procedure LoadingGame;
 begin
  initWindow := Picture.Create('initWindow.bmp');
  initWindow.Draw(0, 0, windowWidth, windowHeight);
  initWindow.Draw(-10000, -10000);
  headlinePict := PictureABC.Create(-10000, -10000,'Headline.png');
  headlinePict.Scale(windowwidth / headlinePict.Width * 951 / 2223);
  headlinePict.moveTo((windowWidth - headlinePict.Width) div 2,
  (windowheight - headlinePict.Height) div 2);
  //Запуск заставочной музыки:
 MenuMusic;
//Установка шрифта и цвета для написания текста:
  SetFontName('Comic Sans MS');
  SetFontSize(30); 
  SetFontColor(clblack);
  SetBrushColor(clblack);
  setFontStyle(fsBold); 
  //Псевдозагрузка:
  loadFrag := Picture.Create('loadFrag.png'); 
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50); 
  //Инициализация функций...
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  //Инициализация кнопок для игрового меню:
  btnOffExitLocMch := PictureABC.Create(-10000, -10000, 'ButtonExitOffWindowLocMatchOnTwo.png');
  btnOffExitLocMch.Scale(0.15);
  btnOnExitLocMch := PictureABC.Create(-10000, -10000, 'ButtonExitOnWindowLocMatchOnTwo.png');
  btnOnExitLocMch.Scale(0.15);
  btnExitOn := PictureABC.Create(-10000, -10000, 'ButtonMenuExitProgrammOn.png');
  btnExitOn.Scale(0.35);
  btnExitOff := PictureABC.Create(-10000, -10000, 'ButtonMenuExitProgrammOff.png');
  btnExitOff.Scale(0.35);
  btnOffLocMch := PictureABC.Create(-10000, -10000, 'ButtonOffMenuLocMatch.png');
  btnOffLocMch.Scale(0.355);
  btnOnLocMch := PictureABC.Create(-10000, -10000, 'ButtonOnMenuLocMatch.png');
  btnOnLocMch.Scale(0.355);
  btnOffLocMchPlayOnTwo := PictureABC.Create(-10000, -10000, 'ButtonOffWindowLocMatchOnTwo.png');
  btnOffLocMchPlayOnTwo.Scale(0.355);
  btnOnLocMchPlayOnTwo := PictureABC.Create(-10000, -10000, 'ButtonOnWindowLocMatchOnTwo.png');
  btnOnLocMchPlayOnTwo.Scale(0.355);
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Инициализация Окон:
  menuWindow := Picture.Create('menuWin3.png'); //Инициализация окна меню.
  loadFrag.Draw(trunc(844 / 2223 * windowWidth),trunc(1234 / 1434* windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223* windowWidth / 50);
  //Инициализация функций...
  choiceWindow := Picture.Create('choiceWindow.png'); //Открытие окна для выбора героев:
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  fieldWindow := Picture.Create('fieldWindow.bmp'); // Присвоение игрового окна:
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  bashWindow := Picture.Create('bashWindow.jpg'); //Присвоение оглушения для "Оглушителя":
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Загрузка ульт Devourer:
 ultDev1Pict := Picture.Create('ultDev1.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultDev2Pict := Picture.Create('ultDev2.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultDev3Pict := Picture.Create('ultDev3.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Загрузка ульт Lord Vamp:
 ultLV1Pict := Picture.Create('ultLV1.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultLV2Pict := Picture.Create('ultLV2.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  ultLV3Pict:= Picture.Create('ultLV3.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Загрузка ульт Basher:
 ultBHR1Pict := Picture.Create('ultBHR1.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultBHR2Pict := Picture.Create('ultBHR2.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultBHR3Pict := Picture.Create( 'ultBHR3.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 //Загрузка Тем для героев:
devSpotlight := Picture.Create('DEV_Spotlight.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 bhrSpotlight := Picture.Create('BHR_Spotlight.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 lvSpotlight := Picture.Create('LV_Spotlight.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Загрузка заголовка:
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Инициализация возможностей героев:
 dpsPict := Picture.Create('dpsHero.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 healthPict := Picture.Create('healthHero.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 dpsDevPict := Picture.Create('DmgSkillDev.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 healthDevPict := Picture.Create('HealthDevSkill.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 dpsLVPict := Picture.Create('DmgSkillLV.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 healthLVPict := Picture.Create('HealthLVSkill.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 dpsBHRPict := Picture.Create('DmgSkillBHR.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 healthBHRPict := Picture.Create('HealthBHRSkill.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Инициализация окна победителя:
 beforeWindow := Picture.Create('beforeWindow.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Инициализация игровых уведомлений:
 turnOfFstPlayer := textabc.Create(-10000, -10000, 40, ' Ход синего игрока ', clblue);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  turnOfScdPlayer := textabc.Create(-10000, -10000, 40, 'Ход красного игрока', clred);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //Инициализация окна внутриигровой загрузки
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 70);
   //Инициализация бонусов:
  for var i := 1 to 16 do // используется в инициализации цикоа бонусов
  begin
    Str(i, bonusStrBuilder); // Преобразователь
    bonusStrBuilder := bonusStrBuilder + '.png';
    bonusesArr[i] := PictureABC.Create(-10000, -10000, bonusStrBuilder);
    bonusesArr[i].Scale(WindowHeight / bonusesArr[i].Height / 3 * 2);
 loadFrag.Draw(trunc(844/2223 * WindowWidth),trunc(1234/1434* WindowHeight),
 fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 end;
 //Установка шрифта и цвета для написания текста:
  SetFontSize(30);
  SetFontColor(clblack);
  SetBrushColor(clblack);
  setFontStyle(fsBold);  
  headlinePict.Destroy;
  ClearWindow(clblack); //Очистка экрана
 end;
  
  //8.0 Выключение реагирования мыши:
  procedure MouseMoveOut(x, y, mb: integer);
  begin
  end;
  
  //8.2 Меню:....................................................................
  
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
  menuWindow.Clear(clBlack);
  btnExitOff.Destroy;
  locMchWindow := Picture.Create('LocMchWindow3.png');
  locMchWindow.Draw(0, 0, WindowWidth, WindowHeight);
  triggerWindow := 2;
  end;
  if (x >= trunc(windowWidth div 9 * 7.93)) and (y <= trunc(windowHeight div 10)) then
  begin
  triggerWindow := 0; //Выход из цикла: 
  triggerInGame := false;
  end;
  
  end;
  end;
  
  //8.3 Окно "Локальный матч":...................................................
  
  //8.3.1 Реагирование кнопок на мышь:
  
  procedure MouseMoveLocMchWindow(x, y, mb: integer);
  begin
  if mb = 0 then 
  begin
  if (x > trunc(windowWidth div 2 * 1.4)) and (x < trunc(windowWidth div 9 * 7.93)) and
  (y <= trunc(windowHeight div 10)) then
  begin
  btnOnLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.1), trunc(windowHeight div 3 * 1.6));
  btnOffLocMchPlayOnTwo.MoveTo(-10000, -10000);
  end else begin
  btnOnLocMchPlayOnTwo.MoveTo(-10000, -10000);
  btnOffLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.1), trunc(windowHeight div 3 * 1.6));
  end;
  if (x >= trunc(windowWidth div 9 * 7.93)) and (y <= trunc(windowHeight div 10)) then
  begin
  btnOnExitLocMch.MoveTo(trunc(windowWidth div 2 * 1.478) , trunc(windowHeight div 5 * 1.02));
  btnOffExitLocMch.MoveTo(-10000, -10000);
  end else begin
  btnOnExitLocMch.MoveTo(-10000, -10000);
  btnOffExitLocMch.MoveTo(trunc(windowWidth div 2 * 1.478) , trunc(windowHeight div 5 * 1.02));
  end;
  end;
  end;
  
  //8.3.2 Нажатие на кнопку в окне меню:
  
  procedure MouseDownLocMchWindow(x, y, mb: integer);
  begin
  if mb = 1 then
  begin
  if (x > trunc(windowWidth div 2 * 1.4)) and (x < trunc(windowWidth div 9 * 7.93)) and
  (y <= trunc(windowHeight div 10)) then
  //Остановка цикла:
  begin
  menuChoice := 0;
  end;
  if (x >= trunc(windowWidth div 9 * 7.93)) and (y <= trunc(windowHeight div 10)) then
  CloseWindow;
  end;
  end;
  
  //8.3.3 Оконная процедура "Локальный матч":
  procedure ProcLocMchWindow;
  begin
  
  locMchWindow.Draw(0, 0, windowWidth, windowHeight);
  //Установка координат кнопок:
  btnOffLocMchPlayOnTwo.MoveTo(trunc(windowWidth div 2 * 1.4), trunc(windowHeight div 92));
  btnOffExitLocMch.MoveTo(trunc(windowWidth div 9 * 7.93) , trunc(windowHeight div 80));
  //Работа с кнопками в меню:
  //1. Пока не нажали кнопку:
  while menuChoice = 1 do
  begin
  OnMouseMove := MouseMoveLocMchWindow;
  OnMouseDown := MouseDownLocMchWindow;
  end;
  if menuChoice = 0 then 
  begin
  end;
  end;
  
//Main////////////////////////////////////////////////////////////////////////
  begin
  // Название окна:
  Window.Caption := 'Heroes of Azironian Build.1.0.0.0.0';
  //На весь экран:
  MaximizeWindow;
  //Процедура загрузки игры:
  LoadingGame;
  //Подготовка к внутриигровым процессам:
  menuWindow.Draw(0, 0, windowWidth, windowHeight);
  //Установка координат кнопок меню:
  btnOffLocMch.MoveTo(trunc(windowWidth div 2 * 1.4), trunc(windowHeight div 92));
  btnExitOff.MoveTo(trunc(windowWidth div 9 * 7.93) , trunc(windowHeight div 80));
  triggerInGame := true;
  triggerWindow := 1; 
  //Вход:
  while triggerInGame = true do
  begin
  //1 Меню: 
  while triggerWindow = 1 do
  begin
  OnMouseMove := MouseMoveMenuWindow;
  OnMouseDown := MouseDownMenuWindow;
  end;
  //2. Локальный матч:
  while triggerWindow = 2 do
  begin
  OnMouseMove := MouseMoveLocMchWindow;
  OnMouseDown := MouseDownLocMchWindow;
  end;
  //3. Игра на двоих:
  while triggerWindow = 3 do
  begin
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
  