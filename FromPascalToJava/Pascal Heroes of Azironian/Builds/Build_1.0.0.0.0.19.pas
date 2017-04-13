uses
//�������������� ������:
  Timers, ABCObjects, GraphABC, ABCSprites, System.media;
  //������������� ������� ����������:
  //1. �����������:
  var initWindow, loadFrag, choiceWindow, fieldWindow, menuWindow, bashWindow,
  beforeWindow, loadWindow,
  ultDev1Pict, ultDev2Pict, ultDev3Pict, ultLV1Pict, ultLV2Pict, ultLV3Pict,
  ultBHR1Pict, ultBHR2Pict, ultBHR3Pict, devSpotlight, lvSpotlight, bhrSpotlight,
  dpsPict, healthPict, dpsDevPict, dpsLVPict, dpsBHRPict, healthDevPict,
  healthLVPict, healthBHRPict: Picture;
  //2. ��������� ����������:
  var fragOffset: integer;
  menuChoise: byte;
  //3. ��������� ����������:
  var turnOfFstPlayer, turnOfScdPlayer, beginingStr: textabc;
  //4. ������:
  var bonusStrBuilder: string;
  //5. ������ �������:
  var bonusesArr: array [1..16] of PictureABC;
  //6. ����������� ������ ABC:
  headlinePict: PictureABC;
  //7. ������:
  btnOffLocMch, btnOnLocMch, btnExitOff, btnExitOn: PictureABC;
  
  //8. ��������� � ������� ��� ������:
  //8.1 ������ "��������� ����":
  procedure MouseMoveLocMch(x, y, mb: integer);
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
  end;
  end;
  //8.2 ������ "�����":
  procedure MouseMoveExitGame(x, y, mb: integer);
  begin
  if mb = 0 then 
  begin
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
  
  
  
    
  begin
  Window.Caption := 'Heroes of Azironian Build.1.0.0.0.0'; // �������� ����
  MaximizeWindow; //�� ���� �����
  initWindow := Picture.Create('initWindow.bmp');
  initWindow.Draw(0, 0, windowWidth, windowHeight);
  initWindow.Draw(-10000, -10000);
  headlinePict := PictureABC.Create(-10000, -10000,'Headline.png');
  headlinePict.Scale(windowwidth / headlinePict.Width * 951 / 2223);
  headlinePict.moveTo((windowWidth - headlinePict.Width) div 2,
  (windowheight - headlinePict.Height) div 2);
  
  
  //������ ����������� ������:
  try 
    var musicMenu := new SoundPlayer();
    musicMenu.Soundlocation := 'musicMenu.wav';
    musicMenu.PlayLooping();
  except
end;

//��������� ������ � ����� ��� ��������� ������:
  SetFontName('Comic Sans MS');
  SetFontSize(30); 
  SetFontColor(clblack);
  SetBrushColor(clblack);
  setFontStyle(fsBold); 
  //��������������:
  loadFrag := Picture.Create('loadFrag.png'); 
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50); 
  //������������� �������...
  
 
  
  
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  //������������� ������ ��� �������� ����:
  btnExitOn := PictureABC.Create(-10000, -10000, 'ButtonMenuExitProgrammOn.png');
  btnExitOn.Scale(0.35);
  btnExitOff := PictureABC.Create(-10000, -10000, 'ButtonMenuExitProgrammOff.png');
  btnExitOff.Scale(0.35);
  btnOffLocMch := PictureABC.Create(-10000, -10000, 'ButtonOffMenuLocMatch.png');
  btnOffLocMch.Scale(0.355);
  btnOnLocMch := PictureABC.Create(-10000, -10000, 'ButtonOnMenuLocMatch.png');
  btnOnLocMch.Scale(0.355);
  
  
  
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  menuWindow := Picture.Create('menuWin3.png'); //������������� ���� ����������:
  
  //������������� �������...
  loadFrag.Draw(trunc(844 / 2223 * windowWidth),trunc(1234 / 1434* windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223* windowWidth / 50);
  //������������� �������...
  choiceWindow := Picture.Create('choiceWindow.png'); //�������� ���� ��� ������ ������:
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  fieldWindow := Picture.Create('fieldWindow.bmp'); // ���������� �������� ����:
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  bashWindow := Picture.Create('bashWindow.jpg'); //���������� ��������� ��� "����������":
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844 / 2223 * windowWidth), trunc(1234 / 1434 * windowheight),
  fragOffset, trunc(52 / 1434 * windowheight));
  fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //�������� ���� Devourer:
 ultDev1Pict := Picture.Create('ultDev1.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultDev2Pict := Picture.Create('ultDev2.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultDev3Pict := Picture.Create('ultDev3.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //�������� ���� Lord Vamp:
 ultLV1Pict := Picture.Create('ultLV1.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultLV2Pict := Picture.Create('ultLV2.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  ultLV3Pict:= Picture.Create('ultLV3.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //�������� ���� Basher:
 ultBHR1Pict := Picture.Create('ultBHR1.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultBHR2Pict := Picture.Create('ultBHR2.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 ultBHR3Pict := Picture.Create( 'ultBHR3.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 //�������� ��� ��� ������:
devSpotlight := Picture.Create('DEV_Spotlight.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 bhrSpotlight := Picture.Create('BHR_Spotlight.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 lvSpotlight := Picture.Create('LV_Spotlight.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //�������� ���������:
  
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //������������� ������������ ������:
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

  //������������� ���� ����������:
 beforeWindow := Picture.Create('beforeWindow.png');
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //������������� ������� �����������:
 turnOfFstPlayer := textabc.Create(-10000, -10000, 40, ' ��� ������ ������ ', clblue);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  turnOfScdPlayer := textabc.Create(-10000, -10000, 40, '��� �������� ������', clred);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  //������������� ���� ������������� ��������
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);

  loadFrag.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),
  fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 70);
   
   //������������� �������:
  for var i := 1 to 16 do // ������������ � ������������� ����� �������
  begin
    Str(i, bonusStrBuilder); // ���������������
    bonusStrBuilder := bonusStrBuilder + '.png';
    bonusesArr[i] := PictureABC.Create(-10000, -10000, bonusStrBuilder);
    bonusesArr[i].Scale(WindowHeight / bonusesArr[i].Height / 3 * 2);
 loadFrag.Draw(trunc(844/2223 * WindowWidth),trunc(1234/1434* WindowHeight),
 fragOffset,trunc(52/1434* windowheight));fragOffset := fragOffset + trunc(523 / 2223 * windowWidth / 50);
 end;
 //��������� ������ � ����� ��� ��������� ������:
  SetFontSize(30);
  SetFontColor(clblack);
  SetBrushColor(clblack);
  setFontStyle(fsBold);  
  headlinePict.Destroy;
  ClearWindow(clblack); //������� ������
  menuWindow.Draw(0, 0, windowWidth, windowHeight);
  //��������� ��������� ������:
  btnOffLocMch.MoveTo(trunc(windowWidth div 2 * 1.4), trunc(windowHeight div 92));
  btnExitOff.MoveTo(trunc(windowWidth div 9 * 7.93) , trunc(windowHeight div 80));
  
  //������ � �������� � ����:
  //1. ���� �� ������ ������:
  while menuChoise = 0 do begin
  OnMouseMove := MouseMoveLocMch;
  OnMouseMove := MouseMoveExitGame;
  end;
  
  
  
  
  
 
end.
  