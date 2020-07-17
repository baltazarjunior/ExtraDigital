object fmeEndereco: TfmeEndereco
  Left = 0
  Top = 0
  Width = 552
  Height = 116
  TabOrder = 0
  object Label10: TLabel
    Left = 41
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Logradouro'
    FocusControl = DBEdit11
  end
  object Label11: TLabel
    Left = 41
    Top = 48
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DBEdit12
  end
  object Label12: TLabel
    Left = 193
    Top = 48
    Width = 43
    Height = 13
    Caption = 'Munic'#237'pio'
    FocusControl = DBEdit13
  end
  object Label13: TLabel
    Left = 369
    Top = 51
    Width = 19
    Height = 13
    Caption = 'Cep'
    FocusControl = DBEdit14
  end
  object Label14: TLabel
    Left = 369
    Top = 8
    Width = 65
    Height = 13
    Caption = 'Complemento'
    FocusControl = DBEdit15
  end
  object btnPesquisarEndereco: TSpeedButton
    Left = 5
    Top = 17
    Width = 30
    Height = 25
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
    OnClick = btnPesquisarEnderecoClick
  end
  object DBEdit11: TDBEdit
    Left = 41
    Top = 24
    Width = 305
    Height = 21
    CharCase = ecUpperCase
    DataField = 'LOGRADOURO'
    DataSource = dsEndereco
    Enabled = False
    TabOrder = 0
  end
  object DBEdit12: TDBEdit
    Left = 41
    Top = 64
    Width = 129
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = dsEndereco
    Enabled = False
    TabOrder = 3
  end
  object DBEdit13: TDBEdit
    Left = 193
    Top = 64
    Width = 153
    Height = 21
    CharCase = ecUpperCase
    DataField = 'MUNICIPIO'
    DataSource = dsEndereco
    Enabled = False
    TabOrder = 4
  end
  object DBEdit14: TDBEdit
    Left = 369
    Top = 67
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = dsEndereco
    Enabled = False
    TabOrder = 5
  end
  object DBEdit15: TDBEdit
    Left = 369
    Top = 24
    Width = 161
    Height = 21
    CharCase = ecUpperCase
    DataField = 'COMPLEMENTO'
    DataSource = dsEndereco
    Enabled = False
    TabOrder = 1
  end
  object btnAdicionar: TButton
    Left = 5
    Top = 64
    Width = 30
    Height = 25
    Caption = '+'
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object qryEndereco: TFDQuery
    AfterOpen = qryEnderecoAfterOpen
    BeforePost = qryEnderecoBeforePost
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'SELECT * FROM ENDERECO WHERE ID_ENDERECO = :IDENDERECO')
    Left = 504
    Top = 8
    ParamData = <
      item
        Name = 'IDENDERECO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEnderecoID_ENDERECO: TIntegerField
      FieldName = 'ID_ENDERECO'
      Origin = 'ID_ENDERECO'
      Required = True
    end
    object qryEnderecoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      Size = 200
    end
    object qryEnderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object qryEnderecoMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object qryEnderecoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
    end
    object qryEnderecoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 100
    end
    object qryEnderecoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
    end
    object qryEnderecoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
    end
    object qryEnderecoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsEndereco: TDataSource
    DataSet = qryEndereco
    OnDataChange = dsEnderecoDataChange
    Left = 504
    Top = 56
  end
end
