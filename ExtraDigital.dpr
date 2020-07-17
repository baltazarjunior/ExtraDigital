program ExtraDigital;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uMaster in 'uMaster.pas' {frmMaster},
  uCadMaster in 'uCadMaster.pas' {frmCadMaster},
  uCadPessoa in 'uCadPessoa.pas' {frmCadPessoa},
  udmConexao in 'udmConexao.pas' {dmConexao: TDataModule},
  udmCadPessoa in 'udmCadPessoa.pas' {dmCadPessoa: TDataModule},
  uPesquisa in 'uPesquisa.pas' {frmPesquisa},
  uCadEmpresa in 'uCadEmpresa.pas' {frmCadEmpresa},
  udmCadEmpresa in 'udmCadEmpresa.pas' {dmCadEmpresa: TDataModule},
  uEndereco in 'uEndereco.pas' {fmeEndereco: TFrame},
  uFuncoesExtra in 'uFuncoesExtra.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmMaster, frmMaster);
  Application.CreateForm(TfrmCadMaster, frmCadMaster);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
