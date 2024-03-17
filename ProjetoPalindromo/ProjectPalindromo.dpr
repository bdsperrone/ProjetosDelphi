program ProjectPalindromo;

uses
  Vcl.Forms,
  uPalindromo in 'uPalindromo.pas' {FormPalindromo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPalindromo, FormPalindromo);
  Application.Run;
end.
