uses 
//�������������� ������:
  Timers, ABCObjects, GraphABC, ABCSprites, System.Media, System.Windows, System;
  //������������� ������� ����������:
  //1. �����������:
  var WindowInit, TriggerLoadFrag, WindowMenu,
  WindowLocMch: Picture;
  //2. ��������� ����������:
  var fragOffset: integer;
  menuChoice: byte;
  //2.1 ��������:
  var triggerInGame, localTime : boolean;
  var triggerWindow : byte; //0 �����, 1 ����, 2 �������� ����, 3 �����������...
  //3. ��������� ����������:
  //4. ������:
  var bonusStrBuilder: string;
  //5. ������ �������:
  var bonusesArr: array [1..16] of PictureABC;
  //6. ����������� ������ ABC:
  Cursor, headlinePict, headlineLocMch: PictureABC;
  

  
  
  
  
  //7. ������:
  btnOffLocMch, btnOnLocMch, btnOffLocMchPlayOnTwo, btnOnLocMchPlayOnTwo,
  btnExitOff, btnExitOn, btnOffExitLocMch, btnOnExitLocMch: PictureABC;
  cursors: System.Windows.Input.ICommand;
  
  //8. ��������� � �������:
  
  
  
  
  
  
 
  //8.0 ������� �����:
 procedure ProcLocalTime; 
 begin
  
  Font.Size := 20;
    var t := DateTime.Now;
    var s := string.Format('{0:d2}:{1:d2}',t.Hour,t.Minute);
    var outTime := new TextABC(300, 300, 25, s, clBlue);
    Sleep(1000);
    outTime.Destroy();
  end;
 
  //8.1. ��������� ��� �����������:
  procedure MenuMusic;
  begin
   try 
    var musicMenu := new SoundPlayer();
    musicMenu.Soundlocation := 'HoAData\Music\musicMenu.wav';
    musicMenu.PlayLooping();
  except
end;
  end;

  //8.2 �������� ����:
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
  //������ ����������� ������:
//  MenuMusic;
  
  //��������������//////////////////////////////////////////////////////////////
  
  //1. ������������� ���������:

  TriggerLoadFrag := Picture.Create('HoAData\Triggers\TriggerLoadFrag.png'); 
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50); 
  TriggerLoadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  headlineLocMch := PictureABC.Create(-10000, -10000, 'HoAData\Triggers\TriggerLocMchHeadline.png');
  headlineLocMch.Scale(0.17);
  //������������� ������� �����������:
  TriggerLoadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  
  //2. ������������� ������
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
  
  //3.������������� ����:
  WindowMenu := Picture.Create('HoAData\Windows\WindowMenu.png'); //������������� ���� ����.
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
  
  //4. ������������� �������:
  for var i := 1 to 16 do // ������������ � ������������� ����� �������
  begin
  Str(i, bonusStrBuilder); // ���������������
  bonusStrBuilder := 'HoAData\Bonuses\' + bonusStrBuilder + '.png';
  bonusesArr[i] := PictureABC.Create(-10000, -10000, bonusStrBuilder);
  bonusesArr[i].Scale(WindowHeight / bonusesArr[i].Height / 3 * 2);
  TriggerLoadFrag.Draw(trunc(844/2223 * WindowWidth),trunc(1234/1434* WindowHeight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  end;
 
  //��������� ������ � ����� ��� ��������� ������:
  SetFontSize(30);
  SetFontColor(clblack);
  SetBrushColor(clblack);
  SetFontStyle(fsBold);  
  headlinePict.Destroy;
  ClearWindow(clblack); //������� ������
  end;
  
  //8.2 ����:======================================================================================================================================================
  
  //8.2.1 ������������ ������ �� ����:
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
  
  //8.2.2 ������� �� ������ � ���� ����:
  procedure MouseDownMenuWindow(x, y, mb: integer);
  begin
  if mb = 1 then
  begin
  if (x > trunc(windowWidth div 2 * 1.4)) and (x < trunc(windowWidth div 9 * 7.93)) and
  (y <= trunc(windowHeight div 10)) then
  //��������� �����:
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
  triggerWindow := 0; //����� �� �����: 
  triggerInGame := false;
  end;
  end;
  end;
  
  //8.3 ���� "��������� ����":================================================================================================================================================================================================
  
  //8.3.1 ������������ ������ �� ����:
  
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
  
  //8.3.2 ������� �� ������ � ���� "��������� ����":
  
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
  
  //8.4 ���� "�����������":===================================================================================================================================================================
  
  //8.3.1 ������������ ������ �� ����:
  
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
  
  //8.3.2 ������� �� ������ � ���� "��������� ����":
  
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
  // �������� ����:
  Window.Caption := 'Heroes of Azironian Build.1.0.0.0.0';
  //�� ���� �����:
  MaximizeWindow;
  //��������� �������� ����:
  LoadingGame;
  //���������� � ������������� ���������:
  WindowMenu.Draw(0, 0, windowWidth, windowHeight);
  
  //��������� ��������� ������ ����:
  btnOffLocMch.MoveTo(trunc(windowWidth div 2 * 1.4), trunc(windowHeight div 92));
  btnExitOff.MoveTo(trunc(windowWidth div 9 * 7.93) , trunc(windowHeight div 80));
  triggerInGame := true;
  localTime := true;
  triggerWindow := 1; 
  //����:
  while triggerInGame = true do
  begin
  //1 ����: 
  while triggerWindow = 1 do //����
  begin
  ProcLocalTime;
  OnMouseMove := MouseMoveMenuWindow;
  OnMouseDown := MouseDownMenuWindow;
  end;
  //2. ��������� ����:
  while triggerWindow = 2 do //��������� ����
  begin
  OnMouseMove := MouseMoveLocMchWindow;
  OnMouseDown := MouseDownLocMchWindow;
  end;
  //3. ���� �� �����:
  while triggerWindow = 3 do //���� �� �����
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
  