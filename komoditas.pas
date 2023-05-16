unit komoditas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eKd_Kmdts: TEdit;
    eNm_Kmdts: TEdit;
    eJenis: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    eHarga: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses umodul, menu_utama;

procedure TForm3.Button1Click(Sender: TObject);
begin
try
  with DataModule2.Querykomoditas do
  begin
    Append;
    FieldByName('id_komoditas').AsString:=eKd_Kmdts.Text;
    FieldByName('nama').AsString:=eNm_Kmdts.Text;
    FieldByName('jenis').AsString:=eJenis.Text;
    FieldByName('harga').AsString:=eHarga.Text;
    post;

  end;
except
  on salah:Exception do
  ShowMessage(salah.Message);
end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  if(
  (Trim(eKd_Kmdts.Text)='') and
  (Trim(eNm_Kmdts.Text)='') and
  (Trim(eJenis.Text)='') and
  (Trim(eHarga.Text)='')
  ) then
    begin
      Beep;
      ShowMessage('Silahkan Pilih Data terlebih dahulu !!!!');
      DBGrid1.SetFocus;
      Exit;
    end;
end;


procedure TForm3.Button4Click(Sender: TObject);
begin
Form2.show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
try
  with DataModule2.Querykomoditas do
  begin
    Edit;
    FieldByName('id_komoditas').AsString:=eKd_Kmdts.Text;
    FieldByName('nama').AsString:=eNm_Kmdts.Text;
    FieldByName('jenis').AsString:=eJenis.Text;
    FieldByName('harga').AsString:=eHarga.Text;
    post;

  end;
except
  on salah:Exception do
  ShowMessage(salah.Message);
end;

end;

end.
