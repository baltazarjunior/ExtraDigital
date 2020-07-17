unit uMaster;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TfrmMaster = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblTitle: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMaster: TfrmMaster;

implementation

{$R *.dfm}

procedure TfrmMaster.FormShow(Sender: TObject);
begin
  Self.constraints.MaxHeight := self.Height;
  Self.constraints.MaxWidth := self.Width;
  Self.constraints.MinHeight := self.Height;
  Self.constraints.MinWidth := self.Width;
end;

end.
