unit Unit4;

interface
type
  TStduent=class
  private
  FName:string;
  FAge:Integer;
  FId:string;
  public
  constructor Create(); overload;
  constructor Create(FId,FName: string;FAge:Integer);overload;
  property Name:string read FName write FName;
  property Age:Integer read FAge write FAge;
  property Id:string read FId write FId;

  end;

implementation

{ TStduent }

constructor TStduent.Create(FId,FName: string; FAge: Integer);
begin
  Self.FId:=FId;
  Self.FName:=FName;
  Self.FAge:=FAge;
end;

constructor TStduent.Create;
begin

end;

end.
