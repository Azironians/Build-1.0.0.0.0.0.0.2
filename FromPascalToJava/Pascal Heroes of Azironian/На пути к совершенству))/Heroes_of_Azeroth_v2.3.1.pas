{$reference 'PresentationCore.dll'}
uses
  Timers, ABCObjects, graphABC,ABCSprites, system.media;

var
  xxx,gemes, bonuss21, bonuss22,qwert, bonuss41, bonuss101, bonuss102, bonuss111, bonuss112, bonuss42, bonuss51, bonuss52, bonuss61, bonuss62, bonuss71, bonuss72, bonuss131, bonuss132, bonuss141, bonuss142, bonuss151, bonuss152, bonuss161, bonuss162, g11, g1, g21, l1, l2, h, b,  fir2, fir, ul1, ul2, ul3, ul4, ff, ogl1, ogl2, gem, is123, is124, is133, is134, vubor, i, is113, is114, is223, is224, is233, is234, is213, is214, is115, is125, is135, is215, is225, is235,  her, hod, exx, bon1, bon2, bon3, bon, bobo: longint;g12, gam: char;
  qw11, qw12, qw21, qw22, text, bonu: string;
  p, g, bat, bat1, game, star, fon, hell, dam, ult11, ult12, ult21, ult22, ult31, ult32, ult13, ult23, ult33, vamp, trol, ad, loading: Picture;
  ran, h1, h2, och1, och2, hmax1, u1, u2, hmax2, hel, hel2: real;
  gg, gg2,  lev1, lev2, bhr, dev, lv,ud, plat1, plat2, plus, plus01, plus02, plus3, ud1, ud2, ud3, load, Headline, ochki1: PictureABC;
  da1, he1, da2, he2, texth, textd, first, second, prom: textabc;
  bbb: array[1..16]of PictureABC;
  anim:SpriteABC;
  
procedure runAsync(proc: procedure);
begin
  var t := new system.threading.Thread(proc);
  t.Start;
end;

procedure ex(key: integer);
begin
  case Key of
    VK_Escape:  exx := 1;
  
  end;
end;

procedure exitt();
begin
  while exx = 0 do OnkeyDown := ex;
  closewindow;
end;

procedure animac();
begin
while qwert=0 do begin anim.PrevPicture;end;
end;

procedure play1;
begin
  var 
  Player2 := new System.Windows.Media.MediaPlayer;
  var ud: PictureABC;
  if g11 = 2 then Player2.Open( new System.Uri('mech.wav', System.UriKind.Relative)) else
    Player2.Open( new System.Uri('udar.wav', System.UriKind.Relative));
  Player2.Play();
  System.Windows.Forms.Application.Run();
  
  System.Windows.Forms.Application.ExitThread();
  
end;

procedure play2;
begin
  var Player2 := new System.Windows.Media.MediaPlayer;
  if g21 = 2 then  Player2.Open( new System.Uri('mech.wav', System.UriKind.Relative)) else
    Player2.Open( new System.Uri('udar.wav', System.UriKind.Relative));
  Player2.Play();
  System.Windows.Forms.Application.Run();
  
  System.Windows.Forms.Application.ExitThread();
end;

procedure TimerProc;
begin
end;

procedure MouseDown(x, y, mb: integer);
begin
  if mb = 1 then 
    if hod = 1 then begin
      if ((x >= (gg.Width div 2 * 3 - gg.Width div 3)) and (y >= (windowheight - gg.Height) div 2 + gg.Height - gg.Height div 3) and ((x <= (gg.Width div 2 * 3)) and (y <= (windowheight - gg.Height) div 2 + gg.Height - 7))) then b := 1;
      if ((x >= gg.Width div 2) and (y >= (windowheight - gg.Height) div 2 + gg.Height - gg.Height div 3) and (x <= gg.Width div 2 + gg.Width div 3) and (y <= (windowheight - gg.Height) div 2 + gg.Height - 7)) then b := 2;
      if (((x >= trunc(59 * windowheight / 2156)) and (y >= trunc(1799 * windowheight / 2156)) and ((x <=  trunc(59 * windowheight / 2156) + 70) and (y <= trunc(1799 * windowheight / 2156) + 70)))) and ((is113 = 1) or (is123 = 1) or (is133 = 1)) then b := 3;
      if (((x >= trunc(348 * windowheight / 2156)) and (y >= trunc(1799 * windowheight / 2156)) and ((x <=  trunc(348 * windowheight / 2156) + 70) and (y <= trunc(1799 * windowheight / 2156) + 70)))) and ((is114 = 1) or (is124 = 1) or (is134 = 1)) then b := 4;
      if (((x >= trunc(637 * windowheight / 2156)) and (y >= trunc(1799 * windowheight / 2156)) and ((x <=  trunc(637 * windowheight / 2156) + 70) and (y <= trunc(1799 * windowheight / 2156) + 70)))) and ((is115 = 1) or (is125 = 1) or (is135 = 1)) then b := 5;
      
    end else
    begin
      
      if ((x >= gg2.Left) and (x <= gg2.Left + gg2.Width div 3)) and ((y >= gg2.Top + gg2.Height div 3 * 2) and (y <= gg2.Top + gg2.Height))  then b := 1;
      if ((x >= gg2.Left + gg2.Width div 3 * 2) and (x <= gg2.Left + gg2.Width)) and ((y >= gg2.Top + gg2.Height div 3 * 2) and (y <= gg2.Top + gg2.Height)) then b := 2;
      if (((x >= windowWidth - trunc(819 * windowheight / 2156)) and (y >= trunc(1799 * windowheight / 2156)) and ((x <=  windowWidth - trunc(819 * windowheight / 2156) + 70) and (y <= trunc(1799 * windowheight / 2156) + 70))))  and ((is213 = 1) or (is223 = 1) or (is233 = 1)) then b := 3;
      if (((x >= windowWidth - trunc(529 * windowheight / 2156)) and (y >= trunc(1799 * windowheight / 2156)) and ((x <=  windowWidth - trunc(529 * windowheight / 2156) + 70) and (y <= trunc(1799 * windowheight / 2156) + 70))))  and ((is214 = 1) or (is224 = 1) or (is234 = 1)) then b := 4;
      if (((x >= windowWidth - trunc(242 * windowheight / 2156)) and (y >= trunc(1799 * windowheight / 2156)) and ((x <=  windowWidth - trunc(242 * windowheight / 2156) + 70) and (y <= trunc(1799 * windowheight / 2156) + 70))))  and ((is215 = 1) or (is225 = 1) or (is235 = 1)) then b := 5;
      
    end;
  
end;
//переключение героев
procedure moveleft;
begin
  if vubor = 2 then begin
  dev.MoveTo(windowwidth - 1, 0 );
    while lv.left > -lv.Width do 
    begin
      lv.MoveOn(-40, 0); bhr.MoveOn(-40, 0); end;vubor := 3;  end else
 
 if vubor = 3 then begin
 lv.MoveTo(windowwidth - 1, 0);
    while bhr.left > -bhr.Width do 
    begin
      dev.MoveOn(-40, 0); bhr.MoveOn(-40, 0); end; vubor := 1;  end else
 
 if vubor = 1 then begin
 bhr.MoveTo(windowwidth - 1, 0);
    while dev.left > -dev.Width do 
    begin
      lv.MoveOn(-40, 0); dev.MoveOn(-40, 0); end; vubor := 2; end;
end;

procedure moveright;
begin

  if vubor = 2 then begin
  bhr.MoveTo(-bhr.Width, 0);
    while lv.left < windowwidth - 41 do 
    begin
      lv.MoveOn(40, 0); dev.MoveOn(40, 0); end; lv.Moveto(windowwidth - 1, 0); dev.Moveto((windowwidth - dev.Width) div 2, 0);   vubor := 1; end  else
  
  
  if vubor = 3 then begin
  dev.MoveTo(-dev.Width, 0);
    while bhr.left < windowwidth - 41 do 
    begin
     lv.MoveOn(40, 0); bhr.MoveOn(40, 0); end; bhr.Moveto(windowwidth - 1, 0); lv.Moveto((windowwidth - dev.Width) div 2, 0);   vubor := 2; end  else
  
  if vubor = 1 then begin
  lv.MoveTo(-lv.Width, 0);
    while dev.left < windowwidth - 41 do 
    begin
      bhr.MoveOn(40, 0); dev.MoveOn(40, 0); end;dev.Moveto(windowwidth - 1, 0); bhr.Moveto((windowwidth - dev.Width) div 2, 0); vubor := 3; end;
    
end;

procedure Key1(key: char);
begin
  
  if Key = '1' then  g1 := 1;
  if Key = '2' then  g1 := 2;
  if Key = '3' then g1 := 3;
  
end;

procedure Key5(key: char);
begin
  
  if Key = '1' then  bon := bon1;
  if Key = '2' then  bon := bon2;
  if Key = '3' then bon := bon3;
  
end;

procedure MouseDown2(x, y, mb: integer);
begin
  if mb = 1 then begin
    if ((x >= 0) and (x <= 131 / 1024 * windowWidth)) then moveleft;
    if ((x >= windowWidth div 3) and (x <= windowWidth div 3 * 2) ) then g1 := vubor;
    if ((x >= windowWidth - 131 / 1024 * windowWidth) and (x <= windowWidth) ) then moveright;
  end;
end;

procedure MouseDown4(x, y, mb: integer);
begin
  if mb = 1 then begin
    if ((x >= 0) and (x <= windowWidth div 3) and (y >= windowheight div 3)) then gam := #27;
    if ((x >= windowWidth div 3 * 2) and (x <= windowWidth) and (y >= windowheight div 3)) then gam := #13;
  end;
end;

procedure MouseDown5(x, y, mb: integer);
begin
  if mb = 1 then begin
    if ((x >= 0) and (x <= windowWidth div 3) ) then bon := bon1;
    if ((x >= windowWidth div 3) and (x <= windowWidth div 3 * 2) ) then bon := bon2;
    if ((x >= windowWidth div 3 * 2) and (x <= windowWidth) ) then bon := bon3;
  end;
end;

procedure MouseDown3(x, y, mb: integer);
begin
  if mb = 1 then begin
    if  (((x >= trunc(4587 * windowwidth / 5342)) and (y >= trunc(2470 * windowheight / 3172)) and ((x <=  trunc(5130 * windowwidth / 5342) ) and (y <= trunc(3095 * windowheight / 3172))))) then g12 := #13;
    if  (((x >= trunc(3656 * windowwidth / 5342)) and (y >= trunc(2470 * windowheight / 3172)) and ((x <=  trunc(4193 * windowwidth / 5342) ) and (y <= trunc(3095 * windowheight / 3172))))) then g12 := #27;
  end;
end;

procedure Key2(key: char);
begin
  if hod = 1 then begin
    if (Key = '1') then  b := 1;
    if (Key = '2') then  b := 2;
    if (Key = '3') and ((is113 = 1) or (is123 = 1) or (is133 = 1)) then  b := 3;
    if (Key = '4') and ((is114 = 1) or (is124 = 1) or (is134 = 1)) then  b := 4;
    if (Key = '5') and ((is115 = 1) or (is125 = 1) or (is135 = 1)) then  b := 5;
  end else
  begin
    if (Key = '1') then  b := 1;
    if (Key = '2') then  b := 2;
    if (Key = '3') and ((is213 = 1) or (is223 = 1) or (is233 = 1)) then  b := 3;
    if (Key = '4') and ((is214 = 1) or (is224 = 1) or (is234 = 1)) then  b := 4;
    if (Key = '5') and ((is215 = 1) or (is225 = 1) or (is235 = 1)) then  b := 5;
  end;
