unit Redaktor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, jpeg, ExtCtrls, StdCtrls, Menus, OleCtrls,
  SHDocVw, frxpngimage;

type
  TRedaktorForm = class(TForm)
    DrawGrid1: TDrawGrid;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    RadioButton5: TRadioButton;
    Image5: TImage;
    Panel2: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Panel3: TPanel;
    Button2: TButton;
    WebBrowser1: TWebBrowser;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Image6: TImage;
    Image7: TImage;
    procedure SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Focus(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RedaktorForm: TRedaktorForm;
  kletki:array[0..9,0..9]of byte;
  h,w:byte;

implementation

{$R *.dfm}

procedure TRedaktorForm.SelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
  var i,j:byte;
begin
  if RadioButton1.Checked then kletki[acol,arow] := 1;
  if RadioButton2.Checked then kletki[acol,arow] := 2;
  if RadioButton3.Checked then kletki[acol,arow] := 3;
  if RadioButton4.Checked then kletki[acol,arow] := 4;
  if RadioButton5.Checked then
    begin for i:=0 to h-1 do
           for j:=0 to w-1 do
            if kletki[i,j]=5 then kletki[i,j]:=1;
    kletki[acol,arow] := 5; end;
  if RadioButton6.Checked then kletki[acol,arow] := 6;
  if RadioButton7.Checked then kletki[acol,arow] := 7;
 end;



procedure TRedaktorForm.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  case kletki[ACol,ARow] of
    1:DrawGrid1.Canvas.StretchDraw(Rect,Image1.Picture.Graphic);
    2:DrawGrid1.Canvas.StretchDraw(Rect,Image2.Picture.Graphic);
    3:DrawGrid1.Canvas.StretchDraw(Rect,Image3.Picture.Graphic);
    4:DrawGrid1.Canvas.StretchDraw(Rect,Image4.Picture.Graphic);
    5:DrawGrid1.Canvas.StretchDraw(Rect,Image5.Picture.Graphic);
    6:DrawGrid1.Canvas.StretchDraw(Rect,Image6.Picture.Graphic);
    7:DrawGrid1.Canvas.StretchDraw(Rect,Image7.Picture.Graphic);
  end;
end;


procedure TRedaktorForm.Focus(Sender: TObject);
begin
 DrawGrid1.SetFocus;
end;



procedure TRedaktorForm.N2Click(Sender: TObject);

begin
 Panel2.Show;
end;

procedure TRedaktorForm.Button1Click(Sender: TObject);
var i,j:byte;
    k1,k2:integer;
begin
 Val(Edit1.Text,h,k1);
 Val(Edit2.Text,w,k2);
 if (k1=0) and (k2=0) and (w>=1) and (w<=10) and (h>=1) and (h<=10) then begin
 Label3.Hide;
 DrawGrid1.Show;
 Panel1.Show;
 Edit1.Text:='';
 Edit2.Text:='';
 DrawGrid1.RowCount:=w;
 DrawGrid1.ColCount:=h;
 DrawGrid1.Height:=w*DrawGrid1.DefaultColWidth+w;
 DrawGrid1.Width:=h*DrawGrid1.DefaultRowHeight+h;
 for i:= 0 to h-1 do
  for j:=0 to w-1 do
   kletki[i,j]:=1;
 DrawGrid1.Refresh;
Panel2.Hide;
end else begin Label3.Show end;
end;

procedure TRedaktorForm.N4Click(Sender: TObject);
var f:textfile;
    i,j:byte;
    S:string;
begin
  if SaveDialog1.Execute then
    begin
      AssignFile(f,SaveDialog1.FileName);
      Rewrite(f);
      writeln(f,h);
      writeln(f,w);
      for i:=0 to h-1 do
        begin
          for j:=0 to w-1 do
            S := S+inttostr(kletki[i,j]);
          Writeln(f,S);
          S:='';
        end;
      closefile(f);
    end;
end;

procedure TRedaktorForm.N3Click(Sender: TObject);
var f:textfile;
    i,j:byte;
    s:string;
begin
try
  if OpenDialog1.Execute then
    begin
      AssignFile(f,OpenDialog1.FileName);
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

  closefile(f);end;
  DrawGrid1.Refresh;
  DrawGrid1.Show;
  Panel1.Show;
 DrawGrid1.RowCount:=w;
 DrawGrid1.ColCount:=h;
 DrawGrid1.Height:=w*DrawGrid1.DefaultColWidth+w;
 DrawGrid1.Width:=h*DrawGrid1.DefaultRowHeight+h;
Except end;
end;


procedure TRedaktorForm.N6Click(Sender: TObject);
begin
 Panel3.Show;
 WebBrowser1.Show;
 WebBrowser1.Navigate(ExtractFilePath(Application.ExeName) + 'Help\Spravka.htm');
end;

procedure TRedaktorForm.Button2Click(Sender: TObject);
begin
 Panel3.Hide;
end;

procedure TRedaktorForm.N5Click(Sender: TObject);
begin
 DrawGrid1.Hide;
 Panel1.Hide;
 close;
end;

procedure TRedaktorForm.FormActivate(Sender: TObject);
begin
OpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'karta';
SaveDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'karta';
end;

end.
