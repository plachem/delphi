unit SDIMAIN;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, system.JSON;

type
  TSDIAppForm = class(TForm)
    StatusBar: TStatusBar;
    IdHTTP1: TIdHTTP;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SDIAppForm: TSDIAppForm;

implementation

{$R *.dfm}


procedure TSDIAppForm.Button1Click(Sender: TObject);
var
  MyObject: TJSONObject;
begin
  // idHTTP1.HandleRedirect := True;
  Memo1.Lines.Add(idHTTP1.Get('https://api.sosivip.com/api/v1/get_news'));
  //Memo1.Lines.Add(idHTTP1.Get('http://www.google.com'));
end;

end.
