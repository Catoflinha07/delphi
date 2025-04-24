unit unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, System.IOUtils, Generics.Collections;

type
  TForm3 = class(TForm)
    mainpanel: TPanel;
    spanel: TPanel;
    busca: TEdit;
    contador: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure buscaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FPaises : TList<string>;
    FLabels: TList<TLabel>;
    FAcertos: Integer;
    function CriptografarPalavras(APalavra: string): string;
    procedure buscar;
    procedure CriarPaises;
  public
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.buscaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    buscar;
end;

procedure TForm3.CriarPaises;
const
  LIMITE_LABELS = 25;
var
  PainelAtual: TPanel;
  NomePais: TLabel;
  Indice: Integer;
begin
  PainelAtual := nil;

  for Indice := 0 to FPaises.Count - 1 do
  begin
    if (Indice mod LIMITE_LABELS = 0) then
    begin
      PainelAtual := TPanel.Create(Self);
      PainelAtual.Parent := mainpanel;
      PainelAtual.Align := alLeft;
      PainelAtual.Width := 250;
    end;

    NomePais := TLabel.Create(Self);
    NomePais.Parent := PainelAtual;
    NomePais.Align := alTop;
    NomePais.Alignment := taCenter;
    NomePais.Font.Size := 12;
    NomePais.Caption := CriptografarPalavras(FPaises[Indice]);

    FLabels.Add(NomePais);
  end;
end;

function TForm3.CriptografarPalavras(APalavra: string): string;
var
  Partes: TArray<string>;
  Palavra: string;
  Resultado: string;
begin
  Resultado := '';
  Partes := APalavra.Trim.Split([' ', '-']);

  for Palavra in Partes do
  begin
    if Palavra.Length > 0 then
    begin
      var Codificado := UpperCase(Palavra[1]) + StringOfChar('?', Palavra.Length - 1);
      if Resultado = '' then
        Resultado := Codificado
      else
        Resultado := Resultado + ' ' + Codificado;
    end;
  end;

  Result := Resultado;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
  Linhas: TArray<string>;
begin
  try
Linhas := TFile.ReadAllLines('C:\Users\guiro\Documentos\delphi\trabbatata');

    if Length(Linhas) = 0 then
    begin
      ShowMessage('O arquivo está vazio.');
      Exit;
    end;

    FPaises := TList<string>.Create(Linhas);
    FLabels := TList<TLabel>.Create;
    FAcertos := 0;

    contador.Caption := 'Acertos: 0';

    CriarPaises;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao ler o arquivo: ' + E.Message);
    end;
  end;
end;

procedure TForm3.buscar;
var
  TextoDigitado, PaisAtual: string;
  Indice: Integer;
  Acertou: Boolean;
begin
  TextoDigitado := Trim(busca.Text).ToUpper;

  for Indice := 0 to FPaises.Count - 1 do
  begin
    PaisAtual := FPaises[Indice].ToUpper;
    Acertou := (TextoDigitado = PaisAtual);

    if Acertou and not (fsStrikeOut in FLabels[Indice].Font.Style) then
    begin
      with FLabels[Indice] do
      begin
        Font.Style := Font.Style + [fsStrikeOut];
        Font.Color := clRed;
        Caption := FPaises[Indice];
      end;

      Inc(FAcertos);
      contador.Caption := 'Quantidade acertos: ' + FAcertos.ToString;
    end;
  end;
end;
end.
