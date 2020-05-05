program ihateyou;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'I Hate You (ILOVEYOU Antivirus)';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
