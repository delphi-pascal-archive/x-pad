object Form2: TForm2
  Left = 514
  Top = 315
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1047#1072#1084#1077#1085#1080#1090#1100' '#1090#1077#1082#1089#1090
  ClientHeight = 112
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 248
    Top = 69
    Width = 64
    Height = 16
    Caption = #1047#1072#1084#1077#1085#1080#1090#1100
    OnClick = Label1Click
  end
  object Label2: TLabel
    Left = 232
    Top = 89
    Width = 82
    Height = 16
    Caption = #1053#1072#1081#1090#1080' '#1058#1077#1082#1089#1090
    OnClick = Label2Click
  end
  object Edit1: TEdit
    Left = 10
    Top = 10
    Width = 306
    Height = 21
    TabOrder = 0
    Text = #1063#1090#1086' '#1047#1072#1084#1077#1085#1080#1090#1100
  end
  object Edit2: TEdit
    Left = 10
    Top = 39
    Width = 306
    Height = 21
    TabOrder = 1
    Text = #1063#1077#1084' '#1047#1072#1084#1077#1085#1080#1090#1100
  end
  object RichEdit1: TRichEdit
    Left = 30
    Top = 276
    Width = 227
    Height = 1
    Lines.Strings = (
      'RichEdit1')
    TabOrder = 2
    Visible = False
  end
end
