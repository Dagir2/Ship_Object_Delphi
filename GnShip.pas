unit GnShip;

interface

uses
  System.Classes;

type
  TH = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation
uses Field,PShip1x1,PShip2x2,Pship3x3,Pship4x4,Menu;



procedure TH.Execute;
var i:integer;
begin

SetLength(Ship4x4,z3);
for I := 0 to z3-1 do
Ship4x4[i]:=TShip4.CreatBOT(N-2,DField);


SetLength(Ship3x3,z2);
 for I := 0 to z2-1 do
 Ship3x3[i]:=TShip3.CreatBOT(N-2,DField);

 SetLength(Ship2x2,z1);
  for i := 0 to z1-1 do
  Ship2x2[i]:=TShip2.CreatBOT(N-2,DField);


SetLength(Ship1x1,z);
for I := 0 to z-1 do
begin

Ship1x1[i]:=TShip1.CreatBOT(N-2,DField);
end;


end;

end.
