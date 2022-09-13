program RemovedorBlocoSped;

uses
  Vcl.Forms,
  Unit_Principal in 'Unit_Principal.pas' {FormPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
