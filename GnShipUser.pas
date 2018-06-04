unit GnShipUser;

interface

uses
  System.Classes;

type
  ThUser = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    public
  end;

implementation
    uses Field,PShip1x1,PShip2x2,Pship3x3,Pship4x4,Menu;
{ 
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);  

  and UpdateCaption could look like,

    procedure ThUser.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; 
    
    or 
    
    Synchronize( 
      procedure 
      begin
        Form1.Caption := 'Updated in thread via an anonymous method' 
      end
      )
    );
    
  where an anonymous method is passed.
  
  Similarly, the developer can call the Queue method with similar parameters as 
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.
    
}

{ ThUser }

procedure ThUser.Execute;
var i,j,k:integer;
begin

SetLength(PlerShip4x4,z3);
for I := 0 to z3-1 do
PlerShip4x4[i]:=TShip4.CreatBOT(N-2,DFieldUser);


SetLength(PlerShip3x3,z2);
 for I := 0 to z2-1 do
 PlerShip3x3[i]:=TShip3.CreatBOT(N-2,DFieldUser);

 SetLength(PlerShip2x2,z1);
  for i := 0 to z1-1 do
  PlerShip2x2[i]:=TShip2.CreatBOT(N-2,DFieldUser);


SetLength(PlerShip1x1,z);
for I := 0 to z-1 do
begin

PlerShip1x1[i]:=TShip1.CreatBOT(N-2,DFieldUser);
end;

    for i := 1 to n-2 do
    for j := 1 to n-2 do
    begin
    for k := 0 to z-1 do
    if  (PlerImage[j,i].Fx=PlerShip1x1[k].x) and (PlerImage[j,i].Fy= PlerShip1x1[k].y) then
         PlerImage[j,i].Picture:=PlerShip1x1[k].Ship1Image.Picture;

     for k := 0 to z1-1 do
        begin
          if  (PlerImage[j,i].Fx=PlerShip2x2[k].x) and (PlerImage[j,i].Fy= PlerShip2x2[k].y) then
          PlerImage[j,i].Picture:=PlerShip2x2[k].Ship1Image.Picture;

           if  (PlerImage[j,i].Fx=PlerShip2x2[k].x1) and (PlerImage[j,i].Fy= PlerShip2x2[k].y1) then
          PlerImage[j,i].Picture:=PlerShip2x2[k].Ship2Image.Picture;
        end;

          for k := 0 to z2-1 do
        begin
          if  (PlerImage[j,i].Fx=PlerShip3x3[k].x) and (PlerImage[j,i].Fy= PlerShip3x3[k].y) then
          PlerImage[j,i].Picture:=PlerShip2x2[k].Ship1Image.Picture;

           if  (PlerImage[j,i].Fx=PlerShip3x3[k].x1) and (PlerImage[j,i].Fy= PlerShip3x3[k].y1) then
          PlerImage[j,i].Picture:=PlerShip3x3[k].Ship2Image.Picture;

          if  (PlerImage[j,i].Fx=PlerShip3x3[k].x2) and (PlerImage[j,i].Fy= PlerShip3x3[k].y2) then
          PlerImage[j,i].Picture:=PlerShip3x3[k].Ship3Image.Picture;
        end;

        for k := 0 to z3-1 do
        begin
          if  (PlerImage[j,i].Fx=PlerShip4x4[k].x) and (PlerImage[j,i].Fy= PlerShip4x4[k].y) then
          PlerImage[j,i].Picture:=PlerShip4x4[k].Ship1Image.Picture;

           if  (PlerImage[j,i].Fx=PlerShip4x4[k].x1) and (PlerImage[j,i].Fy= PlerShip4x4[k].y1) then
          PlerImage[j,i].Picture:=PlerShip4x4[k].Ship2Image.Picture;

          if  (PlerImage[j,i].Fx=PlerShip4x4[k].x2) and (PlerImage[j,i].Fy= PlerShip4x4[k].y2) then
          PlerImage[j,i].Picture:=PlerShip4x4[k].Ship3Image.Picture;

          if  (PlerImage[j,i].Fx=PlerShip4x4[k].x3) and (PlerImage[j,i].Fy= PlerShip4x4[k].y3) then
          PlerImage[j,i].Picture:=PlerShip4x4[k].Ship4Image.Picture;
        end;
    end;

    Form1.Button4.Visible:=false;
end;


end.
