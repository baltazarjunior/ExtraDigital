unit uPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uMaster, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.StorageBin, FireDAC.Stan.StorageXML;

type
  TfrmPesquisa = class(TfrmMaster)
    Panel3: TPanel;
    Label1: TLabel;
    cbbCampo: TComboBox;
    TreeView1: TTreeView;
    qryPesquisa: TFDQuery;
    qryCampos: TFDQuery;
    dsCampos: TDataSource;
    dbgPesquisa: TDBGrid;
    btnExportar: TButton;
    Button2: TButton;
    btnPesquisar: TSpeedButton;
    SaveDialog1: TSaveDialog;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    pgTipo: TPageControl;
    TabSheet1: TTabSheet;
    edtBusca: TEdit;
    TabSheet2: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    procedure FormShow(Sender: TObject);
    procedure dbgPesquisaDblClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbbCampoChange(Sender: TObject);

  private
    Fview: string;
    Ffiltro: string;
    FItemComboDefault: string;
    FValorDefault: string;
    FAbrirPesquisa: boolean;
    procedure exportarArquivo;
    procedure configurarCampos;

  public

  published
     property view : string  read Fview write Fview;
     property filtro : string read Ffiltro write Ffiltro;
     property ItemComboDefault : string read FItemComboDefault write FItemComboDefault;
     property ValorDefault : string read FValorDefault write FValorDefault;
     property AbrirPesquisa : boolean read FAbrirPesquisa write FAbrirPesquisa;
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

{$R *.dfm}




procedure TfrmPesquisa.btnExportarClick(Sender: TObject);
begin
  inherited;
  exportarArquivo;
end;

procedure TfrmPesquisa.btnPesquisarClick(Sender: TObject);
begin
  inherited;
  qryPesquisa.Close;
  if pgTipo.TabIndex = 0  then
  begin
    qryPesquisa.SQL.Text := 'SELECT * FROM ' + view + ' WHERE ' +
    cbbCampo.Items[cbbCampo.ItemIndex] + ' LIKE ' +
    QuotedStr('%' + edtBusca.Text + '%') + filtro;
  end
  else
  begin
    qryPesquisa.SQL.Text := 'SELECT * FROM ' + view + ' WHERE ' +
    cbbCampo.Items[cbbCampo.ItemIndex] + ' BETWEEN ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy',dtInicial.Date)) +
    ' AND ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dtFinal.Date));
  end;
  qryPesquisa.Open;
end;


procedure TfrmPesquisa.cbbCampoChange(Sender: TObject);
var
 i : Integer;
begin
  inherited;
  pgTipo.ActivePageIndex := 0;
   for i := 0 to qryCampos.FieldDefList.Count - 1 do
   begin
     if cbbCampo.Items[cbbCampo.ItemIndex] = qryCampos.Fields[i].FullName then
     begin
       if qryCampos.Fields[i].DataType = ftDate then
         pgTipo.ActivePageIndex := 1;
     end;
   end;
end;

procedure TfrmPesquisa.configurarCampos;
var
  i : integer;
begin
  cbbCampo.Items.Clear;
  for i := 0 to qryCampos.FieldDefList.Count - 1 do
    cbbCampo.Items.Add(qryCampos.Fields[i].FullName);

  for i := 0 to dbgPesquisa.Columns.Count - 1 do
    if dbgPesquisa.Columns[i].width > 50 then
      dbgPesquisa.Columns[i].Width := 50;

  cbbCampo.ItemIndex := 0;

  if ItemComboDefault <> '' then
    cbbCampo.ItemIndex := cbbCampo.Items.IndexOf(ItemComboDefault);
end;

procedure TfrmPesquisa.dbgPesquisaDblClick(Sender: TObject);
begin
  inherited;
  self.close;
end;


procedure TfrmPesquisa.exportarArquivo;
begin
 SaveDialog1.InitialDir :=  ExtractFileDir(GetCurrentDir);
 SaveDialog1.FileName   := 'Pesquisa_' + FormatDateTime('dd_mm_yyyy_hh_mm',now) + '.xml';
 SaveDialog1.Filter     := 'Arquivo XML|*.xml';
 if SaveDialog1.Execute Then
   qryPesquisa.SaveToFile(SaveDialog1.FileName)
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  qryCampos.close;
  qryCampos.SQL.Text := 'SELECT * FROM ' + view ;
  qryCampos.Open;

  configurarCampos;

  if ValorDefault <> '' then
    edtBusca.Text := ValorDefault;

  if AbrirPesquisa then
  btnPesquisar.Click;
end;



end.
