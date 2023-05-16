unit Wilayah;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eKd_Wilayah: TEdit;
    eNama: TEdit;
    eDesa: TEdit;
    eKec: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses umodul, menu_utama;

procedure TForm5.Button1Click(Sender: TObject);
begin
try
  with DataModule2.QueryWilayah do
  begin
    Append;
    FieldByName('kd_wilayah').AsString:=eKd_Wilayah.Text;
    FieldByName('nama').AsString:=eNama.Text;
    FieldByName('desa').AsString:=eDesa.Text;
    FieldByName('kecamatan').AsString:=eKec.Text;
    post;

  end;
except
  on salah:Exception do
  ShowMessage(salah.Message);
end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
try
  with DataModule2.QueryWilayah do
  begin
    Edit;
    FieldByName('kd_wilayah').AsString:=eKd_Wilayah.Text;
    FieldByName('nama').AsString:=eNama.Text;
    FieldByName('desa').AsString:=eDesa.Text;
    FieldByName('kecamatan').AsString:=eKec.Text;
    post;

  end;
except
  on salah:Exception do
  ShowMessage(salah.Message);
end;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  if(
  (Trim(eKd_Wilayah.Text)='') and
  (Trim(eNama.Text)='') and
  (Trim(eDesa.Text)='') and
  (Trim(eKec.Text)='')
  ) then
    begin
      Beep;
      ShowMessage('Silahkan Pilih Data terlebih dahulu !!!!');
      DBGrid1.SetFocus;
      Exit;
    end;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
Form2.show;
end;

end.
