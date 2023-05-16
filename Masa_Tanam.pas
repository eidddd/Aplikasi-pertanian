unit Masa_Tanam;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ePeriode: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    dTgl_Tnm: TDateTimePicker;
    dPrk_Panen: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses umodul, menu_utama;

procedure TForm4.Button1Click(Sender: TObject);
begin
try
  with DataModule2.QueryWilayah do
  begin
    Append;
    FieldByName('periode').AsString:=ePeriode.Text;
    FieldByName('tgl_tanam').AsDateTime:=dTgl_Tnm.Date;
    FieldByName('prk_panen').AsDateTime:=dPrk_Panen.Date;

    post;

  end;
except
  on salah:Exception do
  ShowMessage(salah.Message);
end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
try
  with DataModule2.QueryMasaTanam do
  begin
    Edit;
    FieldByName('periode').AsString:=ePeriode.Text;
    FieldByName('tgl_tanam').AsDateTime:=dTgl_Tnm.Date;
    FieldByName('Prk_Panen').AsDateTime:=dPrk_Panen.Date;
    post;

  end;
except
  on salah:Exception do
  ShowMessage(salah.Message);
end;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  if(
  (Trim(ePeriode.Text)='')

  ) then
    begin
      Beep;
      ShowMessage('Silahkan Pilih Data terlebih dahulu !!!!');
      DBGrid1.SetFocus;
      Exit;
    end;
end;


procedure TForm4.Button4Click(Sender: TObject);
begin
Form2.show;
end;

end.
