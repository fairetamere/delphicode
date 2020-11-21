unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Unit2,System.Generics.Collections;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    BtnAdd: TButton;
    BtnDel: TButton;
    btnFind: TButton;
    BtnUpdate: TButton;
    edtUserName: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure BtnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  StudentList:TList<TStudent>;

implementation

{$R *.dfm}

procedure TForm1.BtnAddClick(Sender: TObject);
var
  Stu:TStudent;

begin

 if edtUserName.Text<>'' then
 begin
    StudentList.Add(TStudent.Create(edtUserName.Text))
 end
 else
 begin
    MessageBox(Self.Handle,'姓名不能为空','温馨提示',MB_OK);
 end;
  Memo1.Lines.Clear();
 for Stu in StudentList do
  begin
    Memo1.Lines.Add(Stu.Name);
  end;

end;

procedure TForm1.btnFindClick(Sender: TObject);
var
  Stu:TStudent;
begin
  for Stu in StudentList do
  begin
    Memo1.Lines.Add(Stu.Name);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //初始化泛型容器
  StudentList:=TList<TStudent>.Create();
  //
  StudentList.Add(TStudent.Create('崔老头'));
  StudentList.Add(TStudent.Create('小超超'));
  StudentList.Add(TStudent.Create('神尼'));
  StudentList.Add(TStudent.Create('刘光头'));
end;

end.
