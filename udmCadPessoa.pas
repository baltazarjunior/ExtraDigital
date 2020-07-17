unit udmCadPessoa;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, udmConexao;

type
  TdmCadPessoa = class(TDataModule)
    qryPessoa: TFDQuery;
    dsMestre: TDataSource;
    qryPessoaID_PESSOA: TIntegerField;
    qryPessoaNOME: TStringField;
    qryPessoaRG: TStringField;
    qryPessoaCPF: TStringField;
    qryPessoaDATA_NASCIMENTO: TDateField;
    qryPessoaSEXO: TStringField;
    qryPessoaESTADO_CIVIL: TStringField;
    qryPessoaTELEFONE: TStringField;
    qryPessoaCELULAR: TStringField;
    qryPessoaID_ENDERECO: TIntegerField;
    qryPessoaEMAIL: TStringField;
    qryPessoaDATA_CADASTRO: TDateField;
    qryPessoaID_ENDERECO_1: TIntegerField;
    qryPessoaLOGRADOURO: TStringField;
    qryPessoaBAIRRO: TStringField;
    qryPessoaMUNICIPIO: TStringField;
    qryPessoaCEP: TStringField;
    qryPessoaCOMPLEMENTO: TStringField;
    qryPessoaID_PESSOA_1: TIntegerField;
    qryPessoaID_EMPRESA: TIntegerField;
    qryPessoaATIVO: TStringField;
    qryPessoaNATURALIDADE: TStringField;
    qryPessoaNACIONALIDADE: TStringField;
    qryPessoaTIPO: TStringField;
    qryPessoaCARGO: TStringField;
    qryPessoaJORNADA: TStringField;
    qryPessoaVALOR_REMUNERACAO: TSingleField;
    qryPessoaDATA_ULTIMA_VENDA: TDateField;
    qryPessoaCREDITO: TStringField;
    qryPessoaPROFISSAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadPessoa: TdmCadPessoa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
