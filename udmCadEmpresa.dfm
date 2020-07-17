object dmCadEmpresa: TdmCadEmpresa
  OldCreateOrder = False
  Height = 253
  Width = 374
  object qryEmpresa: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'SELECT E.*, EN.* FROM EMPRESA E'
      'LEFT JOIN ENDERECO EN ON EN.ID_ENDERECO = E.ID_ENDERECO'
      'WHERE E.ID_EMPRESA = :ID_EMPRESA')
    Left = 144
    Top = 80
    ParamData = <
      item
        Name = 'ID_EMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryEmpresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      Required = True
    end
    object qryEmpresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object qryEmpresaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object qryEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object qryEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
    end
    object qryEmpresaID_ENDERECO: TIntegerField
      FieldName = 'ID_ENDERECO'
      Origin = 'ID_ENDERECO'
    end
    object qryEmpresaID_ENDERECO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_ENDERECO_1'
      Origin = 'ID_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryEmpresaLOGRADOURO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryEmpresaBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryEmpresaMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryEmpresaCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryEmpresaCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryEmpresaID_PESSOA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryEmpresaID_EMPRESA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_EMPRESA_1'
      Origin = 'ID_EMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryEmpresaATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
end
