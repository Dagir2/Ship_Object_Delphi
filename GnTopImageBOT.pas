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
 uses Field,PShip1x1,PShip2x2,Pship3x3,Pship4x4,PImage,System.SysUtils;
{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure GnTopImageBOT.UpdateCaption;
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

{ GnTopImageBOT }

procedure TGnTopImageBOT.CreateGnTopImageBOT(LeftShift,TopShift,j,i:integer);
begin
if (j<>0) or (i<>n-1) or (i<>0) or (j<>n-1) then
  Image[j,i]:=TTopImageBOT.Create(Image[j,i]);



if (j<>0) and (i<>n-1) and (i<>0) and (j<>n-1)  then
  begin
  Image[j,i]:=TTopImageBOT.Create(Form1);
  Image[j,i].Parent:=Form1;
  Image[j,i].Left:=1000+LeftShift;
  Image[j,i].Top:=20+TopShift;
  Image[j,i].Width:=20;
  Image[j,i].Height:=20;
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
        LeftShift:=LeftShift+20;
        end;
         LeftShift:=0;
          TopShift:=TopShift+20;
       end;

end;


end.
