unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Registry, ComCtrls, ExtCtrls, Gauges;

type
  TForm1 = class(TForm)
    state1: TLabel;
    state2: TLabel;
    state3: TLabel;
    out1: TLabel;
    out2: TLabel;
    out3: TLabel;
    Image1: TImage;
    StatusBar1: TStatusBar;
    state4: TLabel;
    out4: TLabel;
    info: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetState(Num:integer; State:string; Color:TColor);
    Procedure Routine;
    { Public declarations }
  end;

var
  Form1: TForm1;
  Reg:TRegIniFile;
  Total,Infected:integer;
  InfList:TStringList;
  Stop :boolean;
implementation

const
  sequence = 'rem  barok -loveletter(vbe) <i hate go to school>'#13#10'rem '#9#9#9'by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines'#13#10;
  run1 = 'MSKernel32';
  run2 = 'Win32DLL';
  run3 = 'WIN-BUGSFIX';
  file1 = 'http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe';
  file2 = 'http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe';
  file3 = 'http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe';
  file4 = 'http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe';
{$R *.DFM}


// zjisti infikovany soubor
function CheckFile(Name:string):boolean;
var
  F:file;
  Comp:string;
begin
  FileMode := 0;
  AssignFile(F, Name);
  {$i-}
  Reset(F,1);
  if ioresult=0 then begin
  SetLength(Comp, length(sequence));
  if FileSize(F) >= length(sequence) then begin
    BlockRead(F, Comp[1], length(sequence));
    result := (Comp = Sequence)
  end else
    result := false;
  CloseFile(F);
  end else result:=false;
  {$i+}
end;


function WindowsDir:string;
var
  tmp:pchar;
begin
  Tmp := StrAlloc(1024);
  GetWindowsDirectory(Tmp, 1024);
  result := StrPas(Tmp);
  result := ExcludeTrailingBackSlash(result);
  StrDispose(Tmp);
end;

function SystemDir:string;
var
  tmp:pchar;
begin
  Tmp := StrAlloc(1024);
  GetSystemDirectory(Tmp, 1024);
  result := StrPas(Tmp);
  result := ExcludeTrailingBackSlash(result);
  StrDispose(Tmp);
end;



function CheckInfection:boolean;
var
  page: string;
begin
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  Result := false;
  if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\',false) then begin
    result := result or (Reg.ReadString('',run1,'')<>'');
    Reg.CloseKey;
  end;

  if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\',false) then begin
    result := result or (Reg.ReadString('',run3,'')<>'');
    Reg.CloseKey;
  end;

  if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\RunServices\',false) then begin
    result := result or (Reg.ReadString('',run2,'')<>'');
    Reg.CloseKey;
  end;


  result := result or FileExists(SystemDir + '\LOVE-LETTER-FOR-YOU.HTM');
  result := result or FileExists(SystemDir + '\MSKernel32.vbs');
  result := result or FileExists(WindowsDir + '\Win32DLL.vbs');
  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.OpenKey('Software\Microsoft\Internet Explorer\Main',false) then begin
    page := Reg.ReadString('','Start Page','');
    result := result or (page = file1) or (page = file2) or (page = file3) or (page = file4);
    Reg.CloseKey;
  end;
  Sleep(500);
end;



procedure DesInfectMain;
var
  tmp:boolean;
  page:string;
begin
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\',false) then begin
    if Reg.ReadString('',run1,'')<>'' then
      Reg.DeleteValue(run1);
    Reg.CloseKey;
  end;

  if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Run\',false) then begin
    if (Reg.ReadString('',run3,'')<>'') then
      Reg.DeleteValue(run3);
    Reg.CloseKey;
  end;

  if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\RunServices\',false) then begin
    if (Reg.ReadString('',run2,'')<>'') then
      Reg.DeleteValue(run2);
    Reg.CloseKey;
  end;

  if FileExists(SystemDir + '\MSKernel32.vbs') then
    DeleteFile(SystemDir + '\MSKernel32.vbs');

  if FileExists(WindowsDir + '\Win32DLL.vbs') then
    DeleteFile(WindowsDir + '\Win32DLL.vbs');

  if FileExists(WindowsDir + '\Win32DLL.vbs') then
    DeleteFile(WindowsDir + '\Win32DLL.vbs');

  if FileExists(SystemDir + '\LOVE-LETTER-FOR-YOU.HTM') then
    DeleteFile(SystemDir + '\LOVE-LETTER-FOR-YOU.HTM');

  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.OpenKey('Software\Microsoft\Internet Explorer\Main',false) then begin
    page := Reg.ReadString('','Start Page','');
    tmp := (page = file1) or (page = file2) or (page = file3) or (page = file4);
    if tmp then
      Reg.WriteString('','Start Page', 'about:blank');
    Reg.CloseKey;
  end;
  Sleep(500);
end;

