unit view.menu.retratil;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  TViewMenuRetratil = class(TForm)
    pnlLeft: TPanel;
    pnlHeader: TPanel;
    pnlComunicacao: TPanel;
    pnlTitulo: TPanel;
    pnlMenu: TPanel;
    pnlTituloExpandir: TPanel;
    lblTituloMenu: TLabel;
    btnToggle: TSpeedButton;
    IconesMenuRetratil: TImageList;
    lblTituloEmpresa: TLabel;
    pnlUsuario: TPanel;
    imgUser: TImage;
    lblUsuario: TLabel;
    lblCargo: TLabel;
    btnEmail: TSpeedButton;
    btnMessage: TSpeedButton;
    IconesComu: TImageList;
    pnlBtnFechar: TPanel;
    btnFechar: TSpeedButton;
    pnlBtnIniciarVenda: TPanel;
    btnIniciarVenda: TSpeedButton;
    pnlCopyright: TPanel;
    lblCopyright: TLabel;
    pnlContent: TPanel;
    pnlBtnAdmin: TPanel;
    btnAdmin: TSpeedButton;
    pnlBtnGestFinan: TPanel;
    btnGestFinan: TSpeedButton;
    pnlBtnRelatorios: TPanel;
    btnRelatorios: TSpeedButton;
    pnlBtnSuporte: TPanel;
    btnSuporte: TSpeedButton;
    pnlBtnPersonalizacao: TPanel;
    btnPersonalizacao: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnToggleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure MakeRounded(Control: TWinControl);
  public
    { Public declarations }
  end;

var
  ViewMenuRetratil: TViewMenuRetratil;

implementation

{$R *.dfm}


procedure TViewMenuRetratil.btnFecharClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TViewMenuRetratil.btnToggleClick(Sender: TObject);
begin // menu
  if pnlMenu.Height = 40 then
  begin
    // expande o menu
    pnlMenu.Height := 400;
    // altera icone para retrair
    btnToggle.Tag := 1;
    btnToggle.ImageIndex := 1;
  end
  else
  begin
    // recolhe o menu
    pnlMenu.Height := 40;
    // altera icone para expandir
    btnToggle.Tag := 0;
    btnToggle.ImageIndex := 0;
  end;
end;

procedure TViewMenuRetratil.FormShow(Sender: TObject);
begin
  MakeRounded(pnlBtnIniciarVenda);
end;

procedure TViewMenuRetratil.MakeRounded(Control: TWinControl);
  var // bordas arredondadas
   R: TRect;
   Rgn: HRGN;
begin
    with Control do  begin
        R := ClientRect;
        rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 10, 10);
        Perform(EM_GETRECT, 0, lParam(@r)) ;
        InflateRect(r, - 4, - 4) ;
        Perform(EM_SETRECTNP, 0, lParam(@r)) ;
        SetWindowRgn(Handle, rgn, True) ;
        Invalidate;
    end;
end;

end.
