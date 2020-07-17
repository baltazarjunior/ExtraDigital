unit uCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadMaster, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, udmCadEmpresa, Vcl.Mask,
  uEndereco;

type
  TfrmCadEmpresa = class(TfrmCadMaster)
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    fmeEndereco: TfmeEndereco;
    procedure FormCreate(Sender: TObject);
    procedure qryMasterAfterOpen(DataSet: TDataSet);
    procedure fmeEnderecodsEnderecoDataChange(Sender: TObject; Field: TField);
    procedure btnSalvarClick(Sender: TObject);
  private
    procedure atualizarEndereco(CarregarCampos : boolean = false);
  public
    { Public declarations }
  end;

var
  frmCadEmpresa: TfrmCadEmpresa;

implementation

{$R *.dfm}

procedure TfrmCadEmpresa.atualizarEndereco(CarregarCampos: boolean);
begin
  fmeEndereco.passarParametros(tdEmpresa, qryMaster.FieldByName('ID_ENDERECO').AsInteger,
  qryMaster.FieldByName('ID_EMPRESA').asInteger,qryMaster.FieldByName('FANTASIA').AsString);
  if CarregarCampos then
    fmeEndereco.carregarCampos;
end;

procedure TfrmCadEmpresa.btnSalvarClick(Sender: TObject);
begin
  atualizarEndereco;
  qryMaster.FieldByName('ID_ENDERECO').AsInteger := fmeEndereco.pegarIdEndereco;
  if fmeEndereco.qryEndereco.State in [dsEdit,dsInsert] then
    fmeEndereco.qryEndereco.Post;
  inherited;
end;

procedure TfrmCadEmpresa.fmeEnderecodsEnderecoDataChange(Sender: TObject;
  Field: TField);
begin
  atualizarEndereco;
end;

procedure TfrmCadEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  dmCadEmpresa := TdmCadEmpresa.Create(self);
  setarDataSet(dmCadEmpresa.qryEmpresa);
  setarTabela('EMPRESA');
  qryMaster.AfterOpen := qryMasterAfterOpen;
end;

procedure TfrmCadEmpresa.qryMasterAfterOpen(DataSet: TDataSet);
begin
  inherited;
  atualizarEndereco(true);
end;


end.
