 b := 0;
        while b = 0 do 
        begin
          OnMouseDown := Mousedown;
          OnKeyPress := key2;
        end;
        if (b = 1) and (bonuss71 = 0) then //если была атата и не было дд
        begin
          if bonuss161 = 1 then ran := random(70) + 1 else ran := random(101) + 1;
          if ran < 16 then 
          begin
            damage1;
            h2 := h2 - 1.4 * u1;
            och1 := och1 + 1.4 * u1; 
            str(-trunc(1.4 * u1), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
            if bonuss42 = 1 then begin h1 := h1 + u2 * 1.4; bonuss42 := 0; end;
            if (bonuss61 = 1) and (h2 >= 100) then begin h2 := h2 - u1 * 0.1; bonuss62 := 0; end;
            if (bonuss61 = 1) and (h2 < 100) then begin h2 := h2 - u1 * 0.25; bonuss62 := 0; end;
            if (bonuss101 > 0) then begin bonuss101 := bonuss101 - 1;och1 := och1 + 1.4 * u1 * 0.07; end; 
            och2 := och2 + bonuss112 / 100 * 1.4 * u1;
          end
          else
          if ran > 80 then begin prom := textabc.Create((windowwidth - 300) div 2, windowheight div 3 * 2, 50, 'Промах...', clwhite);textd := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clred);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontSize(30); end else 
          begin
            ran := random(trunc(u1 / 10)) - u1 * 0.05;
            h2 := h2 - u1 + ran;
            och1 := och1 + u1 + ran;damage1;
            str( -trunc(u1 + ran), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
            if (bonuss61 = 1) and (h2 >= 100) then begin h2 := h2 - u1 * 0.1; bonuss62 := 0; end;
            if (bonuss61 = 1) and (h2 < 100) then begin h2 := h2 - u1 * 0.25; bonuss62 := 0; end;
            if (bonuss101 > 0) then begin bonuss101 := bonuss101 - 1;och1 := och1 + (u1 + ran) * 0.07; end; 
            if bonuss42 = 1 then begin h1 := u2 * 1.4; bonuss42 := 0; end;
            och2 := och2 + bonuss112 / 100 * (u1 + ran);
          end;
        end;
        if (b = 1) and (bonuss71 = 1) then begin
          damage1;
          h2 := h2 - 2 * u1;
          str(-trunc(2 * u1), text);textd := textabc.Create(windowwidth - gg.width - 50, windowheight div 2 - 60, 50, text, clwhite);texth := textabc.Create(windowwidth - gg.width, windowheight div 2, 50, '', clgreen);SetFontColor(clwhite);
          bonuss71 := 0;
        end;
        
        if b = 2 then begin
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
        