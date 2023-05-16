object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 350
  Width = 519
  object Umodul: TZConnection
    ControlsCodePage = cCP_UTF16
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16')
    Connected = True
    HostName = '127.0.0.1'
    Port = 3306
    Database = '2110020097'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ASUS\Documents\Praktikum Visual 2\libmysql.dll'
    Left = 160
    Top = 24
  end
  object QueryLogin: TZQuery
    Connection = Umodul
    Active = True
    SQL.Strings = (
      'select*from tb_login')
    Params = <>
    Left = 16
    Top = 88
  end
  object DSkomoditas: TDataSource
    DataSet = QueryKomoditas
    Left = 280
    Top = 144
  end
  object QueryOutbox: TZQuery
    Connection = Umodul
    Active = True
    SQL.Strings = (
      'select*from tb_outbox')
    Params = <>
    Left = 448
    Top = 88
  end
  object QueryInbox: TZQuery
    Connection = Umodul
    Active = True
    SQL.Strings = (
      'select*from tb_inbox')
    Params = <>
    Left = 368
    Top = 88
  end
  object QueryKomoditas: TZQuery
    Connection = Umodul
    Active = True
    SQL.Strings = (
      'select*from tb_komoditas')
    Params = <>
    Left = 280
    Top = 88
    object QueryKomoditasid_komoditas: TIntegerField
      DisplayLabel = 'Komoditas'
      FieldName = 'id_komoditas'
      Required = True
    end
    object QueryKomoditasnama: TWideStringField
      DisplayLabel = 'Nama'
      FieldName = 'nama'
      Required = True
    end
    object QueryKomoditasjenis: TWideStringField
      DisplayLabel = 'Jenis'
      FieldName = 'jenis'
      Required = True
      Size = 15
    end
    object QueryKomoditasharga: TWideStringField
      DisplayLabel = 'Harga'
      FieldName = 'harga'
      Required = True
      Size = 5
    end
  end
  object QueryMasaTanam: TZQuery
    Connection = Umodul
    Active = True
    SQL.Strings = (
      'select*from tb_masa_tanam')
    Params = <>
    Left = 192
    Top = 88
  end
  object QueryWilayah: TZQuery
    Connection = Umodul
    Active = True
    SQL.Strings = (
      'select*from tb_wilayah')
    Params = <>
    Left = 96
    Top = 88
  end
  object DSWilayah: TDataSource
    DataSet = QueryWilayah
    Left = 104
    Top = 144
  end
  object DSMasaTnm: TDataSource
    DataSet = QueryMasaTanam
    Left = 192
    Top = 144
  end
  object DSInbox: TDataSource
    DataSet = QueryInbox
    Left = 352
    Top = 144
  end
  object DSOutbox: TDataSource
    DataSet = QueryOutbox
    Left = 440
    Top = 144
  end
end