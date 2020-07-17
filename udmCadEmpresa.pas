unit udmCadEmpresa;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, udmConexao;

type
  TdmCadEmpresa = class(TDataModule)
    qryEmpresa: TFDQuery;
    qryEmpresaID_EMPRESA: TIntegerField;
    qryEmpresaRAZAO_SOCIAL: TStringField;
    qryEmpresaFANTASIA: TStringField;
    qryEmpresaCNPJ: TStringField;
    qryEmpresaIE: TStringField;
    qryEmpresaID_ENDERECO: TIntegerField;
    qryEmpresaID_ENDERECO_1: TIntegerField;
    qryEmpresaLOGRADOURO: TStringField;
    qryEmpresaBAIRRO: TStringField;
    qryEmpresaMUNICIPIO: TStringField;
    qryEmpresaCEP: TStringField;
    qryEmpresaCOMPLEMENTO: TStringField;
    qryEmpresaID_PESSOA: TIntegerField;
    qryEmpresaID_EMPRESA_1: TIntegerField;
    qryEmpresaATIVO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCadEmpresa: TdmCadEmpresa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
