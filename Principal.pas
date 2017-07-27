unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AltLib, StrUtils, Math, Renavam;

type
  TfrmPrincipal = class(TForm)
    btnValidar: TButton;
    edtRenavam: TEdit;
    btnCancelar: TButton;
    Label1: TLabel;
    lblValidacao: TLabel;
    procedure btnValidarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }     
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnValidarClick(Sender: TObject);
begin
  if TRenavam.ValidaRenavam(edtRenavam.Text) then
    begin
      lblValidacao.Font.Color   := clGreen;
      lblValidacao.Caption := 'Renavam valido.';
    end
  else
    begin
       lblValidacao.Font.Color   := clRed;
       lblValidacao.Caption := 'Renavam incorreto.';

    end;

end;

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
