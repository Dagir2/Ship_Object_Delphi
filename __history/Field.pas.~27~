unit Field;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls,Math,GnShip ,
  PShip2x2,PShip1x1,MyTypes,Pship3x3,Pship4x4,PImage, Vcl.Imaging.pngimage,GnTopImageBOT;

type
MShip1x1 = Array of TShip1;
MShip2x2 = Array of TShip2;
MShip3x3 = Array of TShip3;
MShip4x4 = Array of TShip4;
MImage =  Array of Array of TTopImageBOT;

TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Memo3: TMemo;

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ImageOnClick(Sender: TObject);
    { Public declarations }
  end;


var
  Form1: TForm1;
  n,n1:integer;
  NImage:integer;
  z,z1,z2,z3:Integer;
  Ship1x1:MShip1x1;
  DField:MField;
  Ship2x2:MShip2x2;
  Ship3x3:MShip3x3;
  Ship4x4:MShip4x4;
  Image:MImage;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
i,j:integer;
begin

  for i := 1 to n-1 do
     for j := 1 to n-1 do
     if  DField[i,j]=1 then
     begin
        Memo1.Lines.Add(IntToStr(i)+' '+IntToStr(j));
     end;
              Memo2.Lines.Add('-----Ship4x4------');
      for I := 0 to z3-1 do
       begin
        Memo2.Lines.Add(IntToStr(Ship4x4[i].x)+' '+IntToStr(Ship4x4[i].y));
         Memo2.Lines.Add('---------------');
         Memo2.Lines.Add(IntToStr(Ship4x4[i].x1)+' '+IntToStr(Ship4x4[i].y1));
          Memo2.Lines.Add('--------------');
          Memo2.Lines.Add(IntToStr(Ship4x4[i].x2)+' '+IntToStr(Ship4x4[i].y2));
              Memo2.Lines.Add('--------------');
           Memo2.Lines.Add(IntToStr(Ship4x4[i].x3)+' '+IntToStr(Ship4x4[i].y3));
           Memo2.Lines.Add('++++++++++++++');
     end;

      Memo2.Lines.Add('-----Ship3x3------');
      for I := 0 to z2-1 do
       begin
        Memo2.Lines.Add(IntToStr(Ship3x3[i].x)+' '+IntToStr(Ship3x3[i].y));
         Memo2.Lines.Add('---------------');
         Memo2.Lines.Add(IntToStr(Ship3x3[i].x1)+' '+IntToStr(Ship3x3[i].y1));
          Memo2.Lines.Add('--------------');
          Memo2.Lines.Add(IntToStr(Ship3x3[i].x2)+' '+IntToStr(Ship3x3[i].y2));
           Memo2.Lines.Add('++++++++++++++');
     end;

      Memo2.Lines.Add('-----Ship2x2------');
      for I := 0 to z1-1 do
       begin
        Memo2.Lines.Add(IntToStr(Ship2x2[i].x)+' '+IntToStr(Ship2x2[i].y));
        Memo2.Lines.Add('---------------');
        Memo2.Lines.Add(IntToStr(Ship2x2[i].x1)+' '+IntToStr(Ship2x2[i].y1));
        Memo2.Lines.Add('++++++++++++++');
     end;

      Memo2.Lines.Add('-----Ship1x1------');
      for I := 0 to z-1 do
       begin
        Memo2.Lines.Add(IntToStr(Ship1x1[i].x)+' '+IntToStr(Ship1x1[i].y));

        Memo2.Lines.Add('++++++++++++++');
     end;

        image1.Picture:=Ship1x1[0].Ship1Image.Picture;
end;

procedure TForm1.Button2Click(Sender: TObject);
var i,j:integer;
H:TH;
H1:TGnTopImageBOT;
begin
 SetLength(DField,n,n);
   for i := 0 to n-1 do
   for j := 0 to n-1 do
    DField[i,j]:=0;

    Memo1.Clear;
    Memo2.Clear;




H1:=TGnTopImageBOT.Create(False);
 H1.Priority:=tpNormal;;

 H:=TH.Create(False);
 H.Priority:=tpNormal;
end;




procedure TForm1.FormCreate(Sender: TObject);
var  i,j:integer;
  H:TH;
  H1:TGnTopImageBOT;
begin
   n:=30;
   n1:=n;
   z:=4;
   z1:=1;
   z2:=2;
   z3:=1;
   NImage:=n*n;
   SetLength(Image,NImage);



   n:=n+2;
   SetLength(DField,n,n);
   for i := 0 to n-1 do
   for j := 0 to n-1 do
    DField[i,j]:=0;

      H1:=TGnTopImageBOT.Create(False);
      H1.Priority:=tpNormal;;

 H:=TH.Create(False);
 H.Priority:=tpNormal;


end;



procedure TForm1.ImageOnClick(Sender: TObject);
Var
Fimage:TTopImageBOT;
i:integer;
begin
 if Sender is  TTopImageBOT then
   begin
      Fimage:=TTopImageBOT(Sender);
      memo3.Lines.Add(IntToStr(FImage.Fx)+' '+IntToStr(FImage.Fy));
      Fimage.Enabled:=false;
      Fimage.Picture.LoadFromFile('Textures/Other/Empty.png');
      for i := 0 to z-1 do
      if (Fimage.Fx=Ship1x1[i].x) and (Fimage.Fy=Ship1x1[i].y) then
      Fimage.Picture:=Ship1x1[i].Ship1Image.Picture;

      for I := 0 to z1-1 do
      if (Fimage.Fx=Ship2x2[i].x) and (Fimage.Fy=Ship2x2[i].y) then
      Fimage.Picture:=Ship2x2[i].Ship1Image.Picture;

      for I := 0 to z1-1 do
      if (Fimage.Fx=Ship2x2[i].x1) and (Fimage.Fy=Ship2x2[i].y1) then
      Fimage.Picture:=Ship2x2[i].Ship2Image.Picture;

      end;
 end;


end.
