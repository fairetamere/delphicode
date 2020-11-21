program demo7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,System.TypInfo;
Type
  set1=set of Char;
  set2=set of 'a'..'z';
{简写}
var
  set3:set of 1..2;

type
    Tcolor=(RED,GREEN,BLUE);
type
  Tsetcolor=set of Tcolor;
  Tsetcolor1=set of RED..BLUE;
var
  index:Integer;
  sc:Tsetcolor;
procedure  listSet();
begin
  for index := Ord(Low(Tcolor)) to Ord(High(Tcolor)) do
  begin
     Writeln(GetEnumName(TypeInfo(Tcolor),index));
  end;

end;

{集合运算 +取并集，*交集运算,-差集运算}

begin
  set1:=['a','b'];
  Readln;

end.
