program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//例程分为函数与过程 函数必须要有返回值
//定义函数
//传值
function Demo2(A:Integer;B:Integer):Integer;
begin

end;
//传地址
function Demo3(var A:Integer;var B:Integer):Integer;
begin

end;
//传递不定参数
procedure Demo4(const Number:array of Integer);
begin

end;
// 带默认参数传递
procedure Demo5(a:Integer;b:Integer=100);
begin

end;
//定义常量
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
