unit Unit3;

interface
uses
  System.SysUtils,Winapi.Windows,Vcl.Dialogs;
type
  //������Ϣ�Ľṹ
  TMyMsg=record
  //��Ϣ��
  MsgNum:Cardinal;
  //��Ϣ����
  MsgText:ShortString;
  end;
  //��Ϣ��������
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
 ShowMessage('���յ���Ϣ����Ϣ���ǣ�'+msg.MsgNum.ToString+'��Ϣ������:'+msg.MsgText);
end;

//���෽����д��ʵ��
procedure TMsgAccepter.DefaultHandler(var message);
var
   msg:TMyMsg;

begin
 msg:=TMyMsg(message);
 ShowMessage('����Ϣ����޷�����'+msg.MsgNum.ToString);

end;

end.
//����Ϣѭ��
