unit Dashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.XPMan;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Label3: TLabel;
    Shape3: TShape;
    Image2: TImage;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Shape1: TShape;
    Shape4: TShape;
    XPManifest1: TXPManifest;
    Button7: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

uses DModul, LoginPengurus, Peralatan, merek, bagian;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  form4.show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  application.Terminate;
end;

end.
