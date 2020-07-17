unit uFuncoesExtra;

interface

  uses
     FireDAC.Comp.Client, udmConexao;

  type
  TFuncoesExtra = class
    class function pegarValorGenerator(tabela : string) : Integer;
  end;

implementation

{ TFuncoesExtra }

class function TFuncoesExtra.pegarValorGenerator(tabela: string): Integer;
var
  qry : TFDQuery;
begin
  qry := TFDQuery.Create(nil);
  qry.Connection := dmConexao.Conexao;
  qry.SQL.Text:= ' SELECT GEN_ID('+ 'GEN_ID_'+ tabela + ',1) FROM RDB$DATABASE';
  qry.Open;
  result := qry.Fields[0].AsInteger;
 // freeAndNil(qry);
end;

end.
