unit FormAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,DaoUnit,Unit4,System.StrUtils,System.Generics.Collections;

type
  TAddform = class(TForm)
    lbl2: TLabel;
    edtAge: TEdit;
    edtName: TEdit;
    lbl1: TLabel;
    btnSave: TButton;
    btnCancel: TButton;
    procedure btnSaveClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Addform: TAddform;

implementation
//局部引用主窗体
uses Unit3;
{$R *.dfm}
procedure TAddform.btnCancelClick(Sender: TObject);
begin
 Self.Close;
end;

procedure TAddform.btnSaveClick(Sender: TObject);
var
  Dictionary: TDictionary<string,TStduent>;
  Key:string;
  Stu:TStduent;
begin
  TDao.Add(TStduent.Create(MidStr(TGUID.NewGuid.ToString,2,36),edtName.Text,StrToInt(edtAge.Text)));
  Self.Close;
  Dictionary:=TDao.ListStu();
  Form1.mmo1.Lines.Clear;
  for Key in Dictionary.Keys do
  begin
    Dictionary.TryGetValue(Key,Stu);
    Form1.mmo1.Lines.Add(Stu.Id+','+Stu.Name+','+Stu.Age.ToString);
  end;
end;

end.
