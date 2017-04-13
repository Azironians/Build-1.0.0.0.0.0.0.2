uses System, System.Windows.Forms;
 
var f : Form;
    btn : Button;
 
procedure ButtonClick(sender: object; e: EventArgs);
begin
  MessageBox.Show('Hello world!');
end;    
 
begin
  f := new Form;
  btn := new Button;
  btn.Text := 'Clivcmgncngcngc fxme';
  btn.Click += ButtonClick;
  f.Controls.Add(btn);
  Application.Run(f);
end.