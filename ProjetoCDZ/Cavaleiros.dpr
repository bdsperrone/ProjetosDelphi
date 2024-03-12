program Cavaleiros;

uses
  Vcl.Forms,
  UCavaleiros in 'UCavaleiros.pas' {FormCavaleiros},
  UResultado in 'UResultado.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormCavaleiros, FormCavaleiros);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
