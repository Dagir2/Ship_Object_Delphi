unit PShip2x2;

interface
 uses
   MyTypes,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Math, Vcl.Imaging.pngimage;


     type



    TShip2 = class
    protected
       procedure qSort(var A: TArray; min, max: Integer);
      procedure TopDownImage(b,b1:integer);
      procedure LeftRightImage(a,a1:integer);
      function RandomOnCentre(a,b,N:integer; DField: MField):boolean;
      function RandomOnLeft(a,b,N:integer; DField: MField):boolean;
      function RandomOnTop(a,b,N:integer; DField: MField):boolean;
      function RandomOnRight(a,b,N:integer; DField: MField):boolean;
      function RandomOnDown(a,b,N:integer; DField: MField):boolean;
    public
     Ship1Image: TImage;
     Ship2Image: TImage;

     x,y:integer;
     x1,y1:integer;

     Live1:byte;
     Live2:byte;
     constructor CreatBOT( NewN:integer; var DField:MField);
    end;
implementation

{ TShip1 }

constructor TShip2.CreatBOT(NewN: integer; var DField: MField);
var i,a,b:integer;  Ship1x2:byte;

begin



    while True do
          begin
            a:=RandomRange(1,NewN+1);
            b:=RandomRange(1,NewN+1);

                                 if  RandomOnCentre(a,b,NewN,DField)    then
                                 begin
                                     Ship1x2:=RandomRange(1,5);
                                     case Ship1x2 of


                                     1:begin
                                     if RandomOnLeft(a,b,NewN,DField) then
                                          begin
                                            DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;
                                            DField[a-1,b]:=1;
                                            Live2:=1;
                                            x1:=a-1;
                                            y1:=b;
                                            LeftRightImage(x,x1);
                                            exit;
                                          end;

                                     end;
                                     2:begin
                                       if  RandomOnTop(a,b,NewN,DField)  then
                                          begin
                                             DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;
                                            DField[a,b-1]:=1;
                                            Live2:=1;
                                            x1:=a;
                                            y1:=b-1;
                                            TopDownImage(y,y1);
                                            exit;
                                          end;

                                     end;
                                     3:begin
                                         if RandomOnDown(a,b,NewN,DField) then
                                            begin
                                             DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;
                                            DField[a,b+1]:=1;
                                            Live2:=1;
                                            x1:=a;
                                            y1:=b+1;
                                            TopDownImage(y,y1);
                                            exit;
                                            end;

                                     end;
                                    4:begin
                                      if RandomOnRight(a,b,NewN,DField) then
                                      begin
                                            DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;
                                            DField[a+1,b]:=1;
                                            Live2:=1;
                                            x1:=a+1;
                                            y1:=b;
                                            LeftRightImage(x,x1);
                                            exit;
                                      end;
                                    end;


                                  end;

                                 end;

                          end;





      end;




procedure TShip2.LeftRightImage(a, a1: integer);
var RL:integer;
begin
if a>a1 then
begin

       Rl:=RandomRange(1,3);
  case  RL of
      1:begin
        Ship2Image:=TImage.Create(Ship2Image);
        Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Right.png');
        Ship1Image:=TImage.Create(Ship1Image);
        Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Left.png');

        end;
       2:begin
          Ship2Image:=TImage.Create(Ship2Image);
        Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Right.png');
        Ship1Image:=TImage.Create(Ship1Image);
        Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Left.png');
          end;
  end;
end;

if a<a1 then
    begin
     Rl:=RandomRange(1,3);
        case  RL of
           1:begin
               Ship1Image:=TImage.Create(Ship1Image);
               Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Right.png');
               Ship2Image:=TImage.Create(Ship2Image);
               Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Left.png');

              end;
            2:begin
            Ship1Image:=TImage.Create(Ship1Image);
            Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Right.png');
            Ship2Image:=TImage.Create(Ship2Image);
            Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Left.png');
            end;
        end;

    end;
end;

procedure TShip2.qSort(var A: TArray; min, max: Integer);
var i, j, supp, tmp: Integer;
begin
supp:=A[max-((max-min) div 2)];
i:=min; j:=max;
while i<j do
  begin
    while A[i]<supp do i:=i+1;
    while A[j]>supp do j:=j-1;
    if i<=j then
      begin
        tmp:=A[i]; A[i]:=A[j]; A[j]:=tmp;
        i:=i+1; j:=j-1;
      end;
  end;
if min<j then qSort(A, min, j);
if i<max then qSort(A, i, max);
end;


function TShip2.RandomOnCentre(a, b, N: integer; DField: MField): boolean;
begin
Result:=false;
 if  (DField[a,b]=0)   then
        if (DField[a+1,b]<>1)    then
           if (DField[a-1,b]<>1)    then
               if (DField[a,b+1]<>1)  then
                   if (DField[a,b-1]<>1)  then
                       if (DField[a+1,b+1]<>1)  then
                          if (DField[a+1,b-1]<>1)  then
                               if (DField[a-1,b+1]<>1) then
                                   if (DField[a-1,b-1]<>1)  then
                                     Result:=true;

end;


function TShip2.RandomOnLeft(a, b, N: integer; DField: MField): boolean;
begin
 result:=false;
  if ((a-1)<>0) then
      if (DField[a-2,b]<>1)    then
            if (DField[a-2,b+1]<>1) then
                        if (DField[a-2,b-1]<>1)  then
                          result:=true;




end;

function TShip2.RandomOnDown(a, b, N: integer; DField: MField): boolean;
begin
Result:=false;
   if (b+1)<>(N+1) then
    if (DField[a,b+2]<>1)    then
            if (DField[a-1,b+2]<>1)    then
                   if (DField[a+1,b+2]<>1)  then
                          Result:=true;

end;





function TShip2.RandomOnRight(a, b, N: integer; DField: MField): boolean;
begin
Result:=false;
    if (a+1)<>(N+1) then
      if (DField[a+2,b]<>1)    then
                    if (DField[a+2,b+1]<>1) then
                        if (DField[a+2,b-1]<>1)  then
                            Result:=true;


end;

function TShip2.RandomOnTop(a, b,N: integer; DField: MField): boolean;
begin
Result:=false;
  if (b-1)<>0 then
    if (DField[a,b-2]<>1)    then
            if (DField[a-1,b-2]<>1)    then
                   if (DField[a+1,b-2]<>1)  then
                          Result:=true;



end;


procedure TShip2.TopDownImage(b, b1: integer);
var
TD:integer;
begin
 if b>b1 then
begin

       TD:=RandomRange(1,3);
  case  TD of
      1:begin
        Ship2Image:=TImage.Create(Ship2Image);
        Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Down.png');
        Ship1Image:=TImage.Create(Ship1Image);
        Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Top.png');

        end;
       2:begin
          Ship2Image:=TImage.Create(Ship2Image);
        Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Down.png');
        Ship1Image:=TImage.Create(Ship1Image);
        Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Top.png');
          end;
  end;
end;

if b<b1 then
    begin
      TD:=RandomRange(1,3);
        case   TD of
           1:begin
               Ship1Image:=TImage.Create(Ship1Image);
               Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Down.png');
               Ship2Image:=TImage.Create(Ship2Image);
               Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Top.png');

              end;
            2:begin
            Ship1Image:=TImage.Create(Ship1Image);
            Ship1Image.Picture.LoadFromFile('Textures/Ship2x2/TopShip_Down.png');
            Ship2Image:=TImage.Create(Ship2Image);
            Ship2Image.Picture.LoadFromFile('Textures/Ship2x2/DownShip_Top.png');
            end;
        end;

    end;
end;

end.