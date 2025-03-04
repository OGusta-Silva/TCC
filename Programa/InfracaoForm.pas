unit InfracaoForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxLayoutcxEditAdapters,
  dxLayoutControlAdapters, dxLayoutContainer, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, dxScrollbarAnnotations, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxTextEdit, dxLayoutControl, cxCurrencyEdit, cxGridChartView, cxGridDBChartView, frxClass, frxDBSet;

type
  TInfracaoFrm = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    teNomeMotorista: TcxTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    tePlacaVeiculo: TcxTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    deData: TcxDateEdit;
    dxLayoutItem3: TdxLayoutItem;
    teNumeroRastreador: TcxTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    dxLayoutGroup1: TdxLayoutGroup;
    btBuscar: TcxButton;
    dxLayoutItem5: TdxLayoutItem;
    btNovo: TcxButton;
    dxLayoutItem6: TdxLayoutItem;
    btAlterar: TcxButton;
    dxLayoutItem7: TdxLayoutItem;
    btExcluir: TcxButton;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutGroup2: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem9: TdxLayoutItem;
    dsInfracao: TDataSource;
    qInfracao: TFDQuery;
    cxGrid1DBTableView1ID_INFRACAO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME_MOTORISTA: TcxGridDBColumn;
    cxGrid1DBTableView1PLACA_VEICULO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO_RASTREADOR: TcxGridDBColumn;
    cxGrid1DBTableView1DATA: TcxGridDBColumn;
    cxGrid1DBTableView1VELOCIDADE: TcxGridDBColumn;
    cxGrid1DBTableView1LIMITE_VELOCIDADE: TcxGridDBColumn;
    qInfracaoID_INFRACAO: TFDAutoIncField;
    qInfracaoNOME_MOTORISTA: TStringField;
    qInfracaoPLACA_VEICULO: TStringField;
    qInfracaoNUMERO_RASTREADOR: TStringField;
    qInfracaoDATA: TDateField;
    qInfracaoVELOCIDADE: TFloatField;
    qInfracaoLIMITE_VELOCIDADE: TFloatField;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    btImprimir: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    procedure btBuscarClick(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InfracaoFrm: TInfracaoFrm;

implementation

uses
  DataModuloMySql, CadastroInfracaoForm;

{$R *.dfm}

procedure TInfracaoFrm.btAlterarClick(Sender: TObject);
begin
  if qInfracao.IsEmpty then
    ShowMessage('Não existe nenhum registro para alterar')
  else
  begin
    TCadastroInfracaoFrm.Execute(qInfracaoID_INFRACAO.AsVariant);
    btBuscar.Click;
  end;
end;

procedure TInfracaoFrm.btBuscarClick(Sender: TObject);
begin
  qInfracao.Close;
  qInfracao.SQL.Clear;
  qInfracao.SQL.Add('select * from INFRACAO where 1=1');

  if not Trim(teNomeMotorista.Text).IsEmpty then
    qInfracao.SQL.Add('and NOME_MOTORISTA like ' + QuotedStr('%' + Trim(teNomeMotorista.Text) + '%'));
  if not Trim(tePlacaVeiculo.Text).IsEmpty then
    qInfracao.SQL.Add('and PLACA_VEICULO like ' + QuotedStr('%' + Trim(tePlacaVeiculo.Text) + '%'));
  if not Trim(teNumeroRastreador.Text).IsEmpty then
    qInfracao.SQL.Add('and NUMERO_RASTREADOR like ' + QuotedStr('%' + Trim(teNumeroRastreador.Text) + '%'));
  if not Trim(deData.Text).IsEmpty then
  begin
    qInfracao.SQL.Add('and DATA = :DATA');
    qInfracao.ParamByName('DATA').DataType := ftDate;
    qInfracao.ParamByName('DATA').ParamType := ptInput;
    qInfracao.ParamByName('DATA').AsDate := deData.Date;
  end;

  qInfracao.Open;
end;

procedure TInfracaoFrm.btExcluirClick(Sender: TObject);
begin
  if qInfracao.IsEmpty then
    ShowMessage('Não existe nenhum registro para excluir')
  else
  begin
    TCadastroInfracaoFrm.Execute(qInfracaoID_INFRACAO.AsVariant, True);
    btBuscar.Click;
  end;
end;

procedure TInfracaoFrm.btImprimirClick(Sender: TObject);
begin
  qInfracao.AddIndex('IMPRIMIR', 'NOME_MOTORISTA', '', []);
  qInfracao.IndexName := 'IMPRIMIR';
  frxReport1.ShowReport;
  qInfracao.DeleteIndexes;
end;

procedure TInfracaoFrm.btNovoClick(Sender: TObject);
begin
  TCadastroInfracaoFrm.Execute(Null);
  btBuscar.Click;
end;

end.
