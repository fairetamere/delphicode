program demo6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.TypInfo,System.SysUtils;
const
  pie:Double=3.14;//常量，可以不进行类型声明，编译器由值来决定
//枚举 常量集
type
  Ecolor=(RED,YELLOW,BLUE);//定义枚举类型
  Eweek=(sun =1,mon =2) ;

var
  color:Ecolor;
  week:Eweek;
  Eindex:Integer;
  Ename:string;
  Evalue:Integer;
//获取枚举中的单个元素
procedure Demo1();
  begin
    color:=Ecolor.RED;
    week:=Eweek.sun;
    Writeln(ord(week),' ',ord(color));

  end;
//遍历枚举类型
procedure Demo2();
  begin
     Eindex:=0;
  for color := Low(Ecolor) to High(Ecolor) do
    begin
      Ename:=GetEnumName(TypeInfo(Ecolor),Eindex);
      Evalue:=GetEnumValue(TypeInfo(Ecolor),Ename);
      Writeln(Ename,',',Evalue);
      Inc(Eindex)
    end;


  end;
begin

  Demo1();
  Readln;


end.
