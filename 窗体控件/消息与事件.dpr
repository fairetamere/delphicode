program 消息与事件;

uses
  Vcl.Forms,
  Unit1Form in 'Unit1Form.pas' {Form1},
  Unit3 in 'Unit3.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
