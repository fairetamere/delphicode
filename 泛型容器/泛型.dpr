program ����;

{$APPTYPE CONSOLE}

{$R *.res}
{���͵�ʹ�ó�����1����������2����}

uses
  System.SysUtils;
type
  TStringArr=array of string;
  TNumberArr=array of Integer;
  //����
  TArrayss<A>=array of A;

  //���͵�ʵ����
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
