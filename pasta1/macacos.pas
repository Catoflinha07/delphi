unit macacos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);

  private
    fcontador: integer;
    fimagemselecionada: timage;
    function sortearimagem: string;
    procedure EventoAoEntrarNaImagem(Sender: TObject);

  public
    { Public declarations }
  end;

const
  QTD_COLUNAS = 10;
  QTD_LINHAS = 10;
  BTN_SIZE = 64;

var
  button: timage;
  stream: TFilestream;
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Math;

procedure TForm1.EventoAoEntrarNaImagem(Sender: TObject);
begin
  var
  stream := TFilestream.create(sortearimagem, 0);
  try
    timage(Sender).picture.Assign(nil);
    timage(Sender).picture.LoadFromStream(stream);
    fimagemselecionada := timage(Sender);
    inc(fcontador);
    self.caption := 'trocador: ' + fcontador.TOstring;
  finally
    stream.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  fcontador := 0
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  for var colindex := 1 to QTD_COLUNAS do
  begin
    for var lindex := 1 to QTD_LINHAS do
    begin
      stream := TFilestream.create(sortearimagem, 0);
      try
        button := timage.create(self);
        button.Parent := self;
        button.Height := BTN_SIZE;
        button.Width := BTN_SIZE;
        button.picture.LoadFromStream(stream);
        button.Left := (colindex - 1) * BTN_SIZE;
        button.Top := (lindex - 1) * BTN_SIZE;
        button.OnMouseEnter := EventoAoEntrarNaImagem;

      finally
        stream.Free;
      end;
    end;

  end;

end;

function TForm1.sortearimagem: string;
const
  DIR = 'C:\Users\guiro\Documentos\delphi\pasta1\';
  EXT = '.PNG';
var
  index: integer;
begin
  index := randomrange(1, 6);

  result := DIR + 'imagem' + index.TOstring + EXT;
end;

procedure TForm1.TimerTimer(Sender: TObject);
begin
if assigned(fimagemselecionada) then
begin
  stream := TFilestream.create(sortearimagem, 0);
  try
    fimagemselecionada.picture.Assign(nil);
    fimagemselecionada.picture.LoadFromStream(stream);
    fimagemselecionada.repaint;
  finally
    stream.Free;
  end;
end;
end;

end.
