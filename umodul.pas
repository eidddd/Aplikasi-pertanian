unit umodul;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TDataModule2 = class(TDataModule)
    Umodul: TZConnection;
    QueryLogin: TZQuery;
    DSkomoditas: TDataSource;
    QueryOutbox: TZQuery;
    QueryInbox: TZQuery;
    QueryKomoditas: TZQuery;
    QueryMasaTanam: TZQuery;
    QueryWilayah: TZQuery;
    QueryKomoditasid_komoditas: TIntegerField;
    QueryKomoditasnama: TWideStringField;
    QueryKomoditasjenis: TWideStringField;
    QueryKomoditasharga: TWideStringField;
    DSWilayah: TDataSource;
    DSMasaTnm: TDataSource;
    DSInbox: TDataSource;
    DSOutbox: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
