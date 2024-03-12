unit UCavaleiros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Imaging.jpeg, UResultado;

type
  TFormCavaleiros = class(TForm)
    PnlTopo: TPanel;
    PnlMeio: TPanel;
    DateTimePicker: TDateTimePicker;
    LblInstrucao: TLabel;
    BtnResultado: TButton;
    ImagemPrincipal: TImage;
    procedure BtnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCavaleiros: TFormCavaleiros;

implementation

{$R *.dfm}

procedure TFormCavaleiros.BtnResultadoClick(Sender: TObject);
var
  vDia, vMes: Integer;

begin
  vDia := FormatDateTime('dd', DateTimePicker.DateTime).ToInteger;
  vMes := FormatDateTime('mm', DateTimePicker.DateTime).ToInteger;

case vMes of
    01:
   begin
      if vDia < 19 then
      Form1.SelecionarSigno('Capricornio')
      else
      Form1.SelecionarSigno('Aquario');
    end;
    02:
    begin
      if vDia < 19 then
      Form1.SelecionarSigno('Aquario')
      else
      Form1.SelecionarSigno('Peixes');
    end;
    03:
    begin
      if vDia < 20 then
      Form1.SelecionarSigno('Peixes')
      else
      Form1.SelecionarSigno('Áries');
    end;
    04:
    begin
      if vDia < 20 then
      Form1.SelecionarSigno('Áries')
      else
      Form1.SelecionarSigno('Touro');
    end;
    05:
    begin
      if vDia < 21 then
      Form1.SelecionarSigno('Touro')
      else
      Form1.SelecionarSigno('Gêmeos');
    end;
    06:
    begin
      if vDia < 22 then
      Form1.SelecionarSigno('Gêmeos')
      else
      Form1.SelecionarSigno('Câncer');
    end;
    07:
    begin
      if vDia < 23 then
      Form1.SelecionarSigno('Câncer')
      else
      Form1.SelecionarSigno('Leão');
    end;
    08:
    begin
      if vDia < 23 then
      Form1.SelecionarSigno('Leão')
      else
      Form1.SelecionarSigno('Virgem');
    end;
    09:
    begin
      if vDia < 23 then
      Form1.SelecionarSigno('Virgem')
      else
      Form1.SelecionarSigno('Libra');
    end;
    10:
    begin
      if vDia < 23 then
      Form1.SelecionarSigno('Libra')
      else
      Form1.SelecionarSigno('Escorpião');
    end;
    11:
    begin
      if vDia < 22 then
      Form1.SelecionarSigno('Escorpião')
      else
      Form1.SelecionarSigno('Sagitário');
    end;
    12:
    begin
      if vDia < 22 then
      Form1.SelecionarSigno('Sagitário')
      else
      Form1.SelecionarSigno('Capricórnio');
    end;

end;
Form1.ShowModal;
end;


end.