end;

procedure Key12(key: integer);
begin
  case Key of
    VK_Escape:  g12 := #27;
    VK_Enter:  g12 := #13;
  end;
end;

procedure Key13(key: integer);
begin
  case Key of
    VK_Escape:  gam := #27;
    VK_Enter:  gam := #13;
  end;
end;

procedure ger1;
begin
  g := Picture.Create('ger1.png');
end;

procedure ger2;
begin
  g := Picture.Create('ger2.png');
end;

procedure ger3;
begin
  g := Picture.Create('ger3.png');
end;

procedure ger111;
begin
  plat1 := PictureABC.Create(-10000, -10000, 'PlatformDev.png');plat1.Scale(1 / 2148 * WindowHeight);
  gg := Pictureabc.Create(-10000, -10000, 'ger1g.png');
  gg.Scale(WindowHeight / 2160);
  
  plat1.ToBack;
  gg.ToBack;
  
  gg.MoveTo(gg.Width div 2, (windowheight - gg.Height) div 2);
  plat1.MoveTo(0, 0);
end;

procedure ger121;
begin
  plat1 := PictureABC.Create(-10000, -10000, 'PlatformLV.png');plat1.Scale(1 / 2156 * WindowHeight);
  gg := Pictureabc.Create(-10000, -10000, 'ger2g.png');
  
  gg.Scale(WindowHeight / 2160);
  plat1.ToBack;
  gg.ToBack;
  gg.MoveTo(gg.Width div 2, (windowheight - gg.Height) div 2);
  plat1.MoveTo(0, 0);
end;

procedure ger131;
begin
  plat1 := PictureABC.Create(-10000, -10000, 'PlatformBHR.png');plat1.Scale(1 / 2156 * WindowHeight);
  gg := Pictureabc.Create(-10000, -10000, 'ger3g.png');
  
  gg.Scale(WindowHeight / 2160);
  
  plat1.ToBack;
  gg.ToBack;
  
  gg.MoveTo(gg.Width div 2, (windowheight - gg.Height) div 2);
  plat1.MoveTo(0, 0);
end;

procedure ger112;
begin
  plat2 := PictureABC.Create(-10000, -10000, 'PlatformDev.png');plat2.FlipHorizontal;plat2.Scale(1 / 2148 * WindowHeight);
  gg2 := Pictureabc.Create(-10000, -10000, 'ger1g.png');gg2.FlipHorizontal;
  
  
  gg2.Scale(WindowHeight / 2160);
  
  plat2.ToBack;
  gg2.ToBack;
  
  gg2.MoveTo(WindowWidth - gg2.Width * 3 div 2, (windowheight - gg2.Height) div 2);
  plat2.MoveTo(WindowWidth - plat2.Width, 0);
end;

procedure ger122;
begin
  plat2 := PictureABC.Create(-10000, -10000, 'PlatformLV.png');plat2.FlipHorizontal;plat2.Scale(1 / 2156 * WindowHeight);
  //plat2.draw(0,0,game);
  gg2 := Pictureabc.Create(-10000, -10000, 'ger2g.png');gg2.FlipHorizontal;
  
  gg2.Scale(WindowHeight / 2160);
  
  plat2.ToBack;
  gg2.ToBack;
  gg2.MoveTo(WindowWidth - gg2.Width * 3 div 2, (windowheight - gg2.Height) div 2);
  plat2.MoveTo(WindowWidth - plat2.Width, 0);
end;

procedure ger132;
begin
  plat2 := PictureABC.Create(-10000, -10000, 'PlatformBHR.png');plat2.FlipHorizontal;plat2.Scale(1 / 2156 * WindowHeight);
  gg2 := Pictureabc.Create(-10000, -10000, 'ger3g.png');gg2.FlipHorizontal;
  
  gg2.Scale(WindowHeight / 2160);
  
  plat2.ToBack;
  gg2.ToBack;
  
  gg2.MoveTo(WindowWidth - gg2.Width * 3 div 2, (windowheight - gg2.Height) div 2);
  plat2.MoveTo(WindowWidth - plat2.Width, 0);
end;

procedure plus1;
begin
  if b = 2 then begin
    plus.MoveTo(gg.Width div 2 + 10, (windowheight - plus.Height) div 2);
    plus.ToFront; end;
  if (b = 3) or (b = 4) or (b = 5) then begin
    if g11 = 1 then begin
      plus01.MoveTo(gg.Width div 2 + 10, (windowheight - plus.Height) div 2);
      plus01.ToFront; end;
    if g11 = 2 then begin
      plus02.MoveTo(gg.Width div 2 + 10, (windowheight - plus.Height) div 2);
      plus02.ToFront; end;
    if g11 = 3 then begin
      plus3.MoveTo(gg.Width div 2 + 10, (windowheight - plus.Height) div 2);
      plus3.ToFront; end;
  end;
end;

procedure plus2;
begin
  if b = 2 then begin
    plus.MoveTo(windowwidth - gg.Width div 2 * 3 + 10, (windowheight - plus.Height) div 2);
    plus.ToFront; end;
  if (b = 3) or (b = 4) or (b = 5) then begin
    if g21 = 1 then begin
      plus01.MoveTo(windowwidth - gg.Width div 2 * 3 + 10, (windowheight - plus.Height) div 2);
      plus01.ToFront; end;
    if g21 = 2 then begin
      plus02.MoveTo(windowwidth - gg.Width div 2 * 3 + 10, (windowheight - plus.Height) div 2);
      plus02.ToFront; end;
    if g21 = 3 then begin
      plus3.MoveTo(windowwidth - gg.Width div 2 * 3 + 10, (windowheight - plus.Height) div 2);
      plus3.ToFront; end;
  end;
end;

procedure damage1;
begin
 // LockDrawingObjects(); 
  
  while gg.Left < WindowWidth - gg2.Width * 2.5 do 
  begin
    
    da1.MoveOn(30, 0);
    he1.MoveOn(30, 0);
    gg.MoveOn(30, 0);
   // gg.Redraw;
   // da1.Redraw;
    //he1.Redraw;
    
  end;
  runAsync(play1);
  //UnLockDrawingObjects();
  if (b = 1)  or (b=2) then begin
    ud.MoveTo(windowwidth - gg.Width div 2 * 3, (windowheight - ud.Height) div 2 - 50);
    ud.ToFront; end;
  if (b = 3) or (b = 4) or (b = 5) then begin
    if g11 = 1 then begin
      ud1.MoveTo(windowwidth - gg.Width div 2 * 3, (windowheight - ud1.Height) div 2 - 50);
      ud1.ToFront; end;
    if g11 = 2 then begin
      ud2.MoveTo(windowwidth - gg.Width div 2 * 3, (windowheight - ud2.Height) div 2 - 50);
      ud2.ToFront; end;
    if g11 = 3 then begin
      ud3.MoveTo(windowwidth - gg.Width div 2 * 3, (windowheight - ud3.Height) div 2 - 50);
      ud3.ToFront; end;
  end;
  
  gg.Moveto(gg.Width div 2, (windowheight - gg.Height) div 2);
  da1.moveto(gg.Width div 2 * 3 - gg.Width div 3 + 5, windowheight  div 2 + gg.Height div 5);
  he1.moveto(gg.Width div 2 + 5, windowheight  div 2 + gg.Height div  5);
end;

procedure damage2;
begin
  while gg2.Left > gg.Width * 3 div 2 do 
  begin
    
    gg2.MoveOn(-30, 0);
    da2.MoveOn(-30, 0);
    he2.MoveOn(-30, 0);
  end;
  runAsync(play2);
  if (b = 1) or (b=2) then begin
    ud.MoveTo(gg.Width div 2, (windowheight - ud.Height) div 2 - 50);
    ud.ToFront; end;
  if (b = 3) or (b = 4) or (b = 5) then begin
    if g21 = 1 then begin
      ud1.MoveTo(gg.Width div 2, (windowheight - ud1.Height) div 2 - 50);
      ud1.ToFront; end;
    if g21 = 2 then begin
      ud2.MoveTo(gg.Width div 2, (windowheight - ud2.Height) div 2 - 50);
      ud2.ToFront; end;
    if g21 = 3 then begin
      ud3.MoveTo(gg.Width div 2, (windowheight - ud3.Height) div 2 - 50);
      ud3.ToFront; end;
  end;
  gg2.Moveto(WindowWidth - gg.Width * 3 div 2, (windowheight - gg2.Height) div 2);
  da2.moveto(windowWidth - gg.Width div 2 * 3 + 5, windowheight  div 2 + gg.Height div  5);
  he2.moveto(windowWidth - gg.Width div 2 * 3 + gg.Width div 3 * 2 + 5, windowheight  div 2 + gg.Height div  5);
end;

