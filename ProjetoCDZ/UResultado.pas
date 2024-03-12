unit UResultado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    LblSigno: TLabel;
    LblDescricao1: TLabel;
    LblDescricao2: TLabel;
    lblCavaleiro: TLabel;


  private
    { Private declarations }
  public
    { Public declarations }
    procedure SelecionarSigno(Signo: String);
  end;

var
  Form1: TForm1;
  Cavaleiro: String;
  i: Integer;

implementation

{$R *.dfm}

{ TForm1 }
     type
    TCavaleiro = record
    Signo: string;
    Nome: string;
    end;

const
  Cavaleiros: array [1..12] of TCavaleiro = (
    (Signo: 'Capricornio'; Nome: 'Shura'),
    (Signo: 'Aquario'; Nome: 'Camus'),
    (Signo: 'Peixes'; Nome: 'Afrodite'),
    (Signo: '�ries'; Nome: 'Mu'),
    (Signo: 'Touro'; Nome: 'Aldebaran'),
    (Signo: 'G�meos'; Nome: 'Saga e Kanon '),
    (Signo: 'C�ncer'; Nome: 'M�scara da Morte'),
    (Signo: 'Le�o'; Nome: 'Aiolia'),
    (Signo: 'Virgem'; Nome: 'Shaka'),
    (Signo: 'Libra'; Nome: 'Dohko'),
    (Signo: 'Escorpi�o'; Nome: 'Milo'),
    (Signo: 'Sagit�rio'; Nome: 'Aiolos')
  );

procedure TForm1.SelecionarSigno(Signo: String);
begin
for i := Low(Cavaleiros) to High(Cavaleiros) do
  begin
    if Cavaleiros[i].Signo = Signo then
    begin
      Cavaleiro := Cavaleiros[i].Nome;
      Break;
    end;
  end;
  Lblsigno.caption := signo;
  Lblcavaleiro.caption := cavaleiro;
end;

end.
