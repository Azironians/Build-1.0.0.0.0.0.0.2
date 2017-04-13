if hod = 2 then begin
    if bon = 9 then begin
    bon := bobo;
    och2 := och2 + 10;
    end;
    if bon = 1 then hmax2 := hmax2 +  u2;
    if bon = 2 then bonuss22 := bonuss22 + 1;
    if bon = 3 then begin
    h2 := h2 + 100;
    if h2>hmax2 then h2:=hmax2;      he2.Destroy;str(trunc(h2), qw22);he2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + gg.Width div 3 * 2 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw22, clwhite); 
    end;
    if bon = 4 then bonuss42 := 1;
    if bon = 5 then bonuss52 := 1;
    if bon = 6 then bonuss62 := 1;
    if bon = 7 then bonuss72 := 1;
    if bon = 8 then begin u2 := u2 + 3;da2.Destroy;str(trunc(u2), qw12);da2 := textabc.Create(windowWidth - gg.Width div 2 * 3 + 5, windowheight  div 2 + gg.Height div  5, trunc(gg.Height / 863 * 60),  qw12, clwhite); end;
    if bon = 10 then bonuss102 := 3;
    if bon = 11 then bonuss112 := bonuss112 + 2;
    if bon = 12 then begin
      if is213 = 1 then begin is213 := 0;och2 := och2 + u2 * 4; end;
      if is223 = 1 then begin is223 := 0;och2 := och2 + u2 * 4; end;
      if is233 = 1 then begin is233 := 0;och2 := och2 + u2 * 4; end;
      if is214 = 1 then begin is214 := 0;och2 := och2 + u2 * 4; end;
      if is224 = 1 then begin is224 := 0;och2 := och2 + u2 * 4; end;
      if is234 = 1 then begin is234 := 0;och2 := och2 + u2 * 4; end;
      if is215 = 1 then begin is215 := 0;och2 := och2 + u2 * 4; end;
      if is225 = 1 then begin is225 := 0;och2 := och2 + u2 * 4; end;
      if is235 = 1 then begin is235 := 0;och2 := och2 + u2 * 4; end;
    end;
    if bon = 13 then bonuss132 := bonuss132+1;
    if bon = 14 then bonuss142 := 20;
    if bon = 15 then bonuss152 := 1;
    if bon = 16 then bonuss162 := 1;
  end;