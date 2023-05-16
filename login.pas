unit login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    BLogin: TButton;
    Label1: TLabel;
    Label2: TLabel;
    EPetani: TEdit;
    EKatasandi: TEdit;
    procedure BLoginClick(Sender: TObject);
    procedure EPetaniKeyPress(Sender: TObject; var Key: Char);
    procedure EKatasandiKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses umodul, menu_utama;

procedure TForm1.BLoginClick(Sender: TObject);
begin
begin
  if DataModule2.QueryLogin.Locate('username',EPetani.Text,[]) then
    begin
      // mengecek lagi password saat username sesuai tabel/benar
      if DataModule2.QueryLogin.Locate('password',EKatasandi.Text,[]) then
        begin
          //posisi password benar
          Form2.show;
          Form1.Hide;
          MessageBox(Handle,'SELAMAT DATANG','INFO',MB_ICONINFORMATION);
          EPetani.Clear;
          EKatasandi.Clear;
        end else
        begin
          //password salah tapi posisi username benar
          ShowMessage('Password Anda salah');
          Exit;
        end;
    end else
    begin
      // bila user tidak ada di tabel saat diketikan
      ShowMessage('Username atau Password salah');
      Exit;
    end;
end;
end;

procedure TForm1.EKatasandiKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  if DataModule2.QueryLogin.Locate('username',EPetani.Text,[]) then
    begin
      // mengecek lagi password saat username sesuai tabel/benar
      if DataModule2.QueryLogin.Locate('password',EKatasandi.Text,[]) then
        begin
          //posisi password benar
          Form2.show;
          Form1.Hide;
          MessageBox(Handle,'SELAMAT DATANG','INFO',MB_ICONINFORMATION);
          EPetani.Clear;
          EKatasandi.Clear;
        end else
        begin
          //password salah tapi posisi username benar
          ShowMessage('Password Anda salah');
          Exit;
        end;
    end else

    begin
      // bila user tidak ada di tabel saat diketikan
      ShowMessage('Username atau Password salah');
      Exit;
    end;
  end;
end;

procedure TForm1.EPetaniKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then EKatasandi.SetFocus;
end;

end.
