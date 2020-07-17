inherited frmCadMaster: TfrmCadMaster
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lblTitle: TLabel
      Width = 98
      Caption = 'cadMaster'
      ExplicitWidth = 98
    end
  end
  inherited Panel2: TPanel
    TabOrder = 2
    DesignSize = (
      647
      55)
    object btnIncluir: TButton
      Left = 167
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Incluir'
      TabOrder = 0
      OnClick = btnIncluirClick
    end
    object btnEditar: TButton
      Left = 265
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
      Left = 362
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
    object btnSalvar: TButton
      Left = 460
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btnSalvarClick
    end
    object btnSair: TBitBtn
      Left = 558
      Top = 14
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object pnlComponentes: TPanel
    Left = 0
    Top = 49
    Width = 647
    Height = 311
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 185
      Height = 49
      Caption = 'C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object dbtCodigo: TDBText
        Left = 46
        Top = 20
        Width = 107
        Height = 17
        DataSource = dsMaster
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnPesquisar: TSpeedButton
        Left = 141
        Top = 6
        Width = 41
        Height = 37
        Glyph.Data = {
          42040000424D4204000000000000420000002800000010000000100000000100
          20000300000000040000770000007700000000000000000000000000FF0000FF
          0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0054000000B2FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000540000
          00F700000054FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000054000000F70000
          0054FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000054000000F700000054FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000A0000003C000000630000
          004F0000001FFFFFFF00FFFFFF0000000054000000F700000054FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000061000000E6000000F2000000C60000
          00DE000000FD000000A100000067000000F700000054FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000006F000000EE0000005B00000001FFFFFF00FFFF
          FF000000001F000000B8000000FF00000067FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000039000000F800000034FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00000000B80000009AFFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000009A00000096FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000001F000000FB00000020FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000E300000052FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000DE0000004AFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000E600000038FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000C60000005FFFFFFF00FFFFFF00FFFF
          FF00FFFFFF00000000D000000069FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000001000000F200000035FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000077000000CE00000005FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000005B000000E700000001FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000009000000E40000009400000005FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000034000000ED00000054FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000025000000D6000000CE00000069000000380000
          005200000096000000F90000007CFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000000D00000079000000C5000000EF0000
          00DA000000AC0000002DFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00}
        Layout = blGlyphTop
        OnClick = btnPesquisarClick
      end
    end
  end
  object qryMaster: TFDQuery
    FetchOptions.AssignedValues = [evCache]
    Left = 568
    Top = 184
  end
  object dsMaster: TDataSource
    DataSet = qryMaster
    OnDataChange = dsMasterDataChange
    Left = 568
    Top = 256
  end
end
