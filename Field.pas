unit Field;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Grids, Vcl.StdCtrls,Math,GnShip ,
  PShip2x2,PShip1x1,MyTypes,Pship3x3,Pship4x4,PImage,Menu,Vcl.Imaging.pngimage,GnTopImageBOT,GnImageUser,GnShipUser;

type
MShip1x1 = Array of TShip1;
MShip2x2 = Array of TShip2;
MShip3x3 = Array of TShip3;
MShip4x4 = Array of TShip4;


MImage =  Array of Array of TTopImageBOT;

TForm1 = class(TForm)
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Button4: TButton;
    Image1: TImage;

    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ImageOnClick(Sender: TObject);
    procedure BotImageOnClick(Sender: TObject);
    { Public declarations }
  end;


var
  Form1: TForm1;

  NImage:integer;


  Pz,Pz1,Pz2,Pz3:Integer;
  DField:MField;
  DFieldUser:MField;


  Ship1x1:MShip1x1;
  Ship2x2:MShip2x2;
  Ship3x3:MShip3x3;
  Ship4x4:MShip4x4;


  PlerShip1x1:MShip1x1;
  PlerShip2x2:MShip2x2;
  PlerShip3x3:MShip3x3;
  PlerShip4x4:MShip4x4;

  PlerImage:MImage;
  Image:MImage;

implementation

{$R *.dfm}

procedure TForm1.BotImageOnClick(Sender: TObject);
var Fimage:TTopImageBOT;
i:integer;
begin
    if Sender is  TTopImageBOT then
   begin
      Fimage:=TTopImageBOT(Sender);
        Fimage.Enabled:=false;

        Fimage.Picture.LoadFromFile('Textures\Other\NotKill.png');
      for i := 0 to z-1 do
        if (Fimage.Fx=PlerShip1x1[i].x) and (Fimage.Fy=PlerShip1x1[i].y) then
        Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');

/////////////////////////////////////////////////////////////////////
          for i := 0 to z1-1 do
          begin
        if (Fimage.Fx=PlerShip2x2[i].x) and (Fimage.Fy=PlerShip2x2[i].y) then
       Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');


        if (Fimage.Fx=PlerShip2x2[i].x1) and (Fimage.Fy=PlerShip2x2[i].y1) then
        Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');
        end;
/////////////////////////////////////////////////////////////////////////
              for i := 0 to z2-1 do
              begin
        if (Fimage.Fx=PlerShip3x3[i].x) and (Fimage.Fy=PlerShip3x3[i].y) then
       Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');


        if (Fimage.Fx=PlerShip3x3[i].x1) and (Fimage.Fy=PlerShip3x3[i].y1) then
       Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');



        if (Fimage.Fx=PlerShip3x3[i].x2) and (Fimage.Fy=PlerShip3x3[i].y2) then
       Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');

              end;

//////////////////////////////////////////////////////////////////////////
     for i := 0 to z3-1 do
              begin
        if (Fimage.Fx=PlerShip4x4[i].x) and (Fimage.Fy=PlerShip4x4[i].y) then
       Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');


        if (Fimage.Fx=PlerShip4x4[i].x1) and (Fimage.Fy=PlerShip4x4[i].y1) then
       Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');


        if (Fimage.Fx=PlerShip4x4[i].x2) and (Fimage.Fy=PlerShip4x4[i].y2) then
        Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');

         if (Fimage.Fx=PlerShip4x4[i].x3) and (Fimage.Fy=PlerShip4x4[i].y3) then
       Fimage.Picture.LoadFromFile('Textures\Other\Kill.png');
              end;

      end;
end;





procedure TForm1.Button3Click(Sender: TObject);
var i,j:integer;
begin
 for i := 1 to n-2 do
 for j := 1 to n-2 do
    ImageOnClick(Image[j,i]);
end;

procedure TForm1.Button4Click(Sender: TObject);
var  HT:ThUser;
i,j,k:integer;
begin
        HT:=ThUser.Create(False);
       HT.Priority:=tpNormal;

    for i := 0 to n-1 do
        for j := 0 to n-1 do
          Image[j,i].Enabled:=True;
