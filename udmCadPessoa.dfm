object dmCadPessoa: TdmCadPessoa
  OldCreateOrder = False
  Height = 248
  Width = 352
  object qryPessoa: TFDQuery
    Connection = dmConexao.Conexao
    SQL.Strings = (
      'SELECT P.*, E.* FROM PESSOA P '
      'LEFT JOIN ENDERECO E ON E.ID_PESSOA = :ID_PESSOA '
      'AND ATIVO = '#39'S'#39
      'WHERE P.ID_PESSOA = :ID_PESSOA'
      ''
      '')
    Left = 88
    Top = 48
    ParamData = <
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object qryPessoaID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Origin = 'ID_PESSOA'
      Required = True
    end
    object qryPessoaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object qryPessoaRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Size = 15
    end
    object qryPessoaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object qryPessoaDATA_NASCIMENTO: TDateField
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qryPessoaSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object qryPessoaESTADO_CIVIL: TStringField
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      Size = 1
    end
    object qryPessoaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
    end
    object qryPessoaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object qryPessoaID_ENDERECO: TIntegerField
      FieldName = 'ID_ENDERECO'
      Origin = 'ID_ENDERECO'
    end
    object qryPessoaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qryPessoaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qryPessoaID_ENDERECO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_ENDERECO_1'
      Origin = 'ID_ENDERECO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPessoaLOGRADOURO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGRADOURO'
      Origin = 'LOGRADOURO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object qryPessoaBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPessoaMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPessoaCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPessoaCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qryPessoaID_PESSOA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PESSOA_1'
      Origin = 'ID_PESSOA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPessoaID_EMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryPessoaATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryPessoaNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 30
    end
    object qryPessoaNACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      Size = 30
    end
    object qryPessoaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
    object qryPessoaCARGO: TStringField
      DisplayLabel = 'Cargo/Fun'#231#227'o'
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Size = 30
    end
    object qryPessoaJORNADA: TStringField
      DisplayLabel = 'Jornada'
      FieldName = 'JORNADA'
      Origin = 'JORNADA'
      Size = 30
    end
    object qryPessoaVALOR_REMUNERACAO: TSingleField
      DisplayLabel = 'Valor Remunera'#231#227'o'
      FieldName = 'VALOR_REMUNERACAO'
      Origin = 'VALOR_REMUNERACAO'
      currency = True
    end
    object qryPessoaDATA_ULTIMA_VENDA: TDateField
      DisplayLabel = 'Data '#218'ltima venda'
      FieldName = 'DATA_ULTIMA_VENDA'
      Origin = 'DATA_ULTIMA_VENDA'
    end
    object qryPessoaCREDITO: TStringField
      DisplayLabel = 'Valor Cr'#233'dito'
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      Size = 100
    end
    object qryPessoaPROFISSAO: TStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'PROFISSAO'
      Origin = 'PROFISSAO'
      Size = 30
    end
  end
  object dsMestre: TDataSource
    DataSet = qryPessoa
    Left = 88
    Top = 144
  end
end
