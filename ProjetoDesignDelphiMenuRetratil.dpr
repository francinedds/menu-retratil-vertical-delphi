program ProjetoDesignDelphiMenuRetratil;

uses
  Vcl.Forms,
  view.menu.retratil in 'views\view.menu.retratil.pas' {ViewMenuRetratil};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewMenuRetratil, ViewMenuRetratil);
  Application.Run;
end.
