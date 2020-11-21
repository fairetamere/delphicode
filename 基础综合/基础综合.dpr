program 基础综合;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//记录类型
//定义一个记录学生信息的记录类型
type
  TStudent=record
    Id:string;
    Name:string;
  end;
  TStudentList= array of TStudent;
var
 StudentList:TStudentList;


{选择菜单}
procedure ShowMenu();
begin
  Writeln('*******学生信息管理系统********');
  Writeln('1,添加信息');
  Writeln('2,删除信息');
  Writeln('3,查询信息');
  Writeln('4,修改信息');
  Writeln('*******************************');
end;
{添加学生信息}
procedure AddStudent();
var
  Student:TStudent;
  ArrayLength:Integer;
  Uuid:TGUID;
begin
 ArrayLength:=Length(StudentList);
 Writeln('请输入您要添加的学生姓名:');
 Readln(Student.Name);
 //生成唯一标识
 CreateGUID(Uuid);
 Student.Id:=GUIDToString(Uuid);
 Insert(Student,StudentList,ArrayLength-1);
 if Length(StudentList)>ArrayLength then
 begin
  Writeln('添加成功')
 end
 else
 begin
  Writeln('添加失败')
 end;

end;



{查询信息}
procedure ListStudent();
var
  Student:TStudent;
begin
  Writeln('查询信息如下：');
  for Student in StudentList do
  begin
    with Student do begin
      Writeln('编号：',Id,#$09,'姓名:',Name);
    end;

  end;

  end;
{删除信息}
procedure DeleteStudent();
var
  Student:TStudent;
  UserName:string;
  isTure:string;
  Indexs:Integer;
  ArrayLenth:Integer;
begin
  Writeln('请输入您要删除的学生姓名');
  Readln(UserName);
  Indexs:=0;
  ArrayLenth:=Length(StudentList);
  for Student in StudentList do
  begin
    with Student do
    begin
      if (UserName=Name) then
      begin
        Writeln('您确认要删除【',Id,#$09,Name,'】信息吗?Y/N');
        Readln(isTure);
        if (isTure='Y') then
        begin
          Delete(StudentList,Indexs,1);
          if(Length(StudentList)<ArrayLenth) then
          begin
             Writeln('删除成功');
          end
          else
          begin
            Writeln('删除失败');
          end;
        end;
        Exit;

      end;

    end;
   Inc(Indexs);
  end;

end;

{修改信息}
procedure UpdateStudent();
var
  UName:string;
  StudentIndex:Integer;
  IsExist:Boolean;
begin
  IsExist:=False;
  Writeln('请输入您修改的学生姓名');
  Readln(UName);
  for StudentIndex := Low(StudentList) to High(StudentList) do
  begin
    with StudentList[StudentIndex] do
    begin
    if (Name=UName) then
     begin
       Writeln('请输入新的姓名');
       Readln(UName);
       Name:=UName;
       Break
     end;

    end;
  end;




  if not IsExist then
  begin
    Writeln('修改失败，查无此人');
  end;


end;


{接受用户输入}
procedure UserChoose();
var
  UserChooseIndex:Integer;
begin
  Writeln('请选择您要使用的功能:');
  Readln(UserChooseIndex);
  case UserChooseIndex of
    1:
    begin
      Writeln('您选择了添加功能');
      AddStudent();
    end;
    2:
    begin
      Writeln('您选择了删除功能');
      DeleteStudent();
    end;
    3:
    begin
      Writeln('您选择了查询功能');
      ListStudent();
    end;
    4:
    begin
      Writeln('您选择了修改功能');
      UpdateStudent();
    end;
  else
    begin
      Writeln('请选择正确的编号');
    end;

  end;
end;




begin
  StudentList:=[];
  while True do
  begin
    ShowMenu();
    UserChoose();
  end;

  Readln;
end.
