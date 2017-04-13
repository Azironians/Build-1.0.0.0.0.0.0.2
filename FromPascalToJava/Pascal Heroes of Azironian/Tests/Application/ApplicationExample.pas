uses System, System.IO, System.Windows.Forms, System.Drawing;



var f: form;
m: MainMenu;
mi1: MenuItem;
mi2: MenuItem;
i: Icon;
begin
f := new Form;
m:= new MainMenu();
mi1 := new MenuItem();
mi2 := new MenuItem();
mi1.Text := 'File';
mi2.Text := 'Edit';
m.MenuItems.Add(mi1);
m.MenuItems.Add(mi2);
i := new Icon('Icon.ico');
f.Icon := i;

Application.Run(f);




end.



{
   // Create an empty MainMenu.
   MainMenu mainMenu1 = new MainMenu();

   MenuItem menuItem1 = new MenuItem();
   MenuItem menuItem2 = new MenuItem();

   menuItem1.Text = "File";
   menuItem2.Text = "Edit";
   // Add two MenuItem objects to the MainMenu.
   mainMenu1.MenuItems.Add(menuItem1);
   mainMenu1.MenuItems.Add(menuItem2);

   // Bind the MainMenu to Form1.
   Menu = mainMenu1;   
}