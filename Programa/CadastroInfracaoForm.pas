unit CadastroInfracaoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  dxLayoutContainer, dxLayoutControl, dxLayoutcxEditAdapters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxDBEdit,
  cxCurrencyEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxTextEdit, dxLayoutControlAdapters, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TCadastroInfracaoFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    teNomeMotorista: TcxDBTextEdit;
    dxLayoutItem7: TdxLayoutItem;
    tePlacaVeiculo: TcxDBTextEdit;
    dxLayoutItem8: TdxLayoutItem;
    teNumeroRastreador: TcxDBTextEdit;
    dxLayoutItem9: TdxLayoutItem;
    deData: TcxDBDateEdit;
    dxLayoutItem10: TdxLayoutItem;
    ceVelocidade: TcxDBCurrencyEdit;
    dxLayoutItem11: TdxLayoutItem;
    ceLimiteVelocidade: TcxDBCurrencyEdit;
    dxLayoutItem12: TdxLayoutItem;
    btSalvar: TcxButton;
    dxLayoutItem1: TdxLayoutItem;
    btCancelar: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    dxLayoutGroup3: TdxLayoutGroup;
    qInfracao: TFDQuery;
    dsInfracao: TDataSource;
    qInfracaoID_INFRACAO: TFDAutoIncField;
    qInfracaoNOME_MOTORISTA: TStringField;
    qInfracaoPLACA_VEICULO: TStringField;
    qInfracaoNUMERO_RASTREADOR: TStringField;
    qInfracaoDATA: TDateField;
    qInfracaoVELOCIDADE: TFloatField;
    qInfracaoLIMITE_VELOCIDADE: TFloatField;
    procedure btSalvarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure qInfracaoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    procedure Load(const AID: Variant);
    procedure Deletar;
    class procedure Execute(const AID: Variant; const ADeletar: Boolean = False);
  end;

var
  CadastroInfracaoFrm: TCadastroInfracaoFrm;

implementation

uses
  DataModuloMySql;

{$R *.dfm}
{ TCadastroInfracaoFrm }

procedure TCadastroInfracaoFrm.btCancelarClick(Sender: TObject);
begin
  qInfracao.Close;
  ModalResult := mrCancel;
end;

procedure TCadastroInfracaoFrm.btSalvarClick(Sender: TObject);
begin
  qInfracao.Post;
  ModalResult := mrOk;
end;

procedure TCadastroInfracaoFrm.Deletar;
begin
  qInfracao.Delete;
end;

class procedure TCadastroInfracaoFrm.Execute(const AID: Variant; const ADeletar: Boolean);
var
  frm: TCadastroInfracaoFrm;
begin
  frm := TCadastroInfracaoFrm.Create(Application);
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

procedure TCadastroInfracaoFrm.Load(const AID: Variant);
begin
  qInfracao.ParamByName('ID_INFRACAO').Value := AID;
  qInfracao.Open;

  if VarIsNull(AID) then
    qInfracao.Insert;
end;

procedure TCadastroInfracaoFrm.qInfracaoNewRecord(DataSet: TDataSet);
begin
  qInfracaoVELOCIDADE.AsCurrency := 0;
  qInfracaoLIMITE_VELOCIDADE.AsInteger := 0;
end;

end.
