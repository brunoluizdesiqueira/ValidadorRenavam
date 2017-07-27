program ValidadorRenavam;

uses
  ExceptionLog,
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  Renavam in 'Renavam.pas',
  Utils in 'Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
