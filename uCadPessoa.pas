unit uCadPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadMaster, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, uPesquisa, udmCadPessoa,
  Vcl.Grids, Vcl.DBGrids, udmConexao, uEndereco, Vcl.ComCtrls;

type
  TtpPessoa = (tpNone, tpFuncionario, tpCliente);

  TfrmCadPessoa = class(TfrmCadMaster)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    fmeEndereco: TfmeEndereco;
    rgTipo: TDBRadioGroup;
    pgcTipo: TPageControl;
    tsCliente: TTabSheet;
    tsFuncionario: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    qryMasterDATA_ULTIMA_VENDA: TDateField;
    qryMasterCREDITO: TStringField;
    qryMasterPROFISSAO: TStringField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    dtNascimento: TDateTimePicker;
    Label14: TLabel;
    Label15: TLabel;
    dtCadastro: TDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure qryMasterAfterOpen(DataSet: TDataSet);
    procedure btnSalvarClick(Sender: TObject);
    procedure dsMasterStateChange(Sender: TObject);
    procedure rgTipoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FtpPessoa: TtpPessoa;
    procedure atualizarEndereco(CarregarCampos : boolean = false);
  public
    constructor Create(tipo : TtpPessoa); overload;
    property tpPessoa : TtpPessoa read FtpPessoa write FtpPessoa;
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

{$R *.dfm}

procedure TfrmCadPessoa.atualizarEndereco(CarregarCampos : boolean = false);
begin
  fmeEndereco.passarParametros(tdPessoa,
  qryMaster.FieldByName('ID_ENDERECO').AsInteger,
  qryMaster.FieldByName('ID_PESSOA').asInteger,
  qryMaster.FieldByName('NOME').AsString);
  if CarregarCampos then
    fmeEndereco.carregarCampos;
end;

procedure TfrmCadPessoa.btnSalvarClick(Sender: TObject);
begin
  qryMaster.FieldByName('DATA_CADASTRO').AsDateTime := dtCadastro.Date;
  qryMaster.FieldByName('DATA_NASCIMENTO').AsDateTime := dtNascimento.Date;

  atualizarEndereco;
  qryMaster.FieldByName('ID_ENDERECO').AsInteger := fmeEndereco.pegarIdEndereco;
  if fmeEndereco.qryEndereco.State in [dsEdit,dsInsert] then
    fmeEndereco.qryEndereco.Post;

  inherited;
end;

constructor TfrmCadPessoa.Create(tipo: TtpPessoa);
begin
 // inherited;
  if tipo = tpFuncionario then
  begin
    self.Caption := 'Cadastro de Funcionários';
    rgTipo.ItemIndex := 1;
  end;
end;

procedure TfrmCadPessoa.rgTipoChange(Sender: TObject);
begin
  inherited;
  pgcTipo.TabIndex := rgTipo.ItemIndex;
  tsCliente.Enabled := pgcTipo.TabIndex = 0;
  tsFuncionario.Enabled := pgcTipo.TabIndex = 1;
end;

procedure TfrmCadPessoa.dsMasterStateChange(Sender: TObject);
begin
  inherited;
  atualizarEndereco;
end;

procedure TfrmCadPessoa.FormCreate(Sender: TObject);
begin
  inherited;
  dmCadPessoa := TdmCadPessoa.Create(self);
  setarDataSet(dmCadPessoa.qryPessoa);
  setarTabela('PESSOA');
  qryMaster.AfterOpen := qryMasterAfterOpen;
end;

procedure TfrmCadPessoa.FormShow(Sender: TObject);
begin
  inherited;
  if tpPessoa = tpFuncionario then
  begin
    lblTitle.Caption := 'Cadastro de Funcionários';
    rgTipo.ItemIndex := 1;
  end;
end;

procedure TfrmCadPessoa.qryMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  atualizarEndereco(true);
  if not qryMaster.FieldByName('DATA_CADASTRO').IsNull then
    dtCadastro.Date := qryMaster.FieldByName('DATA_CADASTRO').AsDateTime;
  If not qryMaster.FieldByName('DATA_NASCIMENTO').IsNull then
    dtNascimento.Date := qryMaster.FieldByName('DATA_NASCIMENTO').AsDateTime;
end;

end.
