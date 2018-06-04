unit Menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  n,n1:integer;
   z,z1,z2,z3:Integer;
implementation
uses Field,Option;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin

Application.CreateForm(TForm1, Form1);
Form1.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
halt;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
    n:=10;
   n1:=n;
   z:=4;
   z1:=3;
   z2:=2;
   z3:=1;
end;

end.
