program �����ķ���ֵ;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//��ȡ����ֵͨ��Result
function Add(A:Integer;B:Integer):Integer;overload;
begin
 Result:=A+B;
 Exit;
end;
//�������أ���������ͬ�������б�ͬ
function Add(A:Double;B:Double):Double;overload;
begin
 Result:=A+B;
 Exit;
end;
//ͨ�����û�ȡ������
function Sub(A:Integer;B:Integer;var C:Integer):Integer;
begin
   C:=A-B;
   Exit;
end;
//ͨ��out�ؼ���
function Mul (A:Integer;B:Integer;out C:Integer):Integer;
begin
  C:=A*B;
  Exit;
end;
//ͨ����������ȡ����ֵ
//ǰ������
function DivFun():Integer ;forward;
function GetResult():Integer;
begin
  GetResult:=1+2;
  DivFun();
end;
function DivFun():Integer;
begin

end;
var
  sum:Integer;
begin
  Mul(300,200,sum);
  Writeln(sum);
  Sub(300,200,sum);
  Writeln(sum);
  Writeln(GetResult());
  Readln;
end.