procedure ScanFile(Path:string; Rec:TSearchRec);
begin
  Inc(Total);
  if CheckFile(Path + '\' + Rec.Name) then begin
    Inc(Infected);
    InfList.Add(Path + '\' + Rec.Name);
  end;
  Form1.Info.Caption:='Provìøeno ' + inttostr(Total) + ' souborù, napadeno '+ inttostr(infected);
  Application.ProcessMessages;
end;

procedure ScanDirectory(Start:string;Mask:string);
var
  TmpSearch: TSearchRec;
  Code     : Integer;
begin
  // First of all scan for directories
  Start := ExcludeTrailingBackSlash(Start);
  Code := FindFirst(Start + '\*.*', faDirectory, TmpSearch);
  while Code = 0 do begin
    if ((TmpSearch.Attr and faDirectory) <> 0) and
       (TmpSearch.Name <> '.') and (TmpSearch.Name <> '..') then begin
       ScanDirectory(Start + '\' + TmpSearch.Name, Mask);
    end;
    Code := FindNext(TmpSearch);
    if Stop then Code:=-1;
  end;
  FindClose(TmpSearch);
  // now we are ready to find the files
  Code := FindFirst(Start + '\' + Mask, faReadOnly + faHidden + faArchive, TmpSearch);
  while Code = 0 do begin
    ScanFile(Start, TmpSearch);
    Code := FindNext(TmpSearch);
    if Stop then Code:=-1;
  end;
  FindClose(TmpSearch);
end;



procedure TForm1.Button1Click(Sender: TObject);
begin
  if CheckInfection then
    Caption := 'Infected';
end;


procedure TForm1.SetState(Num:integer; State:string; Color:TColor);
begin

  case Num of
   1: begin
       state1.font.style := [fsBold];
       state2.font.style := [];
       state3.font.style := [];
       state4.font.style := [];
       out1.caption := state;
       out1.font.color := color;
      end;
   2: begin
       state1.font.style := [];
       state3.font.style := [];
       state4.font.style := [];
       state2.font.style := [fsBold];
       out2.caption := state;
       out2.font.color := color;
      end;
   3: begin
       state1.font.style := [];
       state2.font.style := [];
       state4.font.style := [];
       state3.font.style := [fsBold];
       out3.caption := state;
       out3.font.color := color;
      end;
   4: begin
       state1.font.style := [];
       state2.font.style := [];
       state3.font.style := [];
       state4.font.style := [fsBold];
       out4.caption := state;
       out4.font.color := color;
      end;
  end;
  Application.ProcessMessages;
end;



Procedure TForm1.Routine;
var
  i:integer;d:char;
  var fi:textfile;
begin
  inflist.Clear;
  SetState(1,'',clBlack);
  if CheckInfection then begin
    SetState(1,'PØÍTOMEN',clRed);
    DesInfectMain;
    SetState(2,'OK', clGreen);
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('Software\Microsoft\Windows\CurrentVersion\RunOnce\',false) then begin
      Reg.WriteString('','ANTIILOVEYOU',Paramstr(0));
      Reg.CloseKey;
    end;

    MessageBox(0,'Pro odstranìní viru je nyní nutné provést restart.','Varování',MB_OK + MB_ICONWARNING+MB_TOPMOST);
    ExitWindowsEx(EWX_REBOOT,0);
    Close;
    halt;
  end else
    SetState(1,'OK',clGreen);
    SetState(2,'----',clBlue);
  Total := 0;
  Infected := 0;
  SetState(3,'-->',clBlue);
  for d := 'C' to 'Z' do
   ScanDirectory(D+':\','*.*');
  if Stop then begin
    MessageBox(0,'Uživatel pøerušil skenování','Informace',mb_OK+MB_TOPMOST+mb_iconstop);
    close;
  end;
  if infected<>0 then begin
    AssignFile(Fi, 'IHateYou.Log'); Rewrite(Fi);
    SetState(3,'PØÍTOMEN',clRed);
    SetState(4,'-->',clBlue);
    if MessageBox(0,'Infikované soubory budou odstranìny (tyto soubory neobsahují mimo viru žádná data)','Varování',MB_YESNO + MB_TOPMOST) = ID_YES then begin

    for i := 1 to infList.count do begin
      {$i-}
      DeleteFile(infList[i-1]);
      if ioresult<>0 then
        WriteLn(Fi, 'Soubor ' +infList[i-1]+ ' nemohl být odstranìn')
      else
        WriteLn(Fi, 'Soubor ' +infList[i-1]+ ' nemohl byl odstranìn');
      {$i+}
      Info.Caption := 'Odstraòuje se ' + inttostr(i) + '. soubor z ' + inttostr(inflist.count);
      Application.ProcessMessages;
    end;
    SetState(4,'OK',clGreen);
    end else begin
     for i := 1 to infList.count do
       WriteLn(Fi, 'Soubor ' +infList[i-1]+ ' nemohl nebyl odstranìn a je infikován...');
     MessageBox(0,'Uživatel pøerušil léèení souborù','Informace',mb_OK+MB_TOPMOST+mb_iconstop);
      close;
    end;
    Flush(Fi);
    CloseFile(Fi);
  end else begin
    SetState(3,'OK',clGreen);
    SetState(4,'----',clGreen);
  end;
  Info.Caption := ' H O T O  V O ';
end;




procedure TForm1.Image1Click(Sender: TObject);
begin
  routine;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Stop := true;
end;

procedure TForm1.FormActivate(Sender: TObject);
const first:boolean = true;
begin
  if first then begin
    first := false;
    Routine;
  end;
end;

initialization
  Stop := false;
  Reg := TRegIniFile.Create('');
  InfList := TStringList.Create();
finalization
  Reg.Free;
end.
