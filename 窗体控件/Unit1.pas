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
    procedure ShowMyMsg(var msg:TMessage);message WM_USER+1; //��Ϣ���
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 ShowMessage('hello,world');
 Application.MessageBox('����ͷ���豬ը',PWideChar('��ܰ��ʾ'),1);
end;
//������Ϣ
procedure TForm1.ButtonMessageClick(Sender: TObject);
begin
  SendMessage(Self.Handle,WM_USER+1,100,Integer(PChar('���')));
end;
//ʵ����Ϣ�������,����Ҫ��ʾ����
procedure TForm1.ShowMyMsg(var msg:TMessage);
begin
 ShowMessage(PChar(msg.LParam));
end;

end.
