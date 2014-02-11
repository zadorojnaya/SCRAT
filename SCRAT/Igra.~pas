unit Igra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Grids, jpeg, OleCtrls,
  SHDocVw, frxpngimage;

type
  TIgraForm = class(TForm)
    DrawGrid1: TDrawGrid;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    Memo1: TMemo;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    SpeedButton9: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SpeedButton10: TSpeedButton;
    Panel3: TPanel;
    SpeedButton11: TSpeedButton;
    Image6: TImage;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    Panel4: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    SpeedButton14: TSpeedButton;
    Image7: TImage;
    Image8: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    Panel5: TPanel;
    WebBrowser1: TWebBrowser;
    SpeedButton15: TSpeedButton;
    Edit1: TEdit;
    procedure Command(Sender: TObject; s:string);
    procedure Proverka(Sender: TObject; dx,dy:shortint;var oshibka:boolean);
    procedure N6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject;path:string);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
  procedure MySleep(Sec: Integer);

var
  IgraForm: TIgraForm;
  kletki:array[0..9,0..9]of byte;
  h,w,c,r,pobeda,flag1,flag2:byte;
  dx,dy:shortint;
  path:string;
  oshibka:boolean;
  z:string;
  timer,shag:integer;

implementation

uses Result;

{$R *.dfm}

procedure TIgraForm.Command(Sender: TObject; s:string);
begin
 if CheckBox3.Checked=True then Timer1.Enabled:=true;
 s:=AnsiUpperCase(s);
 dx:=0;
 dy:=0;
 if s='ббепу' then begin dy:=-1; Proverka(IgraForm,dx,dy,oshibka); end;
 if s='бмхг' then begin dy:=1; Proverka(IgraForm,dx,dy,oshibka); end;
 if s='бопюбн' then begin dx:=1; Proverka(IgraForm,dx,dy,oshibka); end;
 if s='бкебн' then begin dx:=-1; Proverka(IgraForm,dx,dy,oshibka); end;
end;

procedure TIgraForm.Proverka(Sender: TObject; dx,dy:shortint;var oshibka:boolean);
var flag3:byte;
    i,j:byte;
begin
if oshibka=false then begin
   flag1:=0;
   flag2:=0;
   flag3:=0;
   for i:=0 to h-1 do
     for j:=0 to w-1 do
      if (kletki[i,j]=5) and (i+dx>=0)and (i+dx<=h-1) and (j+dy>=0) and (j+dy<=w-1) and (kletki[i+dx,j+dy]<>2) and (kletki[i+dx,j+dy]<>4) and (kletki[i+dx,j+dy]<>3) and (kletki[i+dx,j+dy]<>6)then
       begin c:=i; r:=j; kletki[i,j]:=1; flag1:=1; shag:=shag+1;  end else
      if (kletki[i,j]=5) and (i+2*dx>=0)and (i+2*dx<=h-1) and (j+2*dy>=0) and (j+2*dy<=w-1) and (kletki[i+2*dx,j+2*dy]<>2) and ((kletki[i+dx,j+dy]=3) or (kletki[i+dx,j+dy]=6)) then
       begin c:=i; r:=j; kletki[i,j]:=1; flag1:=1; flag2:=1;shag:=shag+1;  end;
     if (flag1=1) and (flag2=1) then begin kletki[c+dx,r+dy] := 5; kletki[c+2*dx,r+2*dy] := 3; DrawGrid1.Refresh; end else
     if flag1=1 then begin kletki[c+dx,r+dy] := 5; DrawGrid1.Refresh; end else begin ResultForm.Label1.Caption:='ньхайю!!!';oshibka:=true;ResultForm.ShowModal; end;
   if pobeda=0 then
   for i:=0 to h-1 do
     for j:=0 to w-1 do
      if kletki[i,j]=4 then flag3:=1;
   if (flag3=0) and (pobeda=0) then begin pobeda:=1;ResultForm.Label1.Caption:='онаедю!!!';ResultForm.ShowModal;  end;
end;
if CheckBox2.Checked=True then Label2.Caption:=IntToStr(shag);
end;

procedure TIgraForm.N6Click(Sender: TObject);
begin
DrawGrid1.Hide;
Panel1.Hide;
Close;
end;

procedure TIgraForm.FormCreate(Sender: TObject;path:string);
var f:textfile;
    s:string;
    i,j:byte;
begin
 timer:=0;
 shag:=0;
 DrawGrid1.Show;
 Panel1.Show;
