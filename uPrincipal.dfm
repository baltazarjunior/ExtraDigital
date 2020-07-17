object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Extradigital - Baltazar Junior'
  ClientHeight = 457
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Pessoas1: TMenuItem
        Caption = 'Pessoas'
        OnClick = Pessoas1Click
      end
      object Empresas1: TMenuItem
        Caption = 'Empresas'
        OnClick = Empresas1Click
      end
      object Funcinrio1: TMenuItem
        Caption = 'Funcion'#225'rios'
        OnClick = Funcinrio1Click
      end
    end
  end
end
