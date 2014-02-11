unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, jpeg, frxpngimage;

type
  TMainForm = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel1: TPanel;
    SpeedButton5: TSpeedButton;
    Image1: TImage;
    Memo1: TMemo;
    Image2: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses Redaktor, Karta;



{$R *.dfm}

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
RedaktorForm.Show;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
Close;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
KartaForm.Show;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
Panel1.Show;
end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
Panel1.Hide;
end;

end.
