object Addform: TAddform
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #27880#20876#23398#29983#20449#24687
  ClientHeight = 261
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 40
    Top = 104
    Width = 24
    Height = 13
    Caption = #24180#40836
  end
  object lbl1: TLabel
    Left = 40
    Top = 45
    Width = 24
    Height = 13
    Caption = #22995#21517
  end
  object edtAge: TEdit
    Left = 104
    Top = 101
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object edtName: TEdit
    Left = 104
    Top = 42
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object btnSave: TButton
    Left = 48
    Top = 168
    Width = 105
    Height = 41
    Caption = #20445#23384
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object btnCancel: TButton
    Left = 248
    Top = 168
    Width = 105
    Height = 41
    Caption = #21462#28040
    TabOrder = 3
    OnClick = btnCancelClick
  end
end
