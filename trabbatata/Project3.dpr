program Project3;

uses
  Vcl.Forms,
  Unit3 in '..\Delphi_Sourcetree\Trivia\Unit3.pas' {Trivia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTrivia, Trivia);
  Application.Run;
end.
