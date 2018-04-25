unit Pship3x3;

interface
  uses
   MyTypes,Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Math,PShip2x2;
  type
  TShip3 = class (TShip2)
    private

    public
     Ship3Image: TImage;
      Live3:byte;
     x2,y2:integer;
    constructor CreatBOT( NewN:integer; var DField:MField);
  end;

implementation

{ TShip3 }



{ TShip3 }

constructor TShip3.CreatBOT(NewN: integer; var DField: MField);
var i,a,b:integer;  Ship1x2,Ship1x3:byte;
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
                               Ship1x3:=RandomRange(1,3);
                                case Ship1x3 of
                                   1:begin
                                       if  RandomOnLeft(a-1,b,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a-1,b]:=1;
                                            Live2:=1;
                                            x1:=a-1;
                                            y1:=b;

                                              DField[a-2,b]:=1;
                                            Live3:=1;
                                            x2:=a-2;
                                            y2:=b;
                                            exit;
                                          end;
                                      end;

                                     2:begin
                                         if  RandomOnRight(a,b,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a-1,b]:=1;
                                            Live2:=1;
                                            x1:=a-1;
                                            y1:=b;

                                              DField[a+1,b]:=1;
                                            Live3:=1;
                                            x2:=a+1;
                                            y2:=b;
                                            exit;
                                          end;



                                     end;

                                end;

                           end;


                       end;

                        2:begin
                             if RandomOnRight(a,b,NewN,DField) then
                           begin
                               Ship1x3:=RandomRange(1,3);
                                case Ship1x3 of
                                   1:begin
                                       if  RandomOnLeft(a,b,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a+1,b]:=1;
                                            Live2:=1;
                                            x1:=a+1;
                                            y1:=b;

                                              DField[a-1,b]:=1;
                                            Live3:=1;
                                            x2:=a-1;
                                            y2:=b;
                                            exit;
                                          end;
                                      end;

                                     2:begin
                                         if  RandomOnRight(a+1,b,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a+1,b]:=1;
                                            Live2:=1;
                                            x1:=a+1;
                                            y1:=b;

                                              DField[a+2,b]:=1;
                                            Live3:=1;
                                            x2:=a+2;
                                            y2:=b;
                                            exit;
                                          end;



                                     end;

                                end;

                           end;

                          end;

                       3: begin
                           if RandomOnTop(a,b,NewN,DField) then
                           begin
                               Ship1x3:=RandomRange(1,3);
                                case Ship1x3 of
                                   1:begin
                                       if  RandomOnTop(a,b-1,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a,b-1]:=1;
                                            Live2:=1;
                                            x1:=a;
                                            y1:=b-1;

                                              DField[a,b-2]:=1;
                                            Live3:=1;
                                            x2:=a;
                                            y2:=b-2;
                                            exit;
                                          end;
                                      end;

                                     2:begin
                                         if  RandomOnDown(a,b,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a,b+1]:=1;
                                            Live2:=1;
                                            x1:=a;
                                            y1:=b+1;

                                              DField[a,b-1]:=1;
                                            Live3:=1;
                                            x2:=a;
                                            y2:=b-1;
                                            exit;
                                          end;



                                     end;

                                end;

                           end;
                       end;

                      4: begin
                           if RandomOnDown(a,b,NewN,DField) then
                           begin
                               Ship1x3:=2;
                                case Ship1x3 of
                                   1:begin
                                       if  RandomOnDown(a,b+1,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a,b+1]:=1;
                                            Live2:=1;
                                            x1:=a;
                                            y1:=b+1;

                                              DField[a,b+2]:=1;
                                            Live3:=1;
                                            x2:=a;
                                            y2:=b+2;
                                            exit;
                                          end;
                                      end;

                                     2:begin
                                         if  RandomOnTop(a,b,NewN,DField) then
                                          begin
                                           DField[a,b]:=1;
                                            Live1:=1;
                                            x:=a;
                                            y:=b;

                                            DField[a,b+1]:=1;
                                            Live2:=1;
                                            x1:=a;
                                            y1:=b+1;

                                              DField[a,b-1]:=1;
                                            Live3:=1;
                                            x2:=a;
                                            y2:=b-1;
                                            exit;
                                          end;



                                     end;

                                end;

                           end;
                       end;





                   end;

               end;


          end;


end;

end.
