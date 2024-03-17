object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 473
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 5
    Width = 140
    Height = 13
    Caption = 'Digite o numero do Pokemon:'
  end
  object LblNome: TLabel
    Left = 53
    Top = 102
    Width = 138
    Height = 13
    Caption = '_______________________'
  end
  object Label2: TLabel
    Left = 16
    Top = 102
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Image1: TImage
    Left = 8
    Top = 121
    Width = 273
    Height = 337
  end
  object Button1: TButton
    Left = 206
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 8
    Top = 24
    Width = 273
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 121
    Width = 273
    Height = 337
    TabOrder = 2
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    Params = <>
    SecureProtocols = [SSL2, SSL3, TLS1, TLS11, TLS12, TLS13]
    RaiseExceptionOn500 = False
    SynchronizedEvents = False
    Left = 48
    Top = 400
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 120
    Top = 400
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 200
    Top = 400
  end
end