try
      AssignFile(f, path);
      Reset(f);
      readln(f,h);
      readln(f,w);
      for i:=0 to h-1 do
        begin
          Readln(f,s);
          for j:=0 to w-1 do
            begin
              kletki[i,j] := StrToInt(copy(s,1,1));
              delete(s,1,1);
            end;
        end;
  closefile(f);
  DrawGrid1.Refresh;
  DrawGrid1.RowCount:=w;
  DrawGrid1.ColCount:=h;
  DrawGrid1.Height:=w*DrawGrid1.DefaultColWidth+w;
  DrawGrid1.Width:=h*DrawGrid1.DefaultRowHeight+h;
Except end;
end;

procedure TIgraForm.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
case kletki[ACol,ARow] of
    1:DrawGrid1.Canvas.StretchDraw(Rect,Image1.Picture.Graphic);
    2:DrawGrid1.Canvas.StretchDraw(Rect,Image2.Picture.Graphic);
    3:DrawGrid1.Canvas.StretchDraw(Rect,Image3.Picture.Graphic);
    4:DrawGrid1.Canvas.StretchDraw(Rect,Image4.Picture.Graphic);
    5:DrawGrid1.Canvas.StretchDraw(Rect,Image5.Picture.Graphic);
    6:DrawGrid1.Canvas.StretchDraw(Rect,Image6.Picture.Graphic);
    7:DrawGrid1.Canvas.StretchDraw(Rect,Image6.Picture.Graphic);
  end;
end;

procedure TIgraForm.SpeedButton1Click(Sender: TObject);
begin
if Panel2.Visible=False then Command(IgraForm,SpeedButton1.Caption)
else
 begin Memo1.Lines.Append(SpeedButton1.Caption);
       Memo1.SetFocus;
 end;
end;

procedure TIgraForm.N2Click(Sender: TObject);
begin
Panel1.Show;
Panel2.Hide;
end;

procedure TIgraForm.N3Click(Sender: TObject);
begin
Panel2.Show;
Panel1.Hide;
end;

procedure TIgraForm.SpeedButton2Click(Sender: TObject);
begin
if Panel2.Visible=False then Command(IgraForm,SpeedButton2.Caption)
else
 begin Memo1.Lines.Append(SpeedButton2.Caption);
       Memo1.SetFocus;
 end;
end;

procedure TIgraForm.SpeedButton3Click(Sender: TObject);
begin
if Panel2.Visible=False then Command(IgraForm,SpeedButton3.Caption)
else
 begin Memo1.Lines.Append(SpeedButton3.Caption);
       Memo1.SetFocus;
 end;
end;

procedure TIgraForm.SpeedButton4Click(Sender: TObject);
begin
if Panel2.Visible=False then Command(IgraForm,SpeedButton4.Caption)
else
 begin Memo1.Lines.Append(SpeedButton4.Caption);
       Memo1.SetFocus;
 end;
end;

procedure TIgraForm.N1Click(Sender: TObject);
begin
Panel2.Show;
Panel3.Show;
Memo1.Clear;
end;

procedure TIgraForm.SpeedButton9Click(Sender: TObject);
begin
Panel2.Hide;
Panel3.Hide;
end;

procedure TIgraForm.SpeedButton5Click(Sender: TObject);
begin
Memo1.Clear;
end;

procedure TIgraForm.SpeedButton6Click(Sender: TObject);
begin
if OpenDialog1.Execute then
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TIgraForm.SpeedButton7Click(Sender: TObject);
begin
if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TIgraForm.SpeedButton8Click(Sender: TObject);
const mnoz:array [1..9] of string = ('ббепу','бмхг','бопюбн','бкебн','онбрнпх','еякх','нпеу','рн','хмюве');
var st,dl,dl1,n,flag,flagos:byte;cursY,x,x1,o:word; slovo:string;
   
begin
edit1.Text:=' ';
o:=0;
for x:=0 to Memo1.Lines.Count-1 do begin
 z:=Memo1.Lines.Strings[x]+' ';
 z:=AnsiUpperCase(z);
 dl1:=0;n:=1;
 while n<=length(z)-dl1 do
 if (z[n]=' ') and (z[n+1]=' ') then begin delete(z,n,1);inc(dl1);end else inc(n);
  n:=1; flagos:=0;
  while n<=length(z) do begin dl1:=0;
     while z[n]<>' ' do begin inc(n);inc(dl1);end;
     slovo:=copy(z,n-dl1,dl1);
     inc(n);
     for x1:=1 to 9 do
      if slovo=mnoz[x1] then flagos:=1;
     if flagos=0 then begin Edit1.Text:='ньхайю Б ЯРПНЙЕ '+ IntToStr(x+1);cursY:=x;inc(o);end;
  end;
end;


if o=0 then begin
for x:=0 to Memo1.Lines.Count-1 do begin
 z:=Memo1.Lines.Strings[x]+' ';
 z:=AnsiUpperCase(z);
 dl1:=0;n:=1;
 while n<=length(z)-dl1 do
 if (z[n]=' ') and (z[n+1]=' ') then begin delete(z,n,1);inc(dl1);end else inc(n);
 st:=1;
 flag:=0;
