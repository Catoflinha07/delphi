unit telacadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.Menus;

type
  Tcadastro = class(TForm)
    matriz: TStringGrid;
    nome: TEdit;
    Label1: TLabel;
    email: TEdit;
    senha: TEdit;
    senha2: TEdit;
    telefone: TMaskEdit;
    enviar: TButton;
    datas: TMaskEdit;
    RadioGroup1: TRadioGroup;
    MainMenu1: TMainMenu;
    procedure enviarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  id : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  cadastro: Tcadastro;

implementation

{$R *.dfm}

procedure Tcadastro.enviarClick(Sender: TObject);
begin
  matriz.cells[0,id] := nome.Text;
  matriz.cells[1,id] := email.Text;
  matriz.cells[2,id] := datas.Text;
  matriz.cells[3,id] := telefone.Text;
  matriz.cells[4,id] := RadioGroup1.Items[ RadioGroup1.ItemIndex];
  Inc(id);
end;

procedure Tcadastro.FormCreate(Sender: TObject);
begin
//
id := 1;
matriz.cells[0,0] := 'Nome';
matriz.cells[1,0] := 'E-mail';
matriz.cells[2,0] := 'datas';
matriz.cells[3,0] := 'telefone';
matriz.cells[4,0] := 'tipo';


end;

end.