end;

procedure TForm1.FormCreate(Sender: TObject);
var  i,j:integer;
  H:TH;
  H1:TGnTopImageBOT;
  H2:TGnImageUser;

begin
   NImage:=n*n;
   SetLength(Image,NImage);



   n:=n+2;
   SetLength(DField,n,n);
   for i := 0 to n-1 do
   for j := 0 to n-1 do
    DField[i,j]:=0;

     SetLength(DFieldUser,n,n);
   for i := 0 to n-1 do
   for j := 0 to n-1 do
    DFieldUser[i,j]:=0;

      H1:=TGnTopImageBOT.Create(False);
      H1.Priority:=tpLower;

       H2:=TGnImageUser.Create(False);
      H2.Priority:=tpNormal;

 H:=TH.Create(False);
 H.Priority:=tpNormal;


end;



procedure TForm1.ImageOnClick(Sender: TObject);
Var
Fimage:TTopImageBOT;
i,a,b:integer;
begin
 if Sender is  TTopImageBOT then
   begin
      Fimage:=TTopImageBOT(Sender);
      Fimage.Enabled:=false;
      Fimage.Picture.LoadFromFile('Textures/Other/Empty.png');
      for i := 0 to z-1 do
        if (Fimage.Fx=Ship1x1[i].x) and (Fimage.Fy=Ship1x1[i].y) then
        Fimage.Picture:=Ship1x1[i].Ship1Image.Picture;
/////////////////////////////////////////////////////////////////////
          for i := 0 to z1-1 do
          begin
        if (Fimage.Fx=Ship2x2[i].x) and (Fimage.Fy=Ship2x2[i].y) then
        Fimage.Picture:=Ship2x2[i].Ship1Image.Picture;


        if (Fimage.Fx=Ship2x2[i].x1) and (Fimage.Fy=Ship2x2[i].y1) then
        Fimage.Picture:=Ship2x2[i].Ship2Image.Picture;
        end;
/////////////////////////////////////////////////////////////////////////
              for i := 0 to z2-1 do
              begin
        if (Fimage.Fx=Ship3x3[i].x) and (Fimage.Fy=Ship3x3[i].y) then
        Fimage.Picture:=Ship3x3[i].Ship1Image.Picture;


        if (Fimage.Fx=Ship3x3[i].x1) and (Fimage.Fy=Ship3x3[i].y1) then
        Fimage.Picture:=Ship3x3[i].Ship2Image.Picture;



        if (Fimage.Fx=Ship3x3[i].x2) and (Fimage.Fy=Ship3x3[i].y2) then
        Fimage.Picture:=Ship3x3[i].Ship3Image.Picture;

              end;

//////////////////////////////////////////////////////////////////////////
     for i := 0 to z3-1 do
              begin
        if (Fimage.Fx=Ship4x4[i].x) and (Fimage.Fy=Ship4x4[i].y) then
        Fimage.Picture:=Ship4x4[i].Ship1Image.Picture;


        if (Fimage.Fx=Ship4x4[i].x1) and (Fimage.Fy=Ship4x4[i].y1) then
        Fimage.Picture:=Ship4x4[i].Ship2Image.Picture;


        if (Fimage.Fx=Ship4x4[i].x2) and (Fimage.Fy=Ship4x4[i].y2) then
        Fimage.Picture:=Ship4x4[i].Ship3Image.Picture;

         if (Fimage.Fx=Ship4x4[i].x3) and (Fimage.Fy=Ship4x4[i].y3) then
        Fimage.Picture:=Ship4x4[i].Ship4Image.Picture;
              end;

               while True do
             begin
      a:=RandomRange(1,n-1);
      b:=RandomRange(1,n-1);

             if PlerImage[a,b].Enabled then
      begin
       BotImageOnClick(PlerImage[a,b]);
       exit;
      end;
             end;

      end;

 end;





end.
