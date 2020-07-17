unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, Data.DB, Data.SqlExpr, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, uCadPessoa, uCadEmpresa;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Pessoas1: TMenuItem;
    Empresas1: TMenuItem;
    Funcinrio1: TMenuItem;
    procedure Pessoas1Click(Sender: TObject);
    procedure Empresas1Click(Sender: TObject);
    procedure Funcinrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.Empresas1Click(Sender: TObject);
begin
 frmCadEmpresa := TfrmCadEmpresa.Create(Self);
 frmCadEmpresa.showModal;
 FreeAndNil(frmCadEmpresa);
end;

procedure TfrmPrincipal.Funcinrio1Click(Sender: TObject);
begin
 frmCadPessoa := TfrmCadPessoa.Create(self);
 frmCadPessoa.tpPessoa := tpFuncionario;
 frmCadPessoa.showModal;
 FreeAndNil(frmCadPessoa);
end;

procedure TfrmPrincipal.Pessoas1Click(Sender: TObject);
begin
 frmCadPessoa := TfrmCadPessoa.Create(Self);
 frmCadPessoa.showModal;
 FreeAndNil(frmCadPessoa);
end;

end.
