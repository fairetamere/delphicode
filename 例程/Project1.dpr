program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//���̷�Ϊ��������� ��������Ҫ�з���ֵ
//���庯��
//��ֵ
function Demo2(A:Integer;B:Integer):Integer;
begin

end;
//����ַ
function Demo3(var A:Integer;var B:Integer):Integer;
begin

end;
//���ݲ�������
procedure Demo4(const Number:array of Integer);
begin

end;
// ��Ĭ�ϲ�������
procedure Demo5(a:Integer;b:Integer=100);
begin

end;
//���峣��
const
 h=100;
var
 X:Integer;
 Y:Integer;


begin
   X:=1;
   Y:=2;
   Demo2(X,Y);
end.
