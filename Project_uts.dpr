program Project_uts;

uses
  Vcl.Forms,
  login in 'login.pas' {Form1},
  umodul in 'umodul.pas' {DataModule2: TDataModule},
  menu_utama in 'menu_utama.pas' {Form2},
  komoditas in 'komoditas.pas' {Form3},
  Masa_Tanam in 'Masa_Tanam.pas' {Form4},
  Wilayah in 'Wilayah.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
