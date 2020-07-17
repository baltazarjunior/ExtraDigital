object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 163
  Width = 257
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Projetos\ExtraDigital\BD\EXTRA.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 114
    Top = 32
  end
  object qryTemp: TFDQuery
    Connection = Conexao
    Left = 112
    Top = 96
  end
end
