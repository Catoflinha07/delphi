program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {cadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tcadastro, cadastro);
  Application.Run;
end.
