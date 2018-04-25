program Project1;

uses
  Vcl.Forms,
  Field in 'Field.pas' {Form1},
  PShip1x1 in 'PShip1x1.pas',
  PShip2x2 in 'PShip2x2.pas',
  GnShip in 'GnShip.pas',
  MyTypes in 'MyTypes.pas',
  Pship3x3 in 'Pship3x3.pas',
  Pship4x4 in 'Pship4x4.pas',
  GnTopImageBOT in 'GnTopImageBOT.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
