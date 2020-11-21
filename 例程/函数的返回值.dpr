program 函数的返回值;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//获取返回值通过Result
function Add(A:Integer;B:Integer):Integer;overload;
begin
 Result:=A+B;
 Exit;
end;
//函数重载，函数名相同，参数列表不同
function Add(A:Double;B:Double):Double;overload;
begin
 Result:=A+B;
 Exit;
end;
//通过引用获取运算结果
function Sub(A:Integer;B:Integer;var C:Integer):Integer;
begin
   C:=A-B;
   Exit;
end;
//通过out关键字
function Mul (A:Integer;B:Integer;out C:Integer):Integer;
begin
  C:=A*B;
  Exit;
end;
//通过函数名获取返回值
//前置声明
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
