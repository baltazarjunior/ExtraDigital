unit uCadMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uMaster, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, uPesquisa,
  FireDAC.Comp.Client, udmConexao, Vcl.Buttons, Vcl.DBCtrls, Vcl.Imaging.jpeg,
  uFuncoesExtra,Vcl.ComCtrls;

type
  TfrmCadMaster = class(TfrmMaster)
    btnIncluir: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnSalvar: TButton;
    qryMaster: TFDQuery;
    dsMaster: TDataSource;
    btnSair: TBitBtn;
    pnlComponentes: TPanel;
    GroupBox1: TGroupBox;
    dbtCodigo: TDBText;
    btnPesquisar: TSpeedButton;
    procedure dsMasterDataChange(Sender: TObject; Field: TField);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnPesquisarClick(Sender: TObject);
  private
    FregistroSalvo: boolean;
    FView : string;
    FGenerator : string;
    FTabela : string;
    function validarRegistrosObrigatorios : Boolean;
    procedure habilitarControles(Habilitar : Boolean);
   // function pegarValorGen : Integer;
  public
    procedure setarDataSet(qry : TFDQuery);
    procedure setarTabela(tabela : string);
  end;

var
  frmCadMaster: TfrmCadMaster;

implementation

{$R *.dfm}

procedure TfrmCadMaster.btnEditarClick(Sender: TObject);
begin
  inherited;
  qryMaster.Edit;
end;

procedure TfrmCadMaster.btnExcluirClick(Sender: TObject);
begin
  inherited;
  try
    if  Application.MessageBox('Deseja realmente excluir este registro?',
    '',MB_YESNO+ MB_ICONINFORMATION) = ID_YES then
      qryMaster.Delete
    else
      Exit;

    showMessage('Registro excluído com sucesso!');
  except
    raise Exception.Create('Falha ao excluir registro');
  end;
end;

procedure TfrmCadMaster.btnIncluirClick(Sender: TObject);
begin
  inherited;
  qryMaster.Close;
  qryMaster.Open;
  qryMaster.Insert;
  qryMaster.FieldByName('ID_' + FTabela).AsInteger := TFuncoesExtra.pegarValorGenerator(FTabela);
end;

procedure TfrmCadMaster.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  frmPesquisa := TfrmPesquisa.Create(self);
  frmPesquisa.view := FView;
  frmPesquisa.ShowModal;
  if frmPesquisa.qryPesquisa.IsEmpty then
    exit;

  qryMaster.Close;
  qryMaster.Params[0].AsInteger :=
  frmPesquisa.qryPesquisa.FieldByName('ID_' + FTabela).AsInteger;
  qryMaster.Open;
end;

procedure TfrmCadMaster.btnSairClick(Sender: TObject);
begin
  inherited;
  if btnSair.Caption = 'Sair' then
    self.Close
  else
    qryMaster.Cancel;
end;

procedure TfrmCadMaster.btnSalvarClick(Sender: TObject);
begin
  inherited;
  try
    if not validarRegistrosObrigatorios then
    Exit;

    qryMaster.Post;
    showMessage('Registro salvo com sucesso');
    habilitarControles(False);

  except
    raise Exception.Create('Erro ao salvar registro. Entre em contato com o suporte');
  end;
end;




procedure TfrmCadMaster.dsMasterDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  btnIncluir.Enabled := qryMaster.State in  [dsBrowse];
  btnEditar.Enabled := qryMaster.State in  [dsBrowse];
  btnExcluir.Enabled := qryMaster.State in  [dsBrowse];
  btnSalvar.Enabled := qryMaster.State in  [dsEdit,dsInsert];

  if qryMaster.State in [dsEdit,dsInsert] then
    btnSair.Caption := 'Cancelar'
  else
    btnSair.Caption := 'Sair';

  habilitarControles( qryMaster.State in [dsEdit,dsInsert]);
end;

procedure TfrmCadMaster.FormShow(Sender: TObject);
begin
  inherited;
  qryMaster.Open;
end;

procedure TfrmCadMaster.habilitarControles(Habilitar: Boolean);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
      if Components[i].Tag = 1 then
        continue;

      if Components[i] is TDBEdit then
        TDBEdit(Components[i]).Enabled := Habilitar;

      if Components[i] is TFrame then
        TFrame(Components[i]).Enabled := Habilitar;

      if Components[i] is TDBRadioGroup then
        TDBRadioGroup(Components[i]).Enabled := Habilitar;

      if Components[i] is TPageControl then
        TPageControl(Components[i]).Enabled := Habilitar;

       if Components[i] is TDateTimePicker then
        TDateTimePicker(Components[i]).Enabled := Habilitar;
  end;
end;

procedure TfrmCadMaster.setarDataSet(qry: TFDQuery);
begin
  qryMaster := qry;
  dsMaster.DataSet := qry;
end;

procedure TfrmCadMaster.setarTabela(tabela: string);
begin
  FView := 'GET_' + tabela;
  FGenerator :=  'GEN_ID_' + tabela;
  FTabela := tabela;
  dbtCodigo.DataField := 'ID_' + FTabela;
end;

function TfrmCadMaster.validarRegistrosObrigatorios : Boolean;
var
  i : Integer;
begin
  result := True;
  for i := 0 to qryMaster.FieldDefList.Count - 1  do
  begin
    if (qryMaster.Fields[i].Required) and (qryMaster.Fields[i].Value = null) then
    begin
      ShowMessage( 'Campo ' + qryMaster.Fields[i].DisplayLabel +
      ' deve ser informado ');
      result := False;
      Exit;
    end;
  end;
end;

end.
