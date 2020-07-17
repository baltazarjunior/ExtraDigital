inherited frmCadEmpresa: TfrmCadEmpresa
  ClientHeight = 338
  OnCreate = FormCreate
  ExplicitHeight = 377
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lblTitle: TLabel
      Width = 202
      Caption = 'Cadastro de Empresa'
      ExplicitWidth = 202
    end
  end
  inherited Panel2: TPanel
    Top = 283
    ExplicitTop = 283
  end
  inherited pnlComponentes: TPanel
    Height = 234
    ExplicitHeight = 234
    object Label2: TLabel [0]
      Left = 24
      Top = 56
      Width = 60
      Height = 13
      Caption = 'Raz'#227'o Social'
      FocusControl = DBEdit2
    end
    object Label3: TLabel [1]
      Left = 199
      Top = 6
      Width = 41
      Height = 13
      Caption = 'Fantasia'
      FocusControl = DBEdit3
    end
    object Label4: TLabel [2]
      Left = 362
      Top = 56
      Width = 22
      Height = 13
      Caption = 'Cnpj'
      FocusControl = DBEdit4
    end
    object Label5: TLabel [3]
      Left = 488
      Top = 56
      Width = 18
      Height = 13
      Caption = 'I.E.'
      FocusControl = DBEdit5
    end
    object DBEdit2: TDBEdit [4]
      Left = 24
      Top = 72
      Width = 305
      Height = 21
      CharCase = ecUpperCase
      DataField = 'RAZAO_SOCIAL'
      DataSource = dsMaster
      TabOrder = 2
    end
    object DBEdit3: TDBEdit [5]
      Left = 199
      Top = 22
      Width = 402
      Height = 21
      CharCase = ecUpperCase
      DataField = 'FANTASIA'
      DataSource = dsMaster
      TabOrder = 1
    end
    object DBEdit4: TDBEdit [6]
      Left = 362
      Top = 72
      Width = 98
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNPJ'
      DataSource = dsMaster
      TabOrder = 3
    end
    object DBEdit5: TDBEdit [7]
      Left = 488
      Top = 72
      Width = 113
      Height = 21
      CharCase = ecUpperCase
      DataField = 'IE'
      DataSource = dsMaster
      TabOrder = 4
    end
    inherited GroupBox1: TGroupBox
      Left = 24
      Width = 137
      Height = 50
      ExplicitLeft = 24
      ExplicitWidth = 137
      ExplicitHeight = 50
      inherited dbtCodigo: TDBText
        Left = 17
        Top = 19
        Width = 150
        ExplicitLeft = 17
        ExplicitTop = 19
        ExplicitWidth = 150
      end
      inherited btnPesquisar: TSpeedButton
        Left = 98
        Top = 11
        Width = 27
        Height = 24
        ExplicitLeft = 98
        ExplicitTop = 11
        ExplicitWidth = 27
        ExplicitHeight = 24
      end
    end
    inline fmeEndereco: TfmeEndereco
      Left = 24
      Top = 99
      Width = 563
      Height = 116
      TabOrder = 5
      ExplicitLeft = 24
      ExplicitTop = 99
      ExplicitWidth = 563
      inherited Label13: TLabel
        Left = 417
        Top = 46
        ExplicitLeft = 417
        ExplicitTop = 46
      end
      inherited Label14: TLabel
        Left = 417
        Top = 3
        ExplicitLeft = 417
        ExplicitTop = 3
      end
      inherited DBEdit11: TDBEdit
        Width = 337
        ExplicitWidth = 337
      end
      inherited DBEdit14: TDBEdit
        Left = 417
        Top = 62
        ExplicitLeft = 417
        ExplicitTop = 62
      end
      inherited DBEdit15: TDBEdit
        Left = 417
        Top = 19
        ExplicitLeft = 417
        ExplicitTop = 19
      end
      inherited dsEndereco: TDataSource
        OnDataChange = fmeEnderecodsEnderecoDataChange
      end
    end
  end
  inherited qryMaster: TFDQuery
    AfterOpen = qryMasterAfterOpen
    Connection = dmConexao.Conexao
    Left = 608
    Top = 120
  end
  inherited dsMaster: TDataSource
    Left = 608
    Top = 64
  end
end