while st<=length(z) do begin
 dl:=0;
 if copy(z,st,5)='ббепу' then begin Command(IgraForm, 'ббепу'); st:=st+6; MySleep(700);end else
 if copy(z,st,4)='бмхг' then begin Command(IgraForm, 'бмхг'); st:=st+5; MySleep(700);end else
 if copy(z,st,6)='бопюбн' then begin Command(IgraForm, 'бопюбн'); st:=st+7; MySleep(700);end else
 if copy(z,st,5)='бкебн' then begin Command(IgraForm, 'бкебн'); st:=st+6; MySleep(700);end else
 if copy(z,st,7)='онбрнпх' then begin
    st:=st+8;
    while z[st]<>' ' do begin inc(st);inc(dl);end;
    if copy(z,st+1,5)='ббепу' then  begin for n:=1 to StrToInt(copy(z,st-dl,dl)) do begin Command(IgraForm, 'ббепу'); MySleep(700);end;st:=st+7;end;
    if copy(z,st+1,4)='бмхг' then begin for n:=1 to StrToInt(copy(z,st-dl,dl)) do begin Command(IgraForm, 'бмхг'); MySleep(700);end;st:=st+6;end;
    if copy(z,st+1,6)='бопюбн' then begin for n:=1 to StrToInt(copy(z,st-dl,dl)) do begin Command(IgraForm, 'бопюбн'); MySleep(700);end;st:=st+8;end;
    if copy(z,st+1,5)='бкебн' then begin for n:=1 to StrToInt(copy(z,st-dl,dl)) do begin Command(IgraForm, 'бкебн'); MySleep(700);end;st:=st+7;end; end else
 if (copy(z,st,12)='еякх нпеу рн') and (flag2=1) then begin flag:=1;st:=st+13; end else
 if (copy(z,st,12)='еякх нпеу рн') and (flag2=0) then while copy(z,st,5)<>'хмюве' do inc(st) else
 if (copy(z,st,5)='хмюве') and (flag=1) then st:=length(z)+1 else st:=st+6;
 end;
 end;
 end else Memo1.SelStart := Memo1.Perform(EM_LINEINDEX, cursY, 0) + 0;
end;

procedure MySleep(Sec: Integer);
begin
Sleep(Sec);
Application.ProcessMessages;
end;

procedure TIgraForm.SpeedButton10Click(Sender: TObject);
begin
 timer:=0;label1.Caption:='0';
 shag:=0; label2.Caption:='0';
 Timer1.Enabled:=false;
 IgraForm.FormCreate(IgraForm,path);
 pobeda:=0;
 oshibka:=false;
end;

procedure TIgraForm.SpeedButton11Click(Sender: TObject);
begin
 Memo1.Lines.Append(SpeedButton11.Caption + ' ');
 Memo1.SetFocus;
 {Memo1.SelStart := Memo1.Perform(EM_LINEINDEX, 0, 0) + 8; }
end;

procedure TIgraForm.SpeedButton12Click(Sender: TObject);
begin
 Memo1.Lines.Append(SpeedButton12.Caption);
 Memo1.SetFocus;
end;

procedure TIgraForm.SpeedButton13Click(Sender: TObject);
begin
 Memo1.Lines.Append(SpeedButton13.Caption);
 Memo1.SetFocus;
end;





procedure TIgraForm.N4Click(Sender: TObject);
begin
Panel4.Show;
end;

procedure TIgraForm.SpeedButton14Click(Sender: TObject);
begin
Panel4.Hide;
if CheckBox3.Checked=True Then begin Image7.Show;Label1.Show;end else begin Image7.Hide;Label1.Hide;end;
if CheckBox2.Checked=True Then begin Image8.Show;Label2.Show;end else begin Image8.Hide;Label2.Hide;end;
end;

procedure TIgraForm.Timer1Timer(Sender: TObject);
begin
Label1.Caption:=intToStr(timer);
timer:=timer+1;
end;

procedure TIgraForm.N5Click(Sender: TObject);
begin
Panel5.Show;
WebBrowser1.Show;
WebBrowser1.Navigate(ExtractFilePath(Application.ExeName) + 'Help\Spravka1.htm');
end;

procedure TIgraForm.SpeedButton15Click(Sender: TObject);
begin
Panel5.Hide;
end;

procedure TIgraForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
label1.Caption:='0';
Label2.Caption:='0';
end;

procedure TIgraForm.FormActivate(Sender: TObject);
begin
OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'Program';
SaveDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'Program';
end;

end.
