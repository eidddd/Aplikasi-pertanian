object Form4: TForm4
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Pendataan Masa Tanam'
  ClientHeight = 359
  ClientWidth = 580
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
  object Label5: TLabel
    Left = 112
    Top = 8
    Width = 44
    Height = 13
    Caption = 'PERIODE'
  end
  object Label6: TLabel
    Left = 112
    Top = 35
    Width = 84
    Height = 13
    Caption = 'TANGGAL TANAM'
  end
  object Label7: TLabel
    Left = 112
    Top = 75
    Width = 93
    Height = 13
    Caption = 'PERKIRAAN PANEN'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 155
    Width = 337
    Height = 120
    DataSource = DataModule2.DSMasaTnm
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 8
    Top = 295
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 112
    Top = 295
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 200
    Top = 295
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 294
    Top = 295
    Width = 75
    Height = 25
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = Button4Click
  end
  object ePeriode: TEdit
    Left = 220
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object dTgl_Tnm: TDateTimePicker
    Left = 220
    Top = 35
    Width = 186
    Height = 21
    Date = 45062.000000000000000000
    Time = 0.518272719906235600
    TabOrder = 6
  end
  object dPrk_Panen: TDateTimePicker
    Left = 224
    Top = 72
    Width = 186
    Height = 21
    Date = 45062.000000000000000000
    Time = 0.519548263888282200
    TabOrder = 7
  end
end
