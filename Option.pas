unit Option;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    ���������: TButton;
    RadioGroup1: TRadioGroup;
    procedure ���������Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}
 uses Menu;



procedure TForm3.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
form2.Visible:=true;
Form3.Visible:=false;
end;

procedure TForm3.���������Click(Sender: TObject);
begin
case RadioGroup1.ItemIndex of

 0:begin
     SizeImage:=50;
       n:=10;
   n1:=n;
   z:=4;
   z1:=3;
   z2:=2;
   z3:=1;
 end;

  1:begin
      SizeImage:=35;
       n:=15;
   n1:=n;
   z:=5;
   z1:=4;
   z2:=3;
   z3:=2;
 end;
 2:begin
      SizeImage:=22;
       n:=25;
   n1:=n;
   z:=6;
   z1:=5;
   z2:=4;
   z3:=3;
 end;
end;
form2.Visible:=true;
Form3.Visible:=false;
end;

end.
