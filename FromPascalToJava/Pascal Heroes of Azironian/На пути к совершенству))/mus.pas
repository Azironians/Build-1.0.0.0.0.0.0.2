uses
 Timers,ABCObjects, graphABC,system.threading,System.Media;


var
  g11, g1, g21, l1, l2, h, b,  fir2, fir, ul1, ul2, ff, ogl1, ogl2, gem, is123, is124, is133, is134, is113, is114, is223, is224, is233, is234, is213, is214,her: longint;i: int64;g12, gam: char;
  s1, s2, s3, s12, s22: string;
  p,g,bat,bat1,game,star,fon,hell,dam,yes,no, ult11,ult12,ult21,ult22,ult31,ult32,plus,vamp,trol,ad: Picture;
  ran, h1, h2,    och1, och2, hmax1, u1, u2, hmax2, hel, hel2: real;
  gg,gg2:PictureABC;
  
 procedure runAsync(proc:procedure);
begin
var t:=new Thread(proc);
t.Start;
end;
 
begin 

var FPlayer :=new SoundPlayer;

FPlayer.PlayLooping('menu.wav');
//FPlayer.Soundlocation:=;
FPlayer.play('udar.wav'); 

end.