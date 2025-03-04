unit CadastroUsuarioForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters, cxContainer, cxEdit,
  cxCheckBox, cxDBEdit, dxLayoutContainer, cxTextEdit, cxClasses, dxLayoutControl, dxLayoutControlAdapters, Vcl.Menus,
  Vcl.StdCtrls, cxButtons;

type
  TCadastroUsuarioFrm = class(TForm)
    qUsuario: TFDQuery;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    teUsuario: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    teSenha: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    cbAtivo: TcxDBCheckBox;
    dxLayoutItem3: TdxLayoutItem;
    dsUsuario: TDataSource;
    btCancelar: TcxButton;
    dxLayoutItem4: TdxLayoutItem;
    btSalvar: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure qUsuarioNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Load(const AID: Variant);
    procedure Deletar;
    class procedure Execute(const AID: Variant; const ADeletar: Boolean = False);
  end;

var
  CadastroUsuarioFrm: TCadastroUsuarioFrm;

implementation

uses
  DataModuloMySql;

{$R *.dfm}

{ TCadastroUsuarioFrm }

procedure TCadastroUsuarioFrm.btCancelarClick(Sender: TObject);
begin
  qUsuario.Close;
  ModalResult := mrCancel;
end;

procedure TCadastroUsuarioFrm.btSalvarClick(Sender: TObject);
begin
  qUsuario.Post;
  ModalResult := mrOk;
end;

procedure TCadastroUsuarioFrm.Deletar;
begin
  qUsuario.Delete;
end;

class procedure TCadastroUsuarioFrm.Execute(const AID: Variant; const ADeletar: Boolean);
var
  frm: TCadastroUsuarioFrm;
begin
  frm := TCadastroUsuarioFrm.Create(Application);
  try
    frm.Load(AID);
    if ADeletar then
      frm.Deletar
    else
      frm.ShowModal;
  finally
    frm.Free;
  end;
end;

procedure TCadastroUsuarioFrm.Load(const AID: Variant);
begin
  qUsuario.ParamByName('ID_USUARIO').Value := AID;
  qUsuario.Open;

  if VarIsNull(AID) then
    qUsuario.Insert;
end;

procedure TCadastroUsuarioFrm.qUsuarioNewRecord(DataSet: TDataSet);
begin
  qUsuario.FieldByName('ATIVO').AsInteger := 1;
end;

end.
