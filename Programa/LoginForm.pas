unit LoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters,
  cxContainer, cxEdit, dxGDIPlusClasses, cxImage, dxLayoutContainer, cxTextEdit, cxClasses, dxLayoutControl,
  dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TLoginFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    teUsuario: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    teSenha: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cxImage1: TcxImage;
    dxLayoutItem3: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    cxButton1: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    cxButton2: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    class function Login: Boolean;
  end;

var
  LoginFrm: TLoginFrm;

implementation

uses
  DataModuloMySql;

{$R *.dfm}

{ TLoginFrm }

procedure TLoginFrm.cxButton1Click(Sender: TObject);
begin
  if Trim(teUsuario.Text).IsEmpty then
    ShowMessage('Favor informar o usuário')
  else if Trim(teSenha.Text).IsEmpty then
    ShowMessage('Favor informar a senha')
  else
  begin
    with dmMySql do
    begin
      qLogin.Close;
      qLogin.ParamByName('LOGIN').AsString := teUsuario.Text;
      qLogin.ParamByName('SENHA').AsString := teSenha.Text;
      qLogin.Open;

      if qLogin.IsEmpty then
        ShowMessage('Usuário ou senha inválido')
      else if qLogin.FieldByName('ATIVO').AsInteger = 0 then
        ShowMessage('Usuário não está ativo')
      else
        ModalResult := mrOk;

      qLogin.Close;
    end;
  end;
end;

procedure TLoginFrm.cxButton2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

class function TLoginFrm.Login: Boolean;
var
  frm: TLoginFrm;
begin
  frm := TLoginFrm.Create(Application);
  try
    Result := frm.ShowModal = mrOk;
  finally
    frm.Free;
  end;
end;

end.
