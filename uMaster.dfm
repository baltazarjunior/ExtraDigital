object frmMaster: TfrmMaster
  Left = 0
  Top = 0
  Caption = 'Extradigital'
  ClientHeight = 415
  ClientWidth = 647
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 49
    Align = alTop
    Color = 1644825
    ParentBackground = False
    TabOrder = 0
    object lblTitle: TLabel
      Left = 24
      Top = 10
      Width = 65
      Height = 23
      Caption = 'Master'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 360
    Width = 647
    Height = 55
    Align = alBottom
    Color = 1644825
    ParentBackground = False
    TabOrder = 1
  end
end
