program RemovedorBlocoSped;

uses
  MIDASLIB,
  Vcl.Forms,
  Vcl.Styles,
  Unit_Principal in 'Unit_Principal.pas' {FormPrincipal},
  Unit_TraducaoDialogs in 'Unit_TraducaoDialogs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  // faz a traducao dos dialogs
  TTraducao.ChangeValues;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