procedure bonus;
begin
  bon1 := Random(1, 16);
  bon2 := Random(1, 16);
  while bon2 = bon1 do bon2 := Random(1, 16);
  bon3 := Random(1, 16);
  while (bon3 = bon1) or (bon3 = bon2) do bon3 := Random(1, 16);
  bbb[bon1].tofront;
  bbb[bon2].tofront;
  bbb[bon3].tofront;
  bbb[bon1].moveto((windowwidth div 6 - bbb[bon1].Width div 2), (WindowHeight - bbb[bon1].Height) div 2);
  bbb[bon2].moveto((windowwidth div 2 - bbb[bon1].Width div 2), (WindowHeight - bbb[bon1].Height) div 2);
  bbb[bon3].moveto((windowwidth div 6 * 5 - bbb[bon1].Width div 2), (WindowHeight - bbb[bon1].Height) div 2);
  bon := 0;
  
  while bon = 0 do
  begin
    OnMouseDown := Mousedown5;
    OnKeyPress := key5;
  end;
  if hod = 1 then begin
    if bon = 9 then begin bon := bobo; och1 := och1 + 25; end;        //FeedBack - Upgraded
    if bon = 1 then hmax1 := hmax1 +  u1; // Адаптация: + 100% от атаки к вашему здоровью - Upgraded
    if bon = 2 then bonuss21 := bonuss21 + 1;
    if bon = 3 then 
    begin 
    h1 := h1 + 50; // Эликсир жизни: Восстанавливает 50 ед. здоровья - Fixed
    if h1 > hmax1 then h1:= hmax1; he1.Destroy;
    str(trunc(h1), qw21) 0;
    he1 := textabc.Create(gg.Width div 2 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw21, clwhite);
    end;
    if bon = 4 then bonuss41 := 1;
    if bon = 5 then bonuss51 := 1;
    if bon = 6 then bonuss61 := 1;
    if bon = 7 then bonuss71 := 1;
    if bon = 8 then
    begin u1 := u1 + 2; //Поднять Топор: +2 к Атаке - Fixed
    da1.Destroy;str(trunc(u1), qw11);
    da1 := textabc.Create(gg.Width div 2 * 3 - gg.Width div 3 + 5, windowheight  div 2 + gg.Height div 5, trunc(gg.Height / 863 * 60),  qw11, clwhite); 
    end;
    if bon = 10 then bonuss101 := 3;
    if bon = 11 then bonuss111 := bonuss111 + 2;
    if bon = 12 then begin // Занёрфить: +200% за ульту
      if is113 = 1 then begin is113 := 0;och1 := och1 + u1 * 2; end;
      if is123 = 1 then begin is123 := 0;och1 := och1 + u1 *2; end;
      if is133 = 1 then begin is133 := 0;och1 := och1 + u1 * 2; end;
      if is114 = 1 then begin is114 := 0;och1 := och1 + u1 * 2; end;
      if is124 = 1 then begin is124 := 0;och1 := och1 + u1 *2; end;
      if is134 = 1 then begin is134 := 0;och1 := och1 + u1 * 2; end;
      if is115 = 1 then begin is115 := 0;och1 := och1 + u1 * 2; end;
      if is125 = 1 then begin is125 := 0;och1 := och1 + u1 * 2; end;
      if is135 = 1 then begin is135 := 0;och1 := och1 + u1 * 2; end;
    end;
    if bon = 13 then bonuss131 := bonuss131+1;
    if bon = 14 then bonuss141 := 20;
    if bon = 15 then bonuss151 := 1;
    if bon = 16 then bonuss161 := 1;
  end;
  
  if hod = 2 then begin
    if bon = 9 then
    begin 
    bon := bobo;
    och2 := och2 + 25;
    end;
    if bon = 1 then hmax2 := hmax2 +  u2;
    if bon = 2 then bonuss22 := bonuss22 + 1;
    if bon = 3 then 
    begin 
    h2 := h2 + 50;
    if h2>hmax2 then h2:=hmax2;
    he2.Destroy;str(trunc(h2), qw22);
    he2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + gg.Width div 3 * 2 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw22, clwhite);
    end;
    if bon = 4 then bonuss42 := 1;
    if bon = 5 then bonuss52 := 1;
    if bon = 6 then bonuss62 := 1;
    if bon = 7 then bonuss72 := 1;
    if bon = 8 then
    begin
    u2 := u2 + 3;
    da2.Destroy;str(trunc(u2), qw12);
    da2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw12, clwhite);
    end;
    if bon = 10 then bonuss102 := 3;
    if bon = 11 then bonuss112 := bonuss112 + 2;
    if bon = 12 then begin
      if is213 = 1 then begin is213 := 0;och2 := och2 + u2 * 2; end;
      if is223 = 1 then begin is223 := 0;och2 := och2 + u2 * 2; end;
      if is233 = 1 then begin is233 := 0;och2 := och2 + u2 * 2; end;
      if is214 = 1 then begin is214 := 0;och2 := och2 + u2 * 2; end;
      if is224 = 1 then begin is224 := 0;och2 := och2 + u2 * 2; end;
      if is234 = 1 then begin is234 := 0;och2 := och2 + u2 * 2; end;
      if is215 = 1 then begin is215 := 0;och2 := och2 + u2 * 2; end;
      if is225 = 1 then begin is225 := 0;och2 := och2 + u2 * 2; end;
      if is235 = 1 then begin is235 := 0;och2 := och2 + u2 * 2; end;
    end;
    if bon = 13 then bonuss132 := bonuss132+1;
    if bon = 14 then bonuss142 := 20;
    if bon = 15 then bonuss152 := 1;
    if bon = 16 then bonuss162 := 1;
  end;
  bbb[bon1].moveto(-10000, -10000);
  bbb[bon2].moveto(-10000, -10000);
  bbb[bon3].moveto(-10000, -10000);bobo := bon;
end;


begin
Window.Caption := 'Heroes of Azeroth';
  MaximizeWindow;
  p := Picture.Create('pict.bmp');
  p.draw(0, 0, windowWidth, windowHeight);
  
  try
    var FPlayer := new SoundPlayer();
    FPlayer.Soundlocation := 'menu.wav';
    FPlayer.PlayLooping();
  except
