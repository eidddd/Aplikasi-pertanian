object Form5: TForm5
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Pendataan Wilayah'
  ClientHeight = 457
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 76
    Height = 13
    Caption = 'KODE WILAYAH'
  end
  object Label2: TLabel
    Left = 24
    Top = 45
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 24
    Top = 72
    Width = 26
    Height = 13
    Caption = 'DESA'
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 61
    Height = 13
    Caption = 'KECAMATAN'
  end
  object eKd_Wilayah: TEdit
    Left = 112
    Top = 15
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object eNama: TEdit
    Left = 112
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object eDesa: TEdit
    Left = 112
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object eKec: TEdit
    Left = 112
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 170
    Width = 337
    Height = 120
    DataSource = DataModule2.DSWilayah
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 24
    Top = 353
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 353
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 353
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 318
    Top = 353
    Width = 75
    Height = 25
    Caption = 'SELESAI'
    TabOrder = 8
    OnClick = Button4Click
  end
end
