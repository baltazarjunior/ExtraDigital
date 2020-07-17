inherited frmPesquisa: TfrmPesquisa
  Caption = 'frmPesquisa'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lblTitle: TLabel
      Width = 84
      Caption = 'Pesquisa'
      ExplicitWidth = 84
    end
  end
  inherited Panel2: TPanel
    object btnExportar: TButton
      Left = 463
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 0
      OnClick = btnExportarClick
    end
    object Button2: TButton
      Left = 552
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 647
    Height = 64
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 37
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object btnPesquisar: TSpeedButton
      Left = 613
      Top = 30
      Width = 31
      Height = 23
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
      OnClick = btnPesquisarClick
    end
    object cbbCampo: TComboBox
      Left = 67
      Top = 32
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'cbbCampo'
      OnChange = cbbCampoChange
    end
    object pgTipo: TPageControl
      Left = 218
      Top = 6
      Width = 393
      Height = 59
      ActivePage = TabSheet1
      TabOrder = 1
      object TabSheet1: TTabSheet
        Caption = 'Texto'
        object edtBusca: TEdit
          Left = 15
          Top = 2
          Width = 353
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Data'
        ImageIndex = 1
        object Label2: TLabel
          Left = 18
          Top = 8
          Width = 13
          Height = 13
          Caption = 'De'
        end
        object Label3: TLabel
          Left = 152
          Top = 8
          Width = 16
          Height = 13
          Caption = 'at'#233
        end
        object dtInicial: TDateTimePicker
          Left = 37
          Top = 4
          Width = 97
          Height = 21
          Date = 44029.000000000000000000
          Time = 0.489900613429199400
          TabOrder = 0
        end
        object dtFinal: TDateTimePicker
          Left = 192
          Top = 3
          Width = 97
          Height = 21
          Date = 44029.000000000000000000
          Time = 0.489900613429199400
          TabOrder = 1
        end
      end
    end
  end
  object TreeView1: TTreeView
    Left = 0
    Top = 113
    Width = 647
    Height = 247
    Align = alClient
    Indent = 19
    TabOrder = 3
  end
  object dbgPesquisa: TDBGrid
    Left = 0
    Top = 113
    Width = 647
    Height = 247
    Align = alClient
    DataSource = dsCampos
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgPesquisaDblClick
  end
  object qryPesquisa: TFDQuery
    Connection = dmConexao.Conexao
    Left = 584
    Top = 120
  end
  object qryCampos: TFDQuery
    Connection = dmConexao.Conexao
    Left = 584
    Top = 192
  end
  object dsCampos: TDataSource
    DataSet = qryPesquisa
    Left = 592
    Top = 264
  end
  object SaveDialog1: TSaveDialog
    Left = 584
    Top = 320
  end
  object FDStanStorageBinLink1: TFDStanStorageBinLink
    Left = 520
    Top = 304
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 520
    Top = 224
  end
end
