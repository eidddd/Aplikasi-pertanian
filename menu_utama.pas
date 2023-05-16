unit menu_utama;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.XPMan, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TForm2 = class(TForm)
    Shape4: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Image2: TImage;
    Label4: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    XPManifest1: TXPManifest;
    Image1: TImage;
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Wilayah, komoditas, Masa_Tanam;

procedure TForm2.Button2Click(Sender: TObject);
begin
form3.show;
form2.hide;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
form5.show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
form4.show ;
form2.Hide;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
