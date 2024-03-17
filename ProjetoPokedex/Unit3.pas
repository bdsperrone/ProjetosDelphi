unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls,
  REST.Types, System.JSON, Vcl.ExtCtrls, PNGImage, Vcl.ComCtrls,
  Vcl.BaseImageCollection, Vcl.ImageCollection;

type
  TForm3 = class(TForm)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    Button1: TButton;
    Edit2: TEdit;
    Label1: TLabel;
    LblNome: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
  vJSON: TJSONString;
  vJv: TJSONValue;
  vNome: String;
  vImagem: TPNGImage;

const
  cURL = 'https://pokeapi.co/api/v2/pokemon/';
begin
  RESTclient.UserAgent := 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36';
  RESTclient.BaseURL := cURL + Edit2.Text;
  RESTRequest.Execute;
 // Memo1.Lines.Add(RESTRequest.Response.JSONText);
  vJv := RESTResponse.JSONValue;
  vNome := vjv.GetValue<string>('name');
  LblNome.Caption := vNome;

  vJv := RESTResponse.JSONValue;
  vNome := vjv.GetValue<string>('imagem');
  //Image1.Visible := vImagem;

  vJSON := TJSONString.Create(RESTResponse.Content);




end;

end.
