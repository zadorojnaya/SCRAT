unit Karta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, jpeg, frxpngimage, ExtCtrls;

type
  TKartaForm = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    SpeedButton11: TSpeedButton;
    OpenDialog1: TOpenDialog;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KartaForm: TKartaForm;

implementation

uses Igra;

{$R *.dfm}

procedure TKartaForm.SpeedButton1Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\1.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton2Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\2.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton3Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\3.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton4Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\4.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton5Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\5.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton6Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\6.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton7Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\7.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton8Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\8.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton9Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\9.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;




procedure TKartaForm.SpeedButton10Click(Sender: TObject);
begin
path:=ExtractFilePath(Application.ExeName) +'Karta\10.mfl';
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;
end;

procedure TKartaForm.SpeedButton11Click(Sender: TObject);
begin
if OpenDialog1.Execute then begin path:=OpenDialog1.FileName;
IgraForm.FormCreate(IgraForm,path);
IgraForm.Show;  end;
end;

procedure TKartaForm.FormActivate(Sender: TObject);
begin
Opendialog1.InitialDir:= ExtractFilePath(Application.ExeName)+'karta';
end;

end.
