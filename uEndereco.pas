unit uEndereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, uPesquisa, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uFuncoesExtra, Vcl.Buttons;

type
  TDestino = (tdPessoa, tdEmpresa);

  TfmeEndereco = class(TFrame)
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    qryEndereco: TFDQuery;
    dsEndereco: TDataSource;
    btnAdicionar: TButton;
    qryEnderecoID_ENDERECO: TIntegerField;
    qryEnderecoLOGRADOURO: TStringField;
    qryEnderecoBAIRRO: TStringField;
    qryEnderecoMUNICIPIO: TStringField;
    qryEnderecoCEP: TStringField;
    qryEnderecoCOMPLEMENTO: TStringField;
    qryEnderecoID_PESSOA: TIntegerField;
    qryEnderecoID_EMPRESA: TIntegerField;
    qryEnderecoATIVO: TStringField;
    btnPesquisarEndereco: TSpeedButton;

    procedure btnAdicionarClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure dsEnderecoDataChange(Sender: TObject; Field: TField);
    procedure qryEnderecoAfterOpen(DataSet: TDataSet);
    procedure qryEnderecoBeforePost(DataSet: TDataSet);
    procedure btnPesquisarEnderecoClick(Sender: TObject);
  private

    { Private declarations }
  public
    fDescricaoPesquisa : string;
    fIdEmpresa : Integer;
    fIdPessoa : integer;
    FIdEndereco : integer;
    FDestino : TDestino;
    FIdDestino : integer;
    procedure carregarCampos;
    procedure habilitarControles(Habilitar: Boolean);
    procedure passarParametros(destino : TDestino; idEndereco, idDestino : integer;
    descricaoPesquisa : string);
    function pegarIdEndereco : Integer;
  end;

implementation

{$R *.dfm}

uses udmConexao;

procedure TfmeEndereco.btnPesquisarEnderecoClick(Sender: TObject);
begin
  inherited;

  if fDescricaoPesquisa = '' then
  exit;


  frmPesquisa := TfrmPesquisa.Create(self);
  frmPesquisa.view := 'GET_ENDERECO';

  if FDestino = tdPessoa then
    frmPesquisa.ItemComboDefault := 'NOME_PESSOA'
  else if FDestino = tdEmpresa then
    frmPesquisa.ItemComboDefault := 'NOME_EMPRESA';

  frmPesquisa.ValorDefault := fDescricaoPesquisa;

  frmPesquisa.AbrirPesquisa := True;

  frmPesquisa.ShowModal;

  if not frmPesquisa.qryPesquisa.FieldByName('ID_ENDERECO').isNull  then
  begin
    FIdEndereco := frmPesquisa.qryPesquisa.FieldByName('ID_ENDERECO').AsInteger;
    carregarCampos;
  end;
end;




procedure TfmeEndereco.btnAdicionarClick(Sender: TObject);
begin
  qryEndereco.Append;
  qryEnderecoID_ENDERECO.AsInteger := TFuncoesExtra.pegarValorGenerator('ENDERECO');
  qryEnderecoATIVO.AsString := 'S';
  habilitarControles(True);
end;

procedure TfmeEndereco.Button4Click(Sender: TObject);
begin
  if FDestino = tdPessoa then
    dmConexao.Conexao.ExecSql(' UPDATE ENDERECO SET ATIVO = ' + QuotedStr('N') +
    ' WHERE ID_EMPRESA = ' + IntToStr(FidEmpresa) )
  else
    dmConexao.Conexao.ExecSql(' UPDATE ENDERECO SET ATIVO = ' + QuotedStr('N') +
    ' WHERE ID_PESSOA = ' + IntToStr(FidPessoa) ) ;

  qryEndereco.Post;
end;

procedure TfmeEndereco.carregarCampos;
begin
  qryEndereco.close;
  qryEndereco.Params[0].AsInteger:= FIdEndereco;
  qryEndereco.Open;
end;

procedure TfmeEndereco.dsEnderecoDataChange(Sender: TObject; Field: TField);
begin
  habilitarControles(qryEndereco.State in [dsEdit,dsInsert]);
end;

procedure TfmeEndereco.habilitarControles(Habilitar: Boolean);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TDBEdit then
      TDBEdit(Components[i]).Enabled := Habilitar;

    //if Components[i] is TButton then
    //TButton(Components[i]).Enabled := Habilitar;

  end;
end;

procedure TfmeEndereco.passarParametros(destino : TDestino; idEndereco, idDestino : integer;
    descricaoPesquisa : string);
begin
  FDestino :=  destino;
  FIdEndereco := idEndereco;
  FidDestino := idDestino;
  fDescricaoPesquisa := descricaoPesquisa;
  if destino = tdPessoa then
    fIdPessoa := idDestino
  else
    fIdEmpresa := idDestino;
end;

function TfmeEndereco.pegarIdEndereco: Integer;
begin
  Result := qryEnderecoID_ENDERECO.AsInteger;
end;

procedure TfmeEndereco.qryEnderecoAfterOpen(DataSet: TDataSet);
begin
 // btnPesquisar.Enabled :=  true;
 // btnAdicionar.Enabled := true;
end;

procedure TfmeEndereco.qryEnderecoBeforePost(DataSet: TDataSet);
begin
  qryEnderecoID_PESSOA.AsInteger:= fIdPessoa;
  qryEnderecoID_EMPRESA.asInteger := FidEmpresa;
end;

end.
