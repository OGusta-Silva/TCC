unit UsuarioForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxContainer, cxEdit, Vcl.Menus, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxCheckBox, dxLayoutControl, cxMaskEdit, cxDropDownEdit;

type
  TUsuarioFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    teUsuario: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    btBuscar: TcxButton;
    dxLayoutItem3: TdxLayoutItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem4: TdxLayoutItem;
    dsUsuario: TDataSource;
    qUsuario: TFDQuery;
    cbAtivo: TcxComboBox;
    dxLayoutItem1: TdxLayoutItem;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    btNovo: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    btAlterar: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btExcluir: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    procedure btBuscarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  UsuarioFrm: TUsuarioFrm;

implementation

uses
  DataModuloMySql, CadastroUsuarioForm;

{$R *.dfm}

procedure TUsuarioFrm.btAlterarClick(Sender: TObject);
begin
  if qUsuario.IsEmpty then
    ShowMessage('Não existe nenhum registro para alterar')
  else
  begin
    TCadastroUsuarioFrm.Execute(qUsuario.FieldByName('ID_USUARIO').Value);
    btBuscar.Click;
  end;
end;

procedure TUsuarioFrm.btBuscarClick(Sender: TObject);
begin
  qUsuario.SQL.Clear;
  qUsuario.SQL.Add('select * from USUARIO where 1=1');
  if not Trim(teUsuario.Text).IsEmpty then
    qUsuario.SQL.Add('and LOGIN like ' + QuotedStr('%' + Trim(teUsuario.Text) + '%'));
  if ((cbAtivo.ItemIndex < 2) and (cbAtivo.ItemIndex >= 0)) then
    qUsuario.SQL.Add('and ATIVO = ' + cbAtivo.ItemIndex.ToString);

  qUsuario.Open;
end;

procedure TUsuarioFrm.btExcluirClick(Sender: TObject);
begin
  if qUsuario.IsEmpty then
    ShowMessage('Não existe nenhum registro para excluir')
  else
  begin
    TCadastroUsuarioFrm.Execute(qUsuario.FieldByName('ID_USUARIO').Value, True);
    btBuscar.Click;
  end;
end;

procedure TUsuarioFrm.btNovoClick(Sender: TObject);
begin
  TCadastroUsuarioFrm.Execute(Null);
  btBuscar.Click;
end;

end.
