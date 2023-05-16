object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 350
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 190
    Top = 88
    Width = 60
    Height = 13
    Caption = 'Nama Petani'
  end
  object Label2: TLabel
    Left = 190
    Top = 133
    Width = 51
    Height = 13
    Caption = 'Kata Sandi'
  end
  object BLogin: TButton
    Left = 288
    Top = 176
    Width = 75
    Height = 33
    Caption = 'Login'
    TabOrder = 0
    OnClick = BLoginClick
  end
  object EPetani: TEdit
    Left = 264
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    OnKeyPress = EPetaniKeyPress
  end
  object EKatasandi: TEdit
    Left = 264
    Top = 125
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = EKatasandiKeyPress
  end
end
