unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Generics.Collections,Unit4,FormAdd,DaoUnit;

type
  TForm1 = class(TForm)
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
 AddFrom:TAddform;
begin
  AddFrom:=TAddform.Create(Self);
  AddFrom.Left:=Self.Left+50;
  AddFrom.Top:=Self.Top+10;
  AddFrom.ShowModal;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
  Dictionary: TDictionary<string,TStduent>;
  Stu:TStduent;
begin
  mmo1.Lines.Clear;
  Dictionary:=TDao.ListStu();
  for Stu in Dictionary.Values do
  begin
   mmo1.Lines.Add(Stu.Id+','+Stu.Name+','+Stu.Age.ToString)
  end;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
 TDao.Clear;
 mmo1.Lines.Clear;
end;

end.
