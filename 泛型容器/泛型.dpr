program 泛型;

{$APPTYPE CONSOLE}

{$R *.res}
{泛型的使用场景：1泛型容器，2反射}

uses
  System.SysUtils;
type
  TStringArr=array of string;
  TNumberArr=array of Integer;
  //泛型
  TArrayss<A>=array of A;

  //泛型的实例化
  TStudent<T>=class

  end;
var
  StringArr:TStringArr;
  NumberArr:TNumberArr;
  Arrayss:TArrayss<Integer>;
  I:Integer;

begin
  Arrayss:=[1,2,3,4,5];
  for I in Arrayss do
  begin
    Writeln(I);
  end;
  TStudent<string>.Create();
  Readln;


end.
