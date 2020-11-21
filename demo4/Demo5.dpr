program Demo5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,Math;
procedure Seven();
var
  sum:Integer;
  count:Integer;
  i:Integer;
  begin
    sum:=0;
    count:=0;
    for i := 1 to 100 do
    begin
      if (i mod 7=0) then
      begin
        count:=count+1;
        sum:=sum+i;
      end;

    end;
    Writeln(count,',',sum)

  end;
procedure narcissus();
var
  i:Integer;
  baiwei:Integer;
  shiwei:Integer;
  gewei:Integer;
begin

  for i := 100 to 999 do
    begin
      baiwei:=i div 100;
      shiwei:=(i mod 100) div 10;
      gewei:=(i mod 100) mod 10;
      if (Power(baiwei,3)+Power(shiwei,3)+Power(gewei,3))=i then
      begin
        Writeln(i);
      end;

    end;
end;

procedure triangle();
var
  i:Integer;
  j:Integer;
begin
  for i := 1 to 9 do
  begin
    for j := 1 to i do
    begin
      Write(i,'X',j,'=',(i*j),#$09);//²»»»ÐÐÊä³ö
    end;
    Writeln('');

  end
end;


begin
  triangle();
  Readln;

end.
