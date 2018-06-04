unit GnTopImageBOT;

interface

uses
  System.Classes;

type
  TGnTopImageBOT = class(TThread)
  private
  FIimage:integer;

  procedure CreateGnTopImageBOT(LeftShift,TopShift,j,i:integer);
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation
 uses Field,PShip1x1,PShip2x2,Pship3x3,Pship4x4,PImage,System.SysUtils,Menu;


procedure TGnTopImageBOT.CreateGnTopImageBOT(LeftShift,TopShift,j,i:integer);
begin
if (j<>0) or (i<>n-1) or (i<>0) or (j<>n-1) then
  Image[j,i]:=TTopImageBOT.Create(Image[j,i]);



if (j<>0) and (i<>n-1) and (i<>0) and (j<>n-1)  then
  begin
  Image[j,i]:=TTopImageBOT.Create(Form1.Panel2);
  Image[j,i].Parent:=Form1.Panel2;
  Image[j,i].Left:=0+LeftShift;
  Image[j,i].Top:=0+TopShift;
  Image[j,i].Width:=SizeImage;
  Image[j,i].Height:=SizeImage;
  Image[j,i].Picture.LoadFromFile('Textures/Other/TopImage.png');
  Image[j,i].Stretch:=True;
  Image[j,i].Visible:=true;
  Image[j,i].Tag:=i;
  Image[j,i].OnClick:=Form1.ImageOnClick;
  end;

end;

procedure TGnTopImageBOT.Execute;
var i,j,LeftShift,TopShift:integer;
begin

       SetLength(Image,n,n);

       LeftShift:=0;
       TopShift:=0;

       for i := 0 to n-1 do
       begin
        for j := 0 to n-1 do
         begin
        CreateGnTopImageBOT(LeftShift,TopShift,j,i);


        Image[j,i].Fx:=j;
        Image[j,i].Fy:=i;
        LeftShift:=LeftShift+SizeImage;
        end;
         LeftShift:=0;
          TopShift:=TopShift+SizeImage;
       end;

       for i := 0 to n-1 do
        for j := 0 to n-1 do
          Image[j,i].Enabled:=false;
end;


end.