end;
  SetFontName('Comic Sans MS');
  SetFontSize(30); 
  SetFontColor(clblack);
  SetBrushColor(clblack);
  setFontStyle(fsBold);
  DrawTextCentered(0, 0, windowWidth, windowHeight, 'Игра начинается!');
  loading:=Picture.Create('Loading.png');xxx:=xxx+trunc(523/2223* windowWidth/50);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
  bat   := Picture.Create('Prepare.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
  bat1  := Picture.Create('Map.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
  game  := Picture.Create('vub.bmp');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
  star  := Picture.Create('star.jpg');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
  anim:= SpriteABC.Create(-100000, -100000, 'anim.spinf');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult11 := Picture.Create('ult11.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult12 := Picture.Create('ult12.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult21 := Picture.Create('ult21.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult22 := Picture.Create('ult22.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult31 := Picture.Create('ult31.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult32 := Picture.Create('ult32.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult13 := Picture.Create('ult13.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult23 := Picture.Create('ult23.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ult33 := Picture.Create('ult33.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ad    := Picture.Create('ad.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 trol  := Picture.Create('BHR_Spotlight.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 vamp  := Picture.Create('LV_Spotlight.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 Headline := PictureABC.Create(-10000, -10000, 'Headline.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 Headline.Scale(windowwidth / headline.Width*951/2223);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ud := PictureABC.Create(-10000, -10000, 'Dmg.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 plus := PictureABC.Create(-10000, -10000, 'Health.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ud1 := PictureABC.Create(-10000, -10000, 'DmgSkillDev.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 plus01 := PictureABC.Create(-10000, -10000, 'HealthDevSkill.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ud2 := PictureABC.Create(-10000, -10000, 'DmgSkillLV.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 plus02 := PictureABC.Create(-10000, -10000, 'HealthLVSkill.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 ud3 := PictureABC.Create(-10000, -10000, 'DmgSkillBHR.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 plus3 := PictureABC.Create(-10000, -10000, 'HealthBHRSkill.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 fon := Picture.Create('fon.png');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 first := textabc.Create(-10000, -10000, 40, ' Ход синего игрока ', clblue);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 load := PictureABC.Create(-10000, -10000, 'Gates_Background.jpg');
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 load.Scalex := (windowwidth / 4335);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 load.Scaley := (windowheight / 3270);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/70);
  
 second := textabc.Create(-10000, -10000, 40, 'Ход красного игрока', clred);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 
  for i := 1 to 16 do 
  begin
    Str(i, bonu);
    bonu := bonu + '.png';
    bbb[i] := PictureABC.Create(-10000, -10000, bonu);
    bbb[i].Scale(WindowHeight / bbb[i].Height / 3 * 2);
  loading.Draw(trunc(844/2223* windowWidth),trunc(1234/1434* windowheight),xxx,trunc(52/1434* windowheight));xxx:=xxx+trunc(523/2223* windowWidth/50);
 end;
 
  SetFontSize(30);
  SetFontColor(clblack);
  SetBrushColor(clblack);
  setFontStyle(fsBold);
  
  var t := new Timer(100, TimerProc);
  
  p.draw(0, 0, windowWidth, windowHeight);
  DrawTextCentered(0, 0, windowWidth, windowHeight, 'Если все готовы, то мы начинаем!');
  t.Start;Sleep(2000);
  p.draw(0, 0, windowWidth, windowHeight);
  headline.MoveTo((windowWidth-headline.Width)div 2, (windowheight - headline.Height) div 2);
  
  t.Start;
  Sleep(2000);
  headline.destroy;
  bat.draw(0, 0, windowWidth, windowHeight);
  while gem = 0 do 
  begin
    dev := PictureABC.Create(-10000, -10000, 'ger1.png');
    lv := PictureABC.Create(-10000, -10000, 'ger2.png');
    bhr := PictureABC.Create(-10000, -10000, 'ger3.png');
    bhr.Scale(642 * windowheight / 768 / 863);
    dev.Scale(642 * windowheight / 768 / 863);
    lv.Scale(642 * windowheight / 768 / 863);
    g12 := '-';
    
    SetFontColor(clwhite); DrawTextCentered(0, 0, windowWidth, windowHeight, 'Синий игрок, пожалуйста, выберите себе героя');SetFontColor(clwhite);
    t.Start;
    Sleep(2000); vubor := 2;
    bhr.MoveTo(windowwidth - 1, 0);
    dev.MoveTo(-dev.Width, 0);
    lv.MoveTo((windowwidth - lv.Width) div 2, 0);
    while g11 = 0 do 
    begin
      bat1.draw(0, 0, windowWidth, windowHeight);
      lv.ToFront;
      bhr.ToFront;
      dev.ToFront;
      SetFontSize(30); DrawTextCentered(1, windowheight - 100, windowWidth, windowheight,    'Синий игрок');
      SetFontSize(20);
      g1 := 0;   while g1 = 0 do begin OnKeyPress := key1; OnMouseDown := Mousedown2; end;
      
      if g1 = 1 then 
      begin
        ad.draw(0, 0, windowWidth, windowHeight);
        while (g12 <> #13) and (g12 <> #27) do begin OnMouseDown := Mousedown3; OnKeyDown := key12; end;
        if (g12 = #13) then begin g11 := 1;bat.draw(0, 0, windowWidth, windowHeight); end;
        
        g12 := '-';
      end;
      if g1 = 2 then 
      begin
        vamp.draw(0, 0, windowWidth, windowHeight);
         while (g12 <> #13) and (g12 <> #27) do   begin OnMouseDown := Mousedown3; OnKeyDown := key12; end;
        if (g12 = #13) then begin g11 := 2;bat.draw(0, 0, windowWidth, windowHeight); end;
        
        g12 := '-';
      end;
      if g1 = 3 then 
      begin
        trol.draw(0, 0, windowWidth, windowHeight);
         while (g12 <> #13) and (g12 <> #27) do  begin OnMouseDown := Mousedown3; OnKeyDown := key12; end;
        if (g12 = #13) then begin g11 := 3;bat.draw(0, 0, windowWidth, windowHeight); end;
        
        g12 := '-';
      end;
    end;
    g12 := '-';SetFontSize(30);
    SetFontColor(clwhite);SetFontSize(50); DrawTextCentered(0, 0, windowWidth, windowHeight, 'Неплохой выбор!');
    SetFontSize(30);
    t.Start;
    Sleep(1000);bat.draw(0, 0, windowWidth, windowHeight);
    DrawTextCentered(0, 0, windowWidth, windowHeight, 'Красный игрок, пожалуйста, выбери своего героя');
    g1 := 0;SetFontColor(clwhite);
    t.Start;
    Sleep(1500);bat.draw(0, 0, windowWidth, windowHeight);
    vubor := 2;
    lv.MoveTo((windowwidth - lv.Width) div 2, 0);
    bhr.MoveTo(windowwidth - 1, 0);
    dev.MoveTo(-dev.Width, 0);
    while g21 = 0 do 
    begin
      bat1.draw(0, 0, windowWidth, windowHeight);
      lv.ToFront;
      bhr.ToFront;
      dev.ToFront;
      SetFontSize(30); DrawTextCentered(1, windowheight - 100, windowWidth, windowheight, 'Красный игрок');
      SetFontSize(20);
      
      g1 := 0; while g1 = 0 do begin
      OnKeyPress := key1;
      OnMouseDown := Mousedown2; 
      end;
      
      if g1 = 1 then 
      begin
        ad.draw(0, 0, windowWidth, windowHeight);
          while (g12 <> #13) and (g12 <> #27) do  begin OnMouseDown := Mousedown3; 
          OnKeyDown := key12; end;
        if (g12 = #13) then begin
        g21 := 1;
        bat.draw(0, 0, windowWidth, windowHeight); 
        end;
        
        g12 := '-';
      end;
      if g1 = 2 then 
      begin
        vamp.draw(0, 0, windowWidth, windowHeight);
       while (g12 <> #13) and (g12 <> #27) do
       begin
       OnMouseDown := Mousedown3;
       OnKeyDown := key12; 
       end;
        if (g12 = #13) then 
        begin
        g21 := 2;
        bat.draw(0, 0, windowWidth, windowHeight); 
        end;
        
        g12 := '-';
      end;
      if g1 = 3 then 
      begin
        trol.draw(0, 0, windowWidth, windowHeight);
          while (g12 <> #13) and (g12 <> #27) do
          begin
          OnMouseDown := Mousedown3; 
          OnKeyDown := key12; 
          end;
        if (g12 = #13) then
        begin 
        g21 := 3;
        bat.draw(0, 0, windowWidth, windowHeight);
        end;
        
        g12 := '-';
      end;
    end;
    //все гуд!!!!
   
    SetFontColor(clwhite);SetFontSize(40);  DrawTextCentered(0, 0, windowWidth, windowHeight,  'Выбор сделан и... ИГРА НАЧИНАЕТСЯ!');
    t.Start;
    Sleep(2000); 
    // Запуск героев 1-го уровня
    if g11 = 1 then  begin h1 := 450; u1 := 40; hmax1 := h1; end;
    if g21 = 1 then  begin h2 := 450; u2 := 40; hmax2 := h2; end;
    if g11 = 2 then  begin h1 := 300; u1 := 50; hmax1 := h1; end;
    if g21 = 2 then  begin h2 := 300; u2 := 50;hmax2 := h2; end;
    if g11 = 3 then  begin h1 := 500; u1 := 30; hmax1 := h1; end;
    if g21 = 3 then  begin h2 := 500; u2 := 30; hmax2 := h2; end;
    
    
    l1 := 1;
    l2 := 1;
    ul1 := -1;
    ul2 := -1;
    
    bhr.MoveTo(-10000,-10000); dev.MoveTo(-10000,-10000); lv.MoveTo(-10000,-10000);
  ran:=random(0,1); 
  // Стартовый опыт синего игрока
  if ran = 1 then
  begin  och2 := och2 + u2;
     bat.draw(0, 0, windowWidth, windowHeight);
   ochki1:= PictureABC.Create(-10000, -10000, 'Red_StartXP.png');
    ochki1.scale(windowWidth/ochki1.width/2);
     ochki1.moveto((windowWidth-ochki1.Width) div 2, (windowHeight  -ochki1.Height)div 2);
     end;
     // Стартовый опыт красного игрока
   if ran = 0 then
   begin  och1 := och1 + u1;
     bat.draw(0, 0, windowWidth, windowHeight);
    ochki1 := PictureABC.Create(-10000, -10000, 'Blue_StartXP.png'); 
    ochki1.scale(windowWidth/ochki1.width/2);
    ochki1.moveto((windowWidth-ochki1.Width)div 2,(windowHeight -ochki1.Height) div 2);
    end;
   // Стартовый ход синего игрока
    t.Start;
    Sleep(1500); ochki1.Destroy;
    if ran = 1 then 
    begin
     bat.draw(0, 0, windowWidth, windowHeight);
   ochki1:=PictureABC.Create(-10000, -10000, 'Blue_1st_Turn.png');
    ochki1.scale(windowWidth/ochki1.width/2);
     ochki1.moveto((windowWidth-ochki1.Width)div 2,trunc(1810/3201*windowHeight)-ochki1.Height);
     end;
     // Стартовый ход красного игрока
   if ran = 0 then
   begin
     bat.draw(0, 0, windowWidth, windowHeight);
    ochki1:=PictureABC.Create(-10000, -10000, 'Red_1st_Turn.png'); 
    ochki1.scale(windowWidth/ochki1.width/2);
    ochki1.moveto((windowWidth-ochki1.Width)div 2,trunc(1810/3201*windowHeight) -ochki1.Height);
    end;
    
     t.Start;
    Sleep(1500); ochki1.Destroy;
    str(trunc(u1), qw11);
    str(trunc(u2), qw12);
    str(trunc(h1), qw21);
    str(trunc(h2), qw22);
    da1 := textabc.Create(-1000, -1000, 50,  qw11, clwhite);
    da2 := textabc.Create(-1000, -1000, 50, qw12, clwhite);
    he1 := textabc.Create(-1000, -1000, 50, qw21, clwhite);
    he2 := textabc.Create(-1000, -1000, 50, qw22, clwhite);
    load.ToFront;
    game.draw(0, 0, windowWidth, windowHeight);
    
    load.MoveTo(0, 0);
    
    runAsync(animac);
    anim.MoveTo((windowWidth-anim.Width)div 2,0);
    
    anim.ToFront;
    //Начало игры:
    t.Start;
    Sleep(1500);
    // Инициализация героев:
    if her = 0 then begin
      her := 1;
      if (g11 = 1) then 
        ger111;
      if (g21 = 1) then 
        ger112;
      if (g11 = 2) then 
        ger121;
      if (g21 = 2) then
        ger122;
      if (g11 = 3) then 
        ger131;
      if (g21 = 3) then
        ger132;
      ud.scale((gg.Width / 4812) * 1.5);
      plus.scale(gg.Width / 1291);
      ud1.scale((gg.Width / 4812) * 1);
      plus01.scale(gg.Width / 1291);
      ud2.scale((gg.Width / 3554) * 1);
      plus02.scale(gg.Width / 1291);
      ud3.scale((gg.Width / 4490) * 1);
      plus3.scale(gg.Width / 1441);
      lev1 := PictureABC.Create(-10000, -10000, 'Level_Blue.png');
      lev2 := PictureABC.Create(-10000, -10000, 'Level_Red.png');
    end;
    //Музыка в матче
    try
      var FPlayer := new SoundPlayer();
      FPlayer.Soundlocation := 'game.wav';
      FPlayer.PlayLooping();
    except
   end;
   t.Start;
    Sleep(1500);
    lev1.Scale(lev1.Height / windowHeight * 2);
    lev2.Scale(lev2.Height / windowHeight * 2);
    lev1.MoveTo(10, 10);
    lev2.MoveTo(windowWidth - lev2.Width - 10, 10);
    runAsync(exitt);
    anim.MoveTo(-100000,-100000);
    load.moveto(-100000,-100000);
    qwert:=1;
    
    while (h2 > 0) do 
    begin      
      if (ran = 1) or (gemes = 1) then
      begin
      if (g11 = 1) then begin
        plat1.ToFront;
        lev1.ToFront;
        gg.ToFront;
        //Система уровней:
        if (och1 >= 200) and (och1 < 500) and (l1 < 2) then begin l1 := 2; h1 := h1 + 40; hmax1 := hmax1 + 40; u1 := u1 + 10;  end;
        if (och1 >= 500) and (och1 < 1000) and (l1 < 3) then begin l1 := 3; h1 := h1 + 60; hmax1 := hmax1 + 60; u1 := u1 + 20; end;
        if (och1 >= 1000) and (och1 < 1800) and (l1 < 4) then begin l1 := 4;h1 := h1 + 80; hmax1 := hmax1 + 80; u1 := u1 + 30; end;
        if (och1 >= 1800) and (och1 < 2925) and (l1 < 5)  then begin l1 := 5;h1 := h1 + 100; hmax1 := hmax1 + 100; u1 := u1 + 25; end;
        if (och1 >= 2925) and (och1 < 3500) and (l1 < 6) then begin l1 := 6;h1 := h1 + 120; hmax1 := hmax1 + 120; u1 := u1 + 25; end;
        if (och1 >= 3500) and (och1 < 5650) and (l1 < 7) then begin l1 := 7;h1 := h1 + 150; hmax1 := hmax1 + 150; u1 := u1 + 45; end;
        if (och1 >= 5650) and (och1 < 8650) and (l1 < 8) then begin l1 := 8;h1 := h1 + 200; hmax1 := hmax1 + 200; u1 := u1 + 55; end;
        if (och1 >= 8650) and (och1 < 12500) and (l1 < 9) then begin l1 := 9;h1 := h1 + 250; hmax1 := hmax1 + 250; u1 := u1 + 50; end;
        if (och1 >= 12500) and (l1 < 10) then begin l1 := 10;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 75; end;
      end;
      if (g21 = 1) then begin
        plat2.ToFront;
        lev2.ToFront;
        gg2.ToFront;
        if (och2 >= 200) and (och2 < 500) and (l2 < 2)   then begin l2 := 2;h2 := h2 + 40; hmax2 := hmax2 + 40;  u2 := u2 + 10;  end;
        if (och2 >= 500) and (och2 < 1000) and (l2 < 3)   then begin l2 := 3;h2 := h2 + 60;hmax2 := hmax2 + 60;   u2 := u2 + 20; end;
        if (och2 >= 1000) and (och2 < 1800) and (l2 < 4)   then begin l2 := 4;h2 := h2 + 80;hmax2 := hmax2 + 80;   u2 := u2 + 30; end;
        if (och2 >= 1800) and (och2 < 2925) and (l2 < 5)  then begin l2 := 5;h2 := h2 + 100;hmax2 := hmax2 + 100; u2 := u2 + 25; end;
        if (och2 >= 2925) and (och2 < 3500) and (l2 < 6) then begin l2 := 6;h2 := h2 + 120;hmax2 := hmax2 + 120; u2 := u2 + 25; end;
        if (och2 >= 3500) and (och2 < 5650) and (l2 < 7) then begin l2 := 7;h2 := h2 + 150;hmax2 := hmax2 + 150; u2 := u2 + 45; end;
        if (och2 >= 5650) and (och2 < 8650) and (l2 < 8) then begin l2 := 8;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 55; end;
        if (och2 >= 8650) and (och2 < 12500) and (l2 < 9) then begin l2 := 9;h2 := h2 + 250;hmax2 := hmax2 + 250; u2 := u2 + 50; end;
        if (och2 >= 12500) and (l2 < 10)                  then begin l2 := 10;h2 := h2 + 200;hmax2 := hmax2 + 200;u2 := u2 + 75; end;
      end;
      
      if (g11 = 2) then begin
        plat1.ToFront;
        lev1.ToFront;
        gg.ToFront;
        if (och1 >= 250) and (och1 < 670) and (l1 < 2)   then begin l1 := 2;h1 := h1 + 30; hmax1 := hmax1 + 30;  u1 := u1 + 20;  end;
        if (och1 >= 670) and (och1 < 1370) and (l1 < 3)   then begin l1 := 3;h1 := h1 + 30;hmax1 := hmax1 + 30;   u1 := u1 + 30; end;
        if (och1 >= 1370) and (och1 < 2500) and (l1 < 4)   then begin l1 := 4;h1 := h1 + 40;hmax1 := hmax1 + 40;   u1 := u1 + 40; end;
        if (och1 >= 2500) and (och1 < 4200) and (l1 < 5)  then begin l1 := 5;h1 := h1 + 50;hmax1 := hmax1 + 20;   u1 := u1 + 50; end;
        if (och1 >= 4200) and (och1 < 6600) and (l1 < 6) then begin l1 := 6;h1 := h1 + 50;hmax1 := hmax1 + 50;   u1 := u1 + 50; end;
        if (och1 >= 6600) and (och1 < 9800) and (l1 < 7) then begin l1 := 7;h1 := h1 + 100;hmax1 := hmax1 + 100; u1 := u1 + 50; end;
        if (och1 >= 9800) and (och1 < 13880) and (l1 < 8) then begin l1 := 8;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 50; end;
        if (och1 >= 13880) and (och1 < 19000) and (l1 < 9) then begin l1 := 9;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 75; end;
        if (och1 >= 19000) and (l1 < 10)                  then begin l1 := 10;h1 := h1 + 200;hmax1 := hmax1 + 200;u1 := u1 + 75; end;
      end;
      
      if (g21 = 2) then begin
        plat2.ToFront;
        lev2.ToFront;
        gg2.ToFront;
        if (och2 >= 250) and (och2 < 670) and (l2 < 2)   then begin l2 := 2;h2 := h2 + 30; hmax2 := hmax2 + 30;  u2 := u2 + 20;  end;
        if (och2 >= 670) and (och2 < 1370) and (l2 < 3)   then begin l2 := 3;h2 := h2 + 30;hmax2 := hmax2 + 30;   u2 := u2 + 30; end;
        if (och2 >= 1370) and (och2 < 2500) and (l2 < 4)   then begin l2 := 4;h2 := h2 + 40;hmax2 := hmax2 + 40;   u2 := u2 + 40; end;
        if (och2 >= 2500) and (och2 < 4200) and (l2 < 5)  then begin l2 := 5;h2 := h2 + 50;hmax2 := hmax2 + 50;   u2 := u2 + 50; end;
        if (och2 >= 4200) and (och2 < 6600) and (l2 < 6) then begin l2 := 6;h2 := h2 + 50;hmax2 := hmax2 + 50;   u2 := u2 + 50; end;
        if (och2 >= 6600) and (och2 < 9800) and (l2 < 7) then begin l2 := 7;h2 := h2 + 100;hmax2 := hmax2 + 100; u2 := u2 + 50; end;
        if (och2 >= 9800) and (och2 < 13880) and (l2 < 8) then begin l2 := 8;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 50; end;
        if (och2 >= 13880) and (och2 < 19000) and (l2 < 9) then begin l2 := 9;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 75; end;
        if (och2 >= 19000) and (l2 < 10)                  then begin l2 := 10;h2 := h2 + 200;hmax2 := hmax2 + 200;u2 := u2 + 75; end;
      end;
      
      if (g11 = 3) then begin
        plat1.ToFront;
        lev1.ToFront;
        gg.ToFront;
        if (och1 >= 150) and (och1 < 420) and (l1 < 2)   then begin l1 := 2;h1 := h1 + 50; hmax1 := hmax1 + 50;  u1 := u1 + 15;  end;
        if (och1 >= 420) and (och1 < 870) and (l1 < 3)   then begin l1 := 3;h1 := h1 + 75;hmax1 := hmax1 + 75;   u1 := u1 + 20; end;
        if (och1 >= 870) and (och1 < 1500) and (l1 < 4)   then begin l1 := 4;h1 := h1 + 100;hmax1 := hmax1 + 100; u1 := u1 + 15; end;
        if (och1 >= 1500) and (och1 < 2300) and (l1 < 5)  then begin l1 := 5;h1 := h1 + 125;hmax1 := hmax1 + 125; u1 := u1 + 10; end;
        if (och1 >= 2300) and (och1 < 3450) and (l1 < 6) then begin l1 := 6;h1 := h1 + 150;hmax1 := hmax1 + 150; u1 := u1 + 25; end;
        if (och1 >= 3450) and (och1 < 5050) and (l1 < 7) then begin l1 := 7;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 30; end;
        if (och1 >= 5050) and (och1 < 7200) and (l1 < 8) then begin l1 := 8;h1 := h1 + 300;hmax1 := hmax1 + 300; u1 := u1 + 35; end;
        if (och1 >= 7200) and (och1 < 10500) and (l1 < 9) then begin l1 := 9;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 60; end;
        if (och1 >= 10500) and (l1 < 10)                  then begin l1 := 10;h1 := h1 + 300;hmax1 := hmax1 + 300;u1 := u1 + 50; end;
      end;
      
      if (g21 = 3) then begin
        plat2.ToFront;
        lev2.ToFront;
        gg2.ToFront;
        if (och2 >= 150) and (och2 < 420) and (l2 < 2)   then begin l2 := 2;h2 := h2 + 50; hmax2 := hmax2 + 50;  u2 := u2 + 15;  end;
        if (och2 >= 420) and (och2 < 870) and (l2 < 3)   then begin l2 := 3;h2 := h2 + 75;hmax2 := hmax2 + 75;   u2 := u2 + 20; end;
        if (och2 >= 870) and (och2 < 1500) and (l2 < 4)   then begin l2 := 4;h2 := h2 + 100;hmax2 := hmax2 + 100; u2 := u2 + 15; end;
        if (och2 >= 1500) and (och2 < 2300) and (l2 < 5)  then begin l2 := 5;h2 := h2 + 125;hmax2 := hmax2 + 125; u2 := u2 + 10; end;
        if (och2 >= 2300) and (och2 < 3450) and (l2 < 6) then begin l2 := 6;h2 := h2 + 150;hmax2 := hmax2 + 150; u2 := u2 + 25; end;
        if (och2 >= 3450) and (och2 < 5050) and (l2 < 7) then begin l2 := 7;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 30; end;
        if (och2 >= 5050) and (och2 < 7200) and (l2 < 8) then begin l2 := 8;h2 := h2 + 300;hmax2 := hmax2 + 300; u2 := u2 + 35; end;
        if (och2 >= 7200) and (och2 < 10500) and (l2 < 9) then begin l2 := 9;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 60; end;
        if (och2 >= 10500) and (l2 < 10)                  then begin l2 := 10;h2 := h2 + 300;hmax2 := hmax2 + 300;u2 := u2 + 50; end;
      end;
      //Начало хода:
      hod := 1;
      h := h + 1; 
      if (l1 > 2) and (ul1 = -1) then ul1 := h mod 7; //Проверка 2-й суперспособности
      if (l1 > 4) and (ul3 = -1) then ul3 := h mod 9; //Проверка 3-й суперспособности
      if ogl2 = 1 then //Если вы оглушены:
      begin
        star.draw(0, 0, windowWidth, windowHeight);SetFontSize(50);  
        DrawTextCentered(0, 200, windowWidth, windowHeight, 'Вы оглушены на ход');SetFontSize(30);
        t.Start;
        Sleep(2000);game.draw(0, 0, windowWidth, windowHeight); ogl2 := 0;
        end else 
        begin
        da1.Destroy;
        da2.Destroy;
        he1.Destroy;
        he2.Destroy;
        str(trunc(u1), qw11);
        str(trunc(u2), qw12);
        str(trunc(h1), qw21);
        str(trunc(h2), qw22);
        da1 := textabc.Create(gg.Width div 2 * 3 - gg.Width div 3 + 5, windowheight  div 2 + gg.Height div 5, trunc(gg.Height / 863 * 60),  qw11, clwhite);
        da2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw12, clwhite);
        he1 := textabc.Create(gg.Width div 2 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw21, clwhite);
        he2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + gg.Width div 3 * 2 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw22, clwhite);
        first.MoveTo((windowWidth - first.Width) div 2, 40);SetFontColor(clwhite);
        bonus;
        //Отображение уровней героев:
        SetFontSize(lev1.Height div 5); 
        DrawTextCentered(0, 5, lev1.Width - 20, lev1.Height div 2, 'Уровень');
        DrawTextCentered(lev1.Width - 20, 5, lev1.Width, lev1.Height div 2, l1);
        DrawTextCentered(windowWidth - lev1.Width, 5, windowWidth - lev1.Width + 20, lev1.Height div 2, l2);
        DrawTextCentered(windowWidth - lev1.Width + 20, 5, windowWidth, lev1.Height div 2, 'Уровень');
        //Вывод границы до следующего уровня:
        if g11 = 1 then begin
          if och1 >= 12500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2)) end else
          if och1 >= 8650 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/12500');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 5650 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/8650');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 3500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/5650');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 2925 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/3500');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 1800 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/2925');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 1000 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/1800');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 500 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/1000');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 200 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/500');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 0 then    begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/200');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end
        end else
        
        if g11 = 2 then begin
          if och1 >= 19000 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1));                                                           DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 13880 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/19000');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 9800 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/13880');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 6600 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/9800');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 4200 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/6600');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 2500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/4200');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 1370 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/2500');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 670 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/1370');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 250 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/670');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 0 then    begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/250');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end
        end else 
        if g11 = 3 then begin
          if och1 >= 10500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 7200 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/10500');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 5050 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/7200');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 3450 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/5050');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 2300 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/3450');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 1500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/2300');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 870 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/1500');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 420 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/870');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 150 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/420');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och1 >= 0 then    begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(lev1.Width div 2, lev1.Height div 2, lev1.Width, lev1.Height, '/150');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end;
        end;
        //Открытые суперспосоности для 1 уровня:
        if ((h mod 5 = 0) and (g11 = 1)) or (is113 = 1) then
        begin
          is113 := 1;
          ult11.Draw(trunc(89 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
        if ((h mod 5 = 0) and (g11 = 2)) or (is123 = 1) then
        begin
          is123 := 1;    
          ult21.Draw(trunc(89 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
        if ((h mod 5 = 0) and (g11 = 3)) or (is133 = 1) then
        begin
          is133 := 1;
          ult31.Draw(trunc(89 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
           //Открытые суперспосоности для 3 уровня:
        if ((l1 > 2) and (h mod 7 = ul1) and (g11 = 1)) or (is114 = 1) then
        begin
          is114 := 1;
          ult12.Draw(trunc(3478 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
        if ((l1 > 2) and (h mod 7 = ul1) and (g11 = 2)) or (is124 = 1) then 
        begin
          is124 := 1;     
          ult22.Draw(trunc(378 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
        if ((l1 > 2) and (h mod 7 = ul1) and (g11 = 3)) or (is134 = 1) then 
        begin
          is134 := 1;   
          ult32.Draw(trunc(378 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
         //Открытые суперспосоности для 5 уровня:
        if ((l1 > 4) and (h mod 9 = ul3) and (g11 = 1)) or (is115 = 1) then
        begin
          is115 := 1;   
          ult13.Draw(trunc(667 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
        if ((l1 > 4) and (h mod 9 = ul3) and (g11 = 2)) or (is125 = 1) then
        begin
          is125 := 1;        
          ult23.Draw(trunc(667 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
        if ((l1 > 4) and (h mod 9 = ul3) and (g11 = 1)) or (is135 = 1) then
        begin
          is135 := 1;      
          ult33.Draw(trunc(667 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);
          end;
        
        
        //Выбор действия
        b := 0;
        while b = 0 do 
        begin
          OnMouseDown := Mousedown;
          OnKeyPress := key2;
        end;
        if (b = 1) and (bonuss71 = 0) then // Если атака и нет бонуса "Двойной в голову"
        begin
            if bonuss42 = 1 then //Бонус "Укрепить броню"
            begin 
            h1 := h1 - u2 * 0.6; // было 1.4
            bonuss42 := 0; 
            end
            if (bonuss61 = 1) and (h2 >= 100) then //Бонус "Плюнуть и врезать" (условие не выполнено) 
            //Противник получает на 10% больше урона
            begin
            h2 := h2 - u1 * 0.1;
            bonuss62 := 0; 
            end;
            if (bonuss61 = 1) and (h2 < 100) then  //Бонус "Плюнуть и врезать" (условие выполнено) 
            //Противник получает на 25% больше урона
            begin 
            h2 := h2 - u1 * 0.25; 
            bonuss61 := 0;
            end;
            if (bonuss101 > 0) then  //Бонус "Шаг за Шагом" - Upgraded по 10%
            begin
            bonuss101 := bonuss101 - 1;
            och1 := och1 + u1 * 0.1;
            end; // убрал: "* 1.4"
            och2 := och2 + bonuss112 / 100 * u1; // Работа бонуса "Предвкушение"
            if (bonuss42 = 0) and (bonuss61 = 0) then //Если нет усилений на атаку:
            begin
            h2 := h2 - u1;
            och1 := och1 + u1;
            end;
            damage1;
            str( -trunc(u1 + ran), text);
            textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);
            SetFontColor(clwhite);
          end;
        end;
        if (b = 1) and (bonuss71 = 1) then //Если атака и есть бонус "Двойной в голову"
        begin
          damage1;
          h2 := h2 - 2 * u1;
          str(-trunc(2 * u1), text);
          textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);
          texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);
          SetFontColor(clwhite);
          bonuss71 := 0;
        end;
        
        if b = 2 then begin // Я остановился здесь)
          if bonuss51 = 0 then begin
            ran := random(trunc(u1)); h1 := h1 + ran * 3; och1 := och1 + ran * 3 * 0.45;plus1;
            str(trunc(ran * 3), text);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
          end else begin
            bonuss51 := 0;
            ran := random(trunc(u1)); h2 := h2 - ran * 3; och1 := och1 + ran * 3 * 0.45;damage1;
            str(trunc(ran * 3), text);texth := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
          end;
        end;
        if (fir < 4) and (fir > 0) then begin fir := fir + 1;h2 := h2 - u1 * 0.5; end else  fir := 0;
        if (b = 3) and (g11 = 1) then begin
          damage1; is113 := 0; fir := 1; h2 := h2 - u1 * 4*(bonuss141/100+1)*(bonuss131/100+1);str(-trunc(u1 * 4*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
        end;
        if (b = 4) and (g11 = 1) then begin
          is114 := 0; hel := 2; h1 := h1 + u1 * 2.75*(bonuss141/100+1)*(bonuss131/100+1);plus1;str(trunc(u1 * 2.75*(bonuss141/100+1)*(bonuss131/100+1)), text);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
        end;                
        if hel = 1 then begin hel := 0;h1 := h1 + u1 * 2.75*(bonuss141/100+1)*(bonuss131/100+1); end;
        if hel = 2 then  hel := 1;                        
        if (b = 3) and (g11 = 2) then begin
          damage1; is123 := 0; h2 := h2 - u1 * 2.5*(bonuss141/100+1)*(bonuss131/100+1);h1 := h1 + u1 * 1.5*(bonuss141/100+1)*(bonuss131/100+1);str(-trunc(u1 * 2.5*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);plus1;str(trunc(u1 * 1.5*(bonuss141/100+1)*(bonuss131/100+1)), text);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);SetFontColor(clwhite);   
        end;      
        if (b = 4) and (g11 = 2) then begin
          damage1; is124 := 0; h2 := h2 - u1 * 1.2*(bonuss141/100+1)*(bonuss131/100+1);
          str(-trunc( u1 * 1.2*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);u1 := u1 * 1.2; end;      
        if (b = 3) and (g11 = 3) then begin
          damage1; is133 := 0; h2 := h2 - u1 * 1.5*(bonuss141/100+1)*(bonuss131/100+1); h1 := h1 + 4 * u1*(bonuss141/100+1)*(bonuss131/100+1); 
          str(-trunc(u1 * 1.5*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);plus1;str(trunc( u1 * (bonuss141/100+1)*4*(bonuss131/100+1)), text);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);SetFontColor(clwhite);            
        end;
        if (b = 4) and (g11 = 3) then begin
          damage1; is134 := 0; ogl1 := 1; h2 := h2 - u1 * 2*(bonuss141/100+1)*(bonuss131/100+1);       
          str(-trunc(u1 * 2*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);       
        end;
        if (b = 5) and (g11 = 1) then begin
          damage1; is115 := 0; h2 := h2 / 2/(bonuss141/100+1)/(bonuss131/100+1);str(-trunc(h2*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, '', clYellow);SetFontColor(clwhite);   
        end;
        if (b = 5) and (g11 = 2) then begin
          damage1; is125 := 0; h2 := h2 - h1*(bonuss141/100+1)*(bonuss131/100+1);str(-trunc(h1*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, '', clYellow);SetFontColor(clwhite);   
        end;
        if (b = 5) and (g11 = 2) then begin
          damage1; is135 := 0; h2 := h2 - och1 / 10*(bonuss141/100+1)*(bonuss131/100+1);str(-trunc(och1 / 10*(bonuss141/100+1)*(bonuss131/100+1)), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, '', clYellow);SetFontColor(clwhite);   
        end;
        
        
        
        t.Start;
        Sleep(1000);
        textd.Destroy;
        texth.Destroy;
        if (b = 1) and (ran > 80) then  prom.Destroy;
        b := 0;
        ud.MoveTo(-10000, -10000);
        plus.MoveTo(-10000, -10000);
        first.MoveTo(-10000, -10000);
        ud1.MoveTo(-10000, -10000);
        plus01.MoveTo(-10000, -10000);
        ud2.MoveTo(-10000, -10000);
        plus02.MoveTo(-10000, -10000);
        ud3.MoveTo(-10000, -10000);
        plus3.MoveTo(-10000, -10000);
        h1 := h1 + bonuss21 * 5;
        h2 := h2 + bonuss22 * 5;
        bonuss61 := 0;
        bonuss71 := 0;
        if (bonuss151 = 1) and (h2 < 0) then break else bonuss151 := 0;
        bonuss161 := 0;
        {game.draw(0, 0, windowWidth, windowHeight);}
        //lev1.ToFront;lev2.ToFront;
      end;
      
      end;
      gemes:=1;
      if h1 <= 0 then break;
      if h=0 then h := h + 1;
      hod := 2;
      if h1 > hmax1 then h1 := hmax1;
      if ogl1 = 1 then begin
        star.draw(0, 0, windowWidth, windowHeight);SetFontSize(50);  DrawTextCentered(0, 200, windowWidth, windowHeight, 'Вы оглушены на ход');SetFontSize(30);
        t.Start;
        Sleep(2000);game.draw(0, 0, windowWidth, windowHeight); ogl1 := 0; end else begin
        
        if (l2 > 2) and (ul2 = -1) then ul2 := h mod 7;
        if (l2 > 4) and (ul4 = -1) then ul4 := h mod 9;
        if (g11 = 1) then begin
          plat1.ToFront;
          lev1.ToFront;
          gg.ToFront;
          if (och1 >= 200) and (och1 < 500) and (l1 < 2)   then begin l1 := 2;h1 := h1 + 40; hmax1 := hmax1 + 40;  u1 := u1 + 10;  end;
          if (och1 >= 500) and (och1 < 1000) and (l1 < 3)   then begin l1 := 3;h1 := h1 + 60;hmax1 := hmax1 + 60;   u1 := u1 + 20; end;
          if (och1 >= 1000) and (och1 < 1800) and (l1 < 4)   then begin l1 := 4;h1 := h1 + 80;hmax1 := hmax1 + 80;   u1 := u1 + 30; end;
          if (och1 >= 1800) and (och1 < 2925) and (l1 < 5)  then begin l1 := 5;h1 := h1 + 100;hmax1 := hmax1 + 100; u1 := u1 + 25; end;
          if (och1 >= 2925) and (och1 < 3500) and (l1 < 6) then begin l1 := 6;h1 := h1 + 120;hmax1 := hmax1 + 120; u1 := u1 + 25; end;
          if (och1 >= 3500) and (och1 < 5650) and (l1 < 7) then begin l1 := 7;h1 := h1 + 150;hmax1 := hmax1 + 150; u1 := u1 + 45; end;
          if (och1 >= 5650) and (och1 < 8650) and (l1 < 8) then begin l1 := 8;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 55; end;
          if (och1 >= 8650) and (och1 < 12500) and (l1 < 9) then begin l1 := 9;h1 := h1 + 250;hmax1 := hmax1 + 250; u1 := u1 + 50; end;
          if (och1 >= 12500) and (l1 < 10)                  then begin l1 := 10;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 75; end;
        end;
        if (g21 = 1) then begin
          plat2.ToFront;
          lev2.ToFront;
          gg2.ToFront;
          if (och2 >= 200) and (och2 < 500) and (l2 < 2)   then begin l2 := 2;h2 := h2 + 40; hmax2 := hmax2 + 40;  u2 := u2 + 10;  end;
          if (och2 >= 500) and (och2 < 1000) and (l2 < 3)   then begin l2 := 3;h2 := h2 + 60;hmax2 := hmax2 + 60;   u2 := u2 + 20; end;
          if (och2 >= 1000) and (och2 < 1800) and (l2 < 4)   then begin l2 := 4;h2 := h2 + 80;hmax2 := hmax2 + 80;   u2 := u2 + 30; end;
          if (och2 >= 1800) and (och2 < 2925) and (l2 < 5)  then begin l2 := 5;h2 := h2 + 100;hmax2 := hmax2 + 100; u2 := u2 + 25; end;
          if (och2 >= 2925) and (och2 < 3500) and (l2 < 6) then begin l2 := 6;h2 := h2 + 120;hmax2 := hmax2 + 120; u2 := u2 + 25; end;
          if (och2 >= 3500) and (och2 < 5650) and (l2 < 7) then begin l2 := 7;h2 := h2 + 150;hmax2 := hmax2 + 150; u2 := u2 + 45; end;
          if (och2 >= 5650) and (och2 < 8650) and (l2 < 8) then begin l2 := 8;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 55; end;
          if (och2 >= 8650) and (och2 < 12500) and (l2 < 9) then begin l2 := 9;h2 := h2 + 250;hmax2 := hmax2 + 250; u2 := u2 + 50; end;
          if (och2 >= 12500) and (l2 < 10)                  then begin l2 := 10;h2 := h2 + 200;hmax2 := hmax2 + 200;u2 := u2 + 75; end;
        end;
        
        if (g11 = 2) then begin
          plat1.ToFront;
          lev1.ToFront;
          gg.ToFront;
          if (och1 >= 250) and (och1 < 670) and (l1 < 2)   then begin l1 := 2;h1 := h1 + 30; hmax1 := hmax1 + 30;  u1 := u1 + 20;  end;
          if (och1 >= 670) and (och1 < 1370) and (l1 < 3)   then begin l1 := 3;h1 := h1 + 30;hmax1 := hmax1 + 30;   u1 := u1 + 30; end;
          if (och1 >= 1370) and (och1 < 2500) and (l1 < 4)   then begin l1 := 4;h1 := h1 + 40;hmax1 := hmax1 + 40;   u1 := u1 + 40; end;
          if (och1 >= 2500) and (och1 < 4200) and (l1 < 5)  then begin l1 := 5;h1 := h1 + 50;hmax1 := hmax1 + 20;   u1 := u1 + 50; end;
          if (och1 >= 4200) and (och1 < 6600) and (l1 < 6) then begin l1 := 6;h1 := h1 + 50;hmax1 := hmax1 + 50;   u1 := u1 + 50; end;
          if (och1 >= 6600) and (och1 < 9800) and (l1 < 7) then begin l1 := 7;h1 := h1 + 100;hmax1 := hmax1 + 100; u1 := u1 + 50; end;
          if (och1 >= 9800) and (och1 < 13880) and (l1 < 8) then begin l1 := 8;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 50; end;
          if (och1 >= 13880) and (och1 < 19000) and (l1 < 9) then begin l1 := 9;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 75; end;
          if (och1 >= 19000) and (l1 < 10)                  then begin l1 := 10;h1 := h1 + 200;hmax1 := hmax1 + 200;u1 := u1 + 75; end;
        end;
        if (g21 = 2) then begin
          plat2.ToFront;
          lev2.ToFront;
          gg2.ToFront;
          if (och2 >= 250) and (och2 < 670) and (l2 < 2)   then begin l2 := 2;h2 := h2 + 30; hmax2 := hmax2 + 30;  u2 := u2 + 20;  end;
          if (och2 >= 670) and (och2 < 1370) and (l2 < 3)   then begin l2 := 3;h2 := h2 + 30;hmax2 := hmax2 + 30;   u2 := u2 + 30; end;
          if (och2 >= 1370) and (och2 < 2500) and (l2 < 4)   then begin l2 := 4;h2 := h2 + 40;hmax2 := hmax2 + 40;   u2 := u2 + 40; end;
          if (och2 >= 2500) and (och2 < 4200) and (l2 < 5)  then begin l2 := 5;h2 := h2 + 50;hmax2 := hmax2 + 50;   u2 := u2 + 50; end;
          if (och2 >= 4200) and (och2 < 6600) and (l2 < 6) then begin l2 := 6;h2 := h2 + 50;hmax2 := hmax2 + 50;   u2 := u2 + 50; end;
          if (och2 >= 6600) and (och2 < 9800) and (l2 < 7) then begin l2 := 7;h2 := h2 + 100;hmax2 := hmax2 + 100; u2 := u2 + 50; end;
          if (och2 >= 9800) and (och2 < 13880) and (l2 < 8) then begin l2 := 8;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 50; end;
          if (och2 >= 13880) and (och2 < 19000) and (l2 < 9) then begin l2 := 9;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 75; end;
          if (och2 >= 19000) and (l2 < 10)                  then begin l2 := 10;h2 := h2 + 200;hmax2 := hmax2 + 200;u2 := u2 + 75; end;
        end;
        
        if (g11 = 3) then begin
          plat1.ToFront;
          lev1.ToFront;
          gg.ToFront;
          if (och1 >= 150) and (och1 < 420) and (l1 < 2)   then begin l1 := 2;h1 := h1 + 50; hmax1 := hmax1 + 50;  u1 := u1 + 15;  end;
          if (och1 >= 420) and (och1 < 870) and (l1 < 3)   then begin l1 := 3;h1 := h1 + 75;hmax1 := hmax1 + 75;   u1 := u1 + 20; end;
          if (och1 >= 870) and (och1 < 1500) and (l1 < 4)   then begin l1 := 4;h1 := h1 + 100;hmax1 := hmax1 + 100; u1 := u1 + 15; end;
          if (och1 >= 1500) and (och1 < 2300) and (l1 < 5)  then begin l1 := 5;h1 := h1 + 125;hmax1 := hmax1 + 125; u1 := u1 + 10; end;
          if (och1 >= 2300) and (och1 < 3450) and (l1 < 6) then begin l1 := 6;h1 := h1 + 150;hmax1 := hmax1 + 150; u1 := u1 + 25; end;
          if (och1 >= 3450) and (och1 < 5050) and (l1 < 7) then begin l1 := 7;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 30; end;
          if (och1 >= 5050) and (och1 < 7200) and (l1 < 8) then begin l1 := 8;h1 := h1 + 300;hmax1 := hmax1 + 300; u1 := u1 + 35; end;
          if (och1 >= 7200) and (och1 < 10500) and (l1 < 9) then begin l1 := 9;h1 := h1 + 200;hmax1 := hmax1 + 200; u1 := u1 + 60; end;
          if (och1 >= 10500) and (l1 < 10)                  then begin l1 := 10;h1 := h1 + 300;hmax1 := hmax1 + 300;u1 := u1 + 50; end;
        end;
        if (g21 = 3) then begin
          plat2.ToFront;
          lev2.ToFront;
          gg2.ToFront;
          if (och2 >= 150) and (och2 < 420) and (l2 < 2)   then begin l2 := 2;h2 := h2 + 50; hmax2 := hmax2 + 50;  u2 := u2 + 15;  end;
          if (och2 >= 420) and (och2 < 870) and (l2 < 3)   then begin l2 := 3;h2 := h2 + 75;hmax2 := hmax2 + 75;   u2 := u2 + 20; end;
          if (och2 >= 870) and (och2 < 1500) and (l2 < 4)   then begin l2 := 4;h2 := h2 + 100;hmax2 := hmax2 + 100; u2 := u2 + 15; end;
          if (och2 >= 1500) and (och2 < 2300) and (l2 < 5)  then begin l2 := 5;h2 := h2 + 125;hmax2 := hmax2 + 125; u2 := u2 + 10; end;
          if (och2 >= 2300) and (och2 < 3450) and (l2 < 6) then begin l2 := 6;h2 := h2 + 150;hmax2 := hmax2 + 150; u2 := u2 + 25; end;
          if (och2 >= 3450) and (och2 < 5050) and (l2 < 7) then begin l2 := 7;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 30; end;
          if (och2 >= 5050) and (och2 < 7200) and (l2 < 8) then begin l2 := 8;h2 := h2 + 300;hmax2 := hmax2 + 300; u2 := u2 + 35; end;
          if (och2 >= 7200) and (och2 < 10500) and (l2 < 9) then begin l2 := 9;h2 := h2 + 200;hmax2 := hmax2 + 200; u2 := u2 + 60; end;
          if (och2 >= 10500) and (l2 < 10)                  then begin l2 := 10;h2 := h2 + 300;hmax2 := hmax2 + 300;u2 := u2 + 50; end;
        end; 
        second.MoveTo( (windowWidth - first.Width) div 2, 40);SetFontColor(clwhite);
        
        da1.Destroy;
        da2.Destroy;
        he1.Destroy;
        he2.Destroy;
        str(trunc(u1), qw11);
        str(trunc(u2), qw12);
        str(trunc(h1), qw21);
        str(trunc(h2), qw22);
        da1 := textabc.Create(gg.Width div 2 * 3 - gg.Width div 3 + 5, windowheight  div 2 + gg.Height div 5, trunc(gg.Height / 863 * 60),  qw11, clwhite);
        da2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw12, clwhite);
        he1 := textabc.Create(gg.Width div 2 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw21, clwhite);
        he2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + gg.Width div 3 * 2 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw22, clwhite);
        
        
        
        
        bonus;//БОНУС!!!!
         SetFontSize(lev1.Height div 5);
         DrawTextCentered(0, 5, lev1.Width - 20, lev1.Height div 2, 'Уровень');DrawTextCentered(lev1.Width - 20, 5, lev1.Width, lev1.Height div 2, l1);        DrawTextCentered(windowWidth - lev1.Width, 5, windowWidth - lev1.Width + 20, lev1.Height div 2, l2);DrawTextCentered(windowWidth - lev1.Width + 20, 5, windowWidth, lev1.Height div 2, 'Уровень');
        
        
        if g21 = 1 then begin
          if och2 >= 12500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1));DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '');                    DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 8650 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/12500');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 5650 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/8650');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 3500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/5650');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 2925 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/3500');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 1800 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/2925');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 1000 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/1800');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 500 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/1000');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 200 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/500');                 DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 0 then    begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/200');                 DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end
        end else
        
        if g21 = 2 then begin
          if och2 >= 19000 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '');                   DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 13880 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/19000');             DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 9800 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/13880');              DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 6600 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/9800');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 4200 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/6600');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 2500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/4200');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 1370 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/2500');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 670 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/1370');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 250 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/670');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 0 then    begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/250');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end
        end else 
        if g21 = 3 then begin
          if och2 >= 10500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '');                    DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 7200 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/10500');               DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 5050 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/7200');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 3450 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/5050');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 2300 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/3450');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 1500 then begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/2300');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 870 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/1500');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 420 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/870');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 150 then  begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/420');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end else
          if och2 >= 0 then    begin DrawTextCentered(0, lev1.Height div 2, lev1.Width div 2, lev1.Height, trunc(och1)); DrawTextCentered(windowWidth - lev1.Width div 2, lev1.Height div 2, windowWidth, lev1.Height, '/150');                DrawTextCentered(windowWidth - lev1.Width, lev1.Height div 2, windowWidth - lev1.Width div 2, lev1.Height, trunc(  och2))end;
        end;
        if ((h mod 5 = 0) and (g21 = 1)) or (is213 = 1) then begin
          is213 := 1;ult11.Draw(windowWidth - trunc(849 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        if ((h mod 5 = 0) and (g21 = 2)) or (is223 = 1) then begin
          is223 := 1;ult21.Draw(windowWidth - trunc(849 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        if ((h mod 5 = 0) and (g21 = 3)) or (is233 = 1) then begin
          is233 := 1;ult31.Draw(windowWidth - trunc(849 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        
        if ((l2 > 2) and (h mod 7 = ul2) and (g21 = 1)) or (is214 = 1) then begin
          is214 := 1;ult12.Draw(windowWidth - trunc(559 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        if ((l2 > 2) and (h mod 7 = ul2) and (g21 = 2)) or (is224 = 1) then begin
          is224 := 1;ult22.Draw(windowWidth - trunc(559 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        if ((l2 > 2) and (h mod 7 = ul2) and (g21 = 3)) or (is234 = 1) then begin
          is234 := 1;ult32.Draw(windowWidth - trunc(559 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70);   end;
        
        if ((l2 > 4) and (h mod 9 = ul4) and (g21 = 1)) or (is215 = 1) then begin
          is215 := 1;ult13.Draw(windowWidth - trunc(272 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        if ((l2 > 4) and (h mod 9 = ul4) and (g21 = 2)) or (is225 = 1) then begin
          is225 := 1;ult23.Draw(windowWidth - trunc(272 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        if ((l2 > 4) and (h mod 9 = ul4) and (g21 = 3)) or (is235 = 1) then begin
          is235 := 1;ult33.Draw(windowWidth - trunc(272 * windowheight / 2156), trunc(1799 * windowheight / 2156), 70, 70); end;
        
        
        
        b := 0;
        while b = 0 do 
        begin
          OnKeyPress := key2;
          OnMouseDown := Mousedown;
        end;
        if (b = 1) and (bonuss72 = 0) then
        begin
          if bonuss162 = 1 then ran := random(70) + 1 else ran := random(101) + 1;
          if ran < 16 then 
          begin
            damage2;if bonuss41 = 1 then begin h2 := h2 + u1 * 1.4; bonuss41 := 0; end;
            h1 := h1 - 1.4 * u2;
            och2 := och2 + 1.4 * u2; 
            str(-trunc(1.4 * u2), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
            if (bonuss62 = 1) and (h1 >= 100) then begin h1 := h1 - u2 * 0.1; bonuss62 := 0; end;
            if (bonuss62 = 1) and (h1 < 100) then begin h1 := h1 - u2 * 0.25; bonuss62 := 0; end;
            if (bonuss102 > 0) then begin bonuss102 := bonuss102 - 1;och2 := och2 + u2 * 0.07 * 1.4; end; 
            och1 := och1 + bonuss111 / 100 * (u2 * 1.4);
          end
          else
          if ran > 80 then begin prom := textabc.Create((windowwidth - 300) div 2, windowheight div 3 * 2, 50, 'Промах...', clwhite);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clred);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontSize(30); end
          else
          begin
            if bonuss41 = 1 then begin h2 := u1 * 1.4; bonuss41 := 0; end;
            ran := random(trunc(u2 / 10)) - u2 * 0.05;
            h1 := h1 - u2 + ran;
            och2 := och2 + u2 + ran;damage2;
            str( -trunc(u2 + ran), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
            if (bonuss102 > 0) then begin bonuss102 := bonuss102 - 1;och2 := och2 + (u2 + ran) * 0.07; end; 
            och1 := och1 + bonuss111 / 100 * (u2 + ran);
          end;
        end;
        if (b = 1) and (bonuss72 = 1) then
        begin
          damage2;
          
          h1 := h1 - 2 * u2;
          
          str(-trunc(2 * u2), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
          bonuss72 := 0;
        end;
        
        if b = 2 then begin
          if bonuss52 = 0 then begin
            ran := random(trunc(u2)); h2 := h2 + ran * 3; och2 := och2 + ran * 3 * 0.45;plus2;
            str(trunc(ran * 3), text);texth := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
          end else
          begin
            bonuss52 := 0;
            ran := random(trunc(u2)); h1 := h1 - ran * 3; och2 := och2 + ran * 3 * 0.45;damage2;
            str(trunc(ran * 3), text);texth := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
          end;
        end;
        if (fir2 < 4) and (fir2 > 0) then begin fir2 := fir2 + 1;h1 := h1 - u2 * 0.5*(bonuss142/100+1)*(bonuss132/100+1); end else  fir2 := 0;
        if (b = 3) and (g21 = 1) then begin
          damage2; is213 := 0; fir2 := 1; h1 := h1 - u2 * 4*(bonuss142/100+1)*(bonuss132/100+1);str(-trunc(u2 * 4*(bonuss142/100+1)*(bonuss132/100+1)), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
        end;
        if (b = 4) and (g21 = 1) then begin
          is214 := 0; hel2 := 2; h2 := h2 + u2*(bonuss142/100+1) * 2.75*(bonuss132/100+1);plus2;str(trunc(u2 * 2.75*(bonuss142/100+1)*(bonuss132/100+1)), text);texth := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
        end;  
        if (b = 5) and (g21 = 1) then begin
          damage2; is215 := 0;  h1 := h1 / 2/(bonuss142/100+1)/(bonuss132/100+1);str(-trunc(h1*(bonuss132/100+1)*(bonuss142/100+1)), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
        end;
        if hel2 = 1 then begin hel2 := 0;h2 := h2 + u2 * 2.75*(bonuss142/100+1)*(bonuss132/100+1); end;
        if hel2 = 2 then  hel2 := 1;                        
        if (b = 3) and (g21 = 2) then begin
          damage2; is223 := 0; h1 := h1 - u2 * 2.5*(bonuss142/100+1)*(bonuss132/100+1);h2 := h2 + u2 * 1.5*(bonuss142/100+1)*(bonuss132/100+1);str(-trunc(u2 * 2.5*(bonuss142/100+1)*(bonuss132/100+1)), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);plus2;str(trunc(u2 * 1.5*(bonuss142/100+1)*(bonuss132/100+1)), text);texth := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);SetFontColor(clwhite);   
        end;      
        if (b = 4) and (g21 = 2) then begin
          damage2; is224 := 0; h1 := h1 - u2 * 1.2*(bonuss142/100+1)*(bonuss132/100+1);
          str(-trunc( u2 * 1.2*(bonuss142/100+1)*(bonuss132/100+1)), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);u2 := u2 * 1.2; end;      
        if (b = 5) and (g21 = 2) then begin
          damage2; is225 := 0; h1 := h1 - h2*(bonuss142/100+1)*(bonuss132/100+1);
          str(-trunc( h2*(bonuss142/100+1)*(bonuss132/100+1)), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite); end;      
        
        if (b = 3) and (g21 = 3) then begin
          damage2; is233 := 0; h1 := h1 - u2 * 1.5*(bonuss142/100+1)*(bonuss132/100+1); h2 := h2 + 4 * u2*(bonuss142/100+1)*(bonuss132/100+1); 
          str(-trunc(u2 * 1.5*(bonuss142/100+1)*(bonuss132/100+1)), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);plus2;str(trunc( u2 * 4*(bonuss142/100+1)*(bonuss132/100+1)), text);texth := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clYellow);SetFontColor(clwhite);            
        end;
        if (b = 4) and (g21 = 3) then begin
          damage2; is234 := 0; ogl2 := 1; h1 := h1 - u2 * 2*(bonuss142/100+1)*(bonuss132/100+1);       
          str(-trunc(u2 * 2*(bonuss142/100+1)*(bonuss132/100+1)), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);       
        end;  
        if (b = 5) and (g21 = 3) then begin
          damage2; is235 := 0; h1 := h1 - och2*(bonuss142/100+1)*(bonuss132/100+1) / 10;
          str(-trunc( och2*(bonuss142/100+1)*(bonuss132/100+1) / 10), text);textd := textabc.Create(gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);       
        end;
        
        t.Start;
        Sleep(1500);
        textd.Destroy;
        texth.Destroy;
        if (b = 1) and (ran > 80) then prom.Destroy;b := 0;
        ud.MoveTo(-10000, -10000);
        plus.MoveTo(-10000, -10000);
        ud1.MoveTo(-10000, -10000);
        plus01.MoveTo(-10000, -10000);
        ud2.MoveTo(-10000, -10000);
        plus02.MoveTo(-10000, -10000);
        ud3.MoveTo(-10000, -10000);
        plus3.MoveTo(-10000, -10000);
        second.MoveTo(-10000, -10000);
        h1 := h1 + bonuss21 * 5;
        h2 := h2 + bonuss22 * 5;
        bonuss62 := 0;
        bonuss72 := 0;
        if (bonuss152 = 1) and (h1 < 0) then break else bonuss152 := 0;
        bonuss162 := 0;
        {game.draw(0, 0, windowWidth, windowHeight);}
        //lev1.ToFront;
        //lev2.ToFront; 
      end;
      if h2 > hmax2 then h2 := hmax2;
    end;
    try
        var FPlayer := new SoundPlayer();
        FPlayer.Soundlocation := 'menu.wav';
        FPlayer.PlayLooping();
      except
      end;
      lev1.Destroy;
      lev2.Destroy; 
      gg.Destroy; 
      gg2.Destroy;
      plat1.Destroy; 
      plat2.Destroy;
      
      fon.draw(0, 0, windowWidth, windowHeight);
     
   if h2 <= 0 then begin   
    if g11=1 then gg2:= PictureABC.Create((windowWidth-679)div 2,-1000, 'ger1.png');
    if g11=2 then gg2:= PictureABC.Create((windowWidth-679)div 2,-1000, 'ger2.png');
    if g11=3 then gg2:= PictureABC.Create((windowWidth-679)div 2,-1000, 'ger3.png');end 
    else begin
    if g21=1 then gg2:= PictureABC.Create((windowWidth-679)div 2,-1000, 'ger1.png');
    if g21=2 then gg2:= PictureABC.Create((windowWidth-679)div 2,-1000, 'ger2.png');
    if g21=3 then gg2:= PictureABC.Create((windowWidth-679)div 2,-1000, 'ger3.png');
    end;
    gg2.Scale(WindowWidth/gg2.Width*1580/5335);
    gg2.moveto((windowWidth-gg2.Width)div 2-2,-gg2.Height-5);
while gg2.Top<0 do gg2.moveon(0,10);

    SetFontColor(clblack);
   while (gam <> #27) and (gam <> #13) do begin OnKeyDown := key13;OnMouseDown := MouseDown4 end;
    
    if (gam = #13) then 
    begin
      
      bonuss21 := 0; bonuss22 := 0; bonuss41 := 0; bonuss42 := 0; bonuss51 := 0; bonuss52 := 0; bonuss61 := 0; bonuss62 := 0; bonuss71 := 0; bonuss72 := 0; g11 := 0; g1 := 0; g21 := 0; l1 := 0; l2 := 0; h := 0; b := 0;  fir2 := 0; fir := 0; ul1 := 0; ul2 := 0; ul3 := 0; ul4 := 0; ff := 0; ogl1 := 0; ogl2 := 0; is123 := 0; is124 := 0; is133 := 0; is134 := 0; vubor := 0; i := 0; is113 := 0; is114 := 0; is223 := 0; is224 := 0; is233 := 0; is234 := 0; is213 := 0; is214 := 0; is115 := 0; is125 := 0; is135 := 0; is215 := 0; is225 := 0; is235 := 0;  her := 0; hod := 0; exx := 0; bon1 := 0; bon2 := 0; bon3 := 0; bon := 0; g12 := '-'; gam := '-';
     bhr.Destroy; dev.Destroy; lv.Destroy;  da1.Destroy; he1.Destroy; da2.Destroy; he2.Destroy; texth.Destroy; textd.Destroy; 
      ran := 0; h1 := 0; h2 := 0; och1 := 0; och2 := 0; hmax1 := 0; u1 := 0; u2 := 0; hmax2 := 0; hel := 0; hel2 := 0;
       gg2.Destroy;
       
      t.Start;
      Sleep(1500);bat.draw(0, 0, windowWidth, windowHeight);
    end;
    if (gam = #27) then gem := 1;
    gam := '-';
    
  end;
  fon := Picture.Create('VKNeezJcHF8.jpg');SetFontColor(clblack);SetFontSize(50);
  fon.draw(0, 0, windowWidth, windowHeight);DrawTextCentered(0, 0, windowWidth,windowHeight, 'До новых встреч!');
  t.Start;
  Sleep(2000);
  closewindow;
end.