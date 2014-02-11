program Project1;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  Redaktor in 'Redaktor.pas' {RedaktorForm},
  Karta in 'Karta.pas' {KartaForm},
  Igra in 'Igra.pas' {IgraForm},
  Result in 'Result.pas' {ResultForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TRedaktorForm, RedaktorForm);
  Application.CreateForm(TKartaForm, KartaForm);
  Application.CreateForm(TIgraForm, IgraForm);
  Application.CreateForm(TResultForm, ResultForm);
  Application.Run;
end.
