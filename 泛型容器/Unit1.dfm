object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 368
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 152
    Width = 619
    Height = 196
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object BtnAdd: TButton
    Left = 8
    Top = 56
    Width = 121
    Height = 49
    Caption = #28155#21152
    TabOrder = 1
    OnClick = BtnAddClick
  end
  object BtnDel: TButton
    Left = 168
    Top = 56
    Width = 121
    Height = 49
    Caption = #21024#38500
    TabOrder = 2
  end
  object btnFind: TButton
    Left = 328
    Top = 56
    Width = 113
    Height = 49
    Caption = #26597#35810
    TabOrder = 3
    OnClick = btnFindClick
  end
  object BtnUpdate: TButton
    Left = 480
    Top = 56
    Width = 121
    Height = 49
    Caption = #28165#31354
    TabOrder = 4
  end
  object edtUserName: TEdit
    Left = 8
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 5
  end
end
