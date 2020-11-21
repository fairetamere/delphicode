program demo3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

procedure Demofor();
var
 I:Integer;
begin
  for I :=0 to 10 do
  begin
      Writeln(I);
  end;
  for I :=10  downto 0 do
  begin
      Writeln(I);
  end;
end;
procedure Demowhile();
var
 K:Integer;
begin
  K:=10;
  while k<=100 do
  begin
    Writeln('Áõ¹âÍ·Éµ±Æ');
  end;
end;
procedure Demorepeat();
var
  j:Integer;
begin
  j:=10;
  repeat
    begin
      Writeln('.........');
    end;
  until(j<100) ;

end;
procedure Demobreak();
var
 l:Integer;
 m:Integer;
begin
  for l :=2 to 100 do
  begin
    for m := 3 to 20 do
    begin
    if m>30 then
      begin
        Break
      end;

      Writeln(m,l);
    end;

  end;

end;
procedure  Sum();
var
  sum:Integer;
  i:Integer;
begin
  sum:=0;
  for i := 1 to 100 do
    begin
      sum:=sum+i
    end;
  Writeln(sum);
end;

begin
  Sum();
  Readln;

end.
