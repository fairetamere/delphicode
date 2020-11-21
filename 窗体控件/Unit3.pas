unit Unit3;

interface
uses
  System.SysUtils,Winapi.Windows,Vcl.Dialogs;
type
  //传输消息的结构
  TMyMsg=record
  //消息号
  MsgNum:Cardinal;
  //消息内容
  MsgText:ShortString;
  end;
  //消息接收器类
  TMsgAccepter=class(TObject)
  private
    procedure AcceptMsg2000(var msg:TMyMsg);message 2000;
  public
    procedure DefaultHandler(var message);override;
  end;

implementation

{ TMsgAccepter }

procedure TMsgAccepter.AcceptMsg2000(var msg: TMyMsg);
begin
 ShowMessage('接收到消息，消息号是：'+msg.MsgNum.ToString+'消息内容是:'+msg.MsgText);
end;

//父类方法重写的实现
procedure TMsgAccepter.DefaultHandler(var message);
var
   msg:TMyMsg;

begin
 msg:=TMyMsg(message);
 ShowMessage('该消息编号无法处理'+msg.MsgNum.ToString);

end;

end.
//主消息循环
