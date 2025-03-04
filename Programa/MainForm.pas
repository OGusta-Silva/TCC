unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, dxLayoutContainer, cxImage, cxClasses, dxLayoutControl, Vcl.Menus, dxGDIPlusClasses, Vcl.ExtCtrls;

type
  TMainFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    MainMenu1: TMainMenu;
    U1: TMenuItem;
    I1: TMenuItem;
    S1: TMenuItem;
    Timer1: TTimer;
    procedure U1Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainFrm: TMainFrm;

implementation

uses
  UsuarioForm, InfracaoForm, AboutForm, LoginForm;

{$R *.dfm}

procedure TMainFrm.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TMainFrm.I1Click(Sender: TObject);
var
  Frm: TInfracaoFrm;
begin
  frm := TInfracaoFrm.Create(Self);
  try
    frm.ShowModal;
  finally
    Frm.Free;
  end;
end;

procedure TMainFrm.S1Click(Sender: TObject);
var
  Frm: TAboutFrm;
begin
  frm := TAboutFrm.Create(Self);
  try
    frm.ShowModal;
  finally
    Frm.Free;
  end;
end;

procedure TMainFrm.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if not TLoginFrm.Login then
    Halt(0);
end;

procedure TMainFrm.U1Click(Sender: TObject);
var
  Frm: TUsuarioFrm;
begin
  frm := TUsuarioFrm.Create(Self);
  try
    frm.ShowModal;
  finally
    Frm.Free;
  end;
end;

end.
