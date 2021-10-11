object Form3: TForm3
  Left = 626
  Top = 311
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1091#1087#1077#1088#1089#1082#1080#1081' '#1096#1080#1092#1088#1086#1074#1097#1080#1082' '#1080#1079' DW6!'
  ClientHeight = 131
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 10
    Top = 17
    Width = 80
    Height = 16
    Caption = #1057#1076#1074#1080#1075#1072#1090#1100' '#1085#1072
  end
  object Label2: TLabel
    Left = 158
    Top = 17
    Width = 64
    Height = 16
    Caption = #1089#1080#1084#1074#1086#1083#1086#1074
  end
  object seN: TSpinEdit
    Left = 98
    Top = 10
    Width = 51
    Height = 26
    MaxValue = 31
    MinValue = 1
    TabOrder = 0
    Value = 1
  end
  object btEncode: TButton
    Tag = 1
    Left = 246
    Top = 10
    Width = 112
    Height = 31
    Caption = #1050#1086#1076#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 1
    OnClick = btEncodeClick
  end
  object btDecode: TButton
    Left = 364
    Top = 10
    Width = 112
    Height = 31
    Caption = #1056#1072#1089#1082#1086#1076#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 2
    OnClick = btDecodeClick
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 49
    Width = 479
    Height = 70
    Caption = #1064#1080#1092#1088#1086#1074#1082#1072' '#1087#1072#1088#1086#1083#1077#1084
    TabOrder = 3
    object Edit1: TEdit
      Left = 30
      Top = 30
      Width = 148
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 192
      Top = 24
      Width = 118
      Height = 33
      Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 320
      Top = 24
      Width = 145
      Height = 33
      Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1090#1100
      TabOrder = 2
      OnClick = Button2Click
    end
  end
end
