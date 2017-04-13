{$reference System.Drawing.dll}
{$apptype windows}
{$reference 'System.Windows.Forms.dll'}
{$reference 'System.Drawing.dll'}
uses System, System.Windows.Forms, System.Drawing;
    
var f: Form;
//var l: Label;
var b, c: Button;
var p: Point;
var s: Size;
var t: TextBox;

procedure ButtonClick(sender: object; e: EventArgs);
begin
var str: string;
str := t.Text;
  MessageBox.Show(str);
  Write(str);
end;

begin
p := new Point(40, 120);
s := new Size(75, 23);
f := new Form();
f.Text := 'My graphic console';
f.StartPosition := FormStartPosition.CenterScreen;
b := new Button();
b.Location := p;
b.Size := s;
b.Text := 'OK';
b.DialogResult := DialogResult.OK;
f.AcceptButton := b;
f.Controls.Add(b);

c := new Button();
c.Location := new Point(150, 120);
c.Size := new Size(75, 23);
c.Text := 'Cancel';
c.DialogResult := DialogResult.Cancel;
f.CancelButton := c;
f.Controls.Add(c);

t := new TextBox();
t.Multiline := true;
t.Text := '1';
t.Location := new Point(10,40);
t.Size := new Size(260, 60); 
t.Dock := DockStyle.Fill;
//Полосы прокрутки
t.ScrollBars := ScrollBars.Both;
//Устанавливаем шрифт
t.Font := new System.Drawing.Font('Courier New',10);

f.Controls.Add(t);
b.Click += ButtonClick;
Application.Run(f);
var str: string;
var sb := new StringBuilder(); 
T.AllowDrop := true;
//var stream := new System.IO.TextReader(t.Text);
//str := stream.ReadLine;


end.