program ��̬����;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
//���嶯̬����
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
    //�������鳤��
  SetLength(Array1,20);
  //��һ��������ʽ
  Array1:= StringArray.Create('����ͷ','����');
  //�ڶ���������ʽ
  Array1:=['����ͷ','����','����'];

end;
procedure ListArray();
  begin
  Array1:=['����ͷ','����','����'];
  for index := Low(Array1) to High(Array1) do
    begin
    Writeln(Array1[index]);

    end;
  end;

procedure ListArray2();
  begin
  Array1:=['����ͷ','����','����'];
  for Name in Array1 do
    begin
      Writeln(Name);
    end;

  end;
procedure ArrayConcat();
 begin
 Array2:=['����սʿ','̫��Ұ��','�ۻ�֮ȭ'];
 Array3:=['ǧ��֮��','��������','��ҹ����'];
 //ƴ������
 TotalArray:=Concat(Array2,Array3);
 //��������
 //���ұ�
 NewTotalArray:=Copy( TotalArray,Low(TotalArray),Length(TotalArray));
 //��������
 Insert(Array2,Array3,0);
 for Name in Array3 do
   begin
     Writeln(Name);
   end;
 //ɾ��Ԫ��
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
