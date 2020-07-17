inherited frmCadPessoa: TfrmCadPessoa
  ClientHeight = 458
  ClientWidth = 676
  OnCreate = FormCreate
  ExplicitWidth = 692
  ExplicitHeight = 497
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel [0]
    Left = 544
    Top = 126
    Width = 96
    Height = 13
    Caption = 'Data de Nascimento'
  end
  inherited Panel1: TPanel
    Width = 676
    ExplicitWidth = 629
    inherited lblTitle: TLabel
      Width = 186
      Caption = 'Cadastro de Pessoa'
      ExplicitWidth = 186
    end
  end
  inherited Panel2: TPanel
    Top = 403
    Width = 676
    ExplicitTop = 403
    ExplicitWidth = 629
    inherited btnIncluir: TButton
      Left = 245
      ExplicitLeft = 198
    end
    inherited btnEditar: TButton
      Left = 336
      ExplicitLeft = 289
    end
    inherited btnExcluir: TButton
      Left = 417
      ExplicitLeft = 370
    end
    inherited btnSalvar: TButton
      Left = 498
      ExplicitLeft = 451
    end
    inherited btnSair: TBitBtn
      Left = 579
      ExplicitLeft = 532
    end
  end
  inherited pnlComponentes: TPanel
    Width = 676
    Height = 354
    ExplicitWidth = 629
    ExplicitHeight = 354
    object Label2: TLabel [0]
      Left = 200
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [1]
      Left = 20
      Top = 77
      Width = 13
      Height = 13
      Caption = 'Rg'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [2]
      Left = 140
      Top = 77
      Width = 17
      Height = 13
      Caption = 'Cpf'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [3]
      Left = 410
      Top = 77
      Width = 107
      Height = 13
      Caption = 'Data de Nascimento'
    end
    object Label6: TLabel [4]
      Left = 261
      Top = 77
      Width = 61
      Height = 13
      Caption = 'Naturalidade'
      FocusControl = DBEdit6
    end
    object Label15: TLabel [5]
      Left = 538
      Top = 77
      Width = 76
      Height = 13
      Caption = 'Data Cadastro'
    end
    inherited GroupBox1: TGroupBox
      Top = 6
      Width = 169
      Height = 47
      ExplicitTop = 6
      ExplicitWidth = 169
      ExplicitHeight = 47
      inherited dbtCodigo: TDBText
        Left = 30
        Top = 21
        Width = 80
        ExplicitLeft = 30
        ExplicitTop = 21
        ExplicitWidth = 80
      end
      inherited btnPesquisar: TSpeedButton
        Left = 126
        Top = 12
        Width = 30
        Height = 27
        ExplicitLeft = 126
        ExplicitTop = 12
        ExplicitWidth = 30
        ExplicitHeight = 27
      end
    end
    object DBEdit2: TDBEdit
      Left = 200
      Top = 32
      Width = 454
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dsMaster
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 20
      Top = 94
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RG'
      DataSource = dsMaster
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 140
      Top = 94
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CPF'
      DataSource = dsMaster
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 261
      Top = 94
      Width = 119
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NATURALIDADE'
      DataSource = dsMaster
      TabOrder = 4
    end
    inline fmeEndereco: TfmeEndereco
      Left = 52
      Top = 142
      Width = 552
      Height = 116
      TabOrder = 7
      ExplicitLeft = 52
      ExplicitTop = 142
      inherited dsEndereco: TDataSource
        OnDataChange = nil
      end
    end
    object rgTipo: TDBRadioGroup
      Left = 20
      Top = 258
      Width = 109
      Height = 90
      Caption = 'Tipo'
      DataField = 'TIPO'
      DataSource = dsMaster
      Items.Strings = (
        'Cliente'
        'Funcion'#225'rio')
      TabOrder = 8
      Values.Strings = (
        'C'
        'F'
        '')
      OnChange = rgTipoChange
    end
    object pgcTipo: TPageControl
      Left = 135
      Top = 258
      Width = 483
      Height = 90
      ActivePage = tsFuncionario
      TabOrder = 9
      object tsCliente: TTabSheet
        Caption = 'Cliente'
        object Label11: TLabel
          Left = 218
          Top = 3
          Width = 88
          Height = 13
          Caption = 'Data '#218'ltima venda'
          FocusControl = DBEdit10
        end
        object Label12: TLabel
          Left = 334
          Top = 3
          Width = 62
          Height = 13
          Caption = 'Valor Cr'#233'dito'
          FocusControl = DBEdit11
        end
        object Label13: TLabel
          Left = 14
          Top = 3
          Width = 44
          Height = 13
          Caption = 'Profiss'#227'o'
          FocusControl = DBEdit12
        end
        object DBEdit10: TDBEdit
          Left = 218
          Top = 19
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DATA_ULTIMA_VENDA'
          DataSource = dsMaster
          TabOrder = 1
        end
        object DBEdit11: TDBEdit
          Left = 334
          Top = 19
          Width = 100
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CREDITO'
          DataSource = dsMaster
          TabOrder = 2
        end
        object DBEdit12: TDBEdit
          Left = 13
          Top = 19
          Width = 156
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROFISSAO'
          DataSource = dsMaster
          TabOrder = 0
        end
      end
      object tsFuncionario: TTabSheet
        Caption = 'Funcion'#225'rio'
        ImageIndex = 1
        object Label1: TLabel
          Left = 20
          Top = 11
          Width = 68
          Height = 13
          Caption = 'Cargo/Fun'#231#227'o'
          FocusControl = DBEdit1
        end
        object Label8: TLabel
          Left = 239
          Top = 11
          Width = 39
          Height = 13
          Caption = 'Jornada'
          FocusControl = DBEdit8
        end
        object Label10: TLabel
          Left = 333
          Top = 11
          Width = 93
          Height = 13
          Caption = 'Valor Remunera'#231#227'o'
          FocusControl = DBEdit9
        end
        object DBEdit1: TDBEdit
          Left = 20
          Top = 27
          Width = 173
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CARGO'
          DataSource = dsMaster
          TabOrder = 0
        end
        object DBEdit8: TDBEdit
          Left = 237
          Top = 27
          Width = 70
          Height = 21
          CharCase = ecUpperCase
          DataField = 'JORNADA'
          DataSource = dsMaster
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 333
          Top = 27
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_REMUNERACAO'
          DataSource = dsMaster
          TabOrder = 2
        end
      end
    end
    object dtNascimento: TDateTimePicker
      Left = 410
      Top = 94
      Width = 98
      Height = 21
      Date = 44029.000000000000000000
      Time = 0.513862638887076200
      TabOrder = 5
    end
    object dtCadastro: TDateTimePicker
      Tag = 1
      Left = 538
      Top = 94
      Width = 98
      Height = 21
      Date = 44029.000000000000000000
      Time = 0.513862638887076200
      Enabled = False
      TabOrder = 6
    end
  end
  inherited qryMaster: TFDQuery
    AfterOpen = qryMasterAfterOpen
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'SELECT P.*, E.* FROM PESSOA P '
      'LEFT JOIN ENDERECO E ON E.ID_PESSOA = :ID_PESSOA '
      'AND ATIVO = '#39'S'#39)
    Top = 192
    ParamData = <
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryMasterDATA_ULTIMA_VENDA: TDateField
      DisplayLabel = 'Data '#218'ltima venda'
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
    object qryMasterCREDITO: TStringField
      DisplayLabel = 'Valor Cr'#233'dito'
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      Size = 100
    end
    object qryMasterPROFISSAO: TStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 30
    end
  end
  inherited dsMaster: TDataSource
    OnStateChange = dsMasterStateChange
  end
end
