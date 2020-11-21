unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ButtonMessage: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ButtonMessageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowMyMsg(var msg:TMessage);message WM_USER+1; //消息编号
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 ShowMessage('hello,world');
 Application.MessageBox('刘光头亲妈爆炸',PWideChar('温馨提示'),1);
end;
//发送消息
procedure TForm1.ButtonMessageClick(Sender: TObject);
begin
  SendMessage(Self.Handle,WM_USER+1,100,Integer(PChar('你好')));
end;
//实现消息处理过程,不需要显示调用
procedure TForm1.ShowMyMsg(var msg:TMessage);
begin
 ShowMessage(PChar(msg.LParam));
end;

end.
