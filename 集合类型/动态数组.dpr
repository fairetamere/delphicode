program 动态数组;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//定义动态数组
type
  StringArray=array of string;
var
  Array1:StringArray;
  index:Integer;
  Name:string;
var
  Array2:StringArray;
  Array3:StringArray;
  TotalArray:StringArray;
  NewTotalArray:StringArray;


procedure InitArray();
begin
    //设置数组长度
  SetLength(Array1,20);
  //第一种声明方式
  Array1:= StringArray.Create('刘光头','李瑞超');
  //第二种声明方式
  Array1:=['刘光头','李瑞超','神兽'];

end;
procedure ListArray();
  begin
  Array1:=['刘光头','李瑞超','神兽'];
  for index := Low(Array1) to High(Array1) do
    begin
    Writeln(Array1[index]);

    end;
  end;

procedure ListArray2();
  begin
  Array1:=['刘光头','李瑞超','神兽'];
  for Name in Array1 do
    begin
      Writeln(Name);
    end;

  end;
procedure ArrayConcat();
 begin
 Array2:=['极限战士','太空野狼','帝皇之拳'];
 Array3:=['千疮之子','死亡守卫','午夜领主'];
 //拼接数组
 TotalArray:=Concat(Array2,Array3);
 //拷贝数组
 //左开右闭
 NewTotalArray:=Copy( TotalArray,Low(TotalArray),Length(TotalArray));
 //插入数据
 Insert(Array2,Array3,0);
 for Name in Array3 do
   begin
     Writeln(Name);
   end;
 //删除元素
 Delete(Array3,Length(Array3)-2,Length(Array3));
 for Name in Array3 do
   begin
     Writeln(Name);
   end;

 end;



begin



  ArrayConcat();
  Readln;

end.
