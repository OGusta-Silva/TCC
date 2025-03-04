object InfracaoFrm: TInfracaoFrm
  Left = 0
  Top = 0
  Caption = 'Infra'#231#227'o'
  ClientHeight = 897
  ClientWidth = 1297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1297
    Height = 897
    Align = alClient
    TabOrder = 0
    object teNomeMotorista: TcxTextEdit
      Left = 22
      Top = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 121
    end
    object tePlacaVeiculo: TcxTextEdit
      Left = 149
      Top = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 121
    end
    object deData: TcxDateEdit
      Left = 276
      Top = 46
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 2
      Width = 121
    end
    object teNumeroRastreador: TcxTextEdit
      Left = 403
      Top = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 121
    end
    object btBuscar: TcxButton
      Left = 10
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 4
      OnClick = btBuscarClick
    end
    object btNovo: TcxButton
      Left = 91
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 5
      OnClick = btNovoClick
    end
    object btAlterar: TcxButton
      Left = 172
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 6
      OnClick = btAlterarClick
    end
    object btExcluir: TcxButton
      Left = 253
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 7
      OnClick = btExcluirClick
    end
    object cxGrid1: TcxGrid
      Left = 10
      Top = 116
      Width = 1277
      Height = 771
      TabOrder = 9
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsInfracao
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1ID_INFRACAO: TcxGridDBColumn
          Caption = 'ID'
          DataBinding.FieldName = 'ID_INFRACAO'
        end
        object cxGrid1DBTableView1NOME_MOTORISTA: TcxGridDBColumn
          Caption = 'Nome Motorista'
          DataBinding.FieldName = 'NOME_MOTORISTA'
          Width = 241
        end
        object cxGrid1DBTableView1PLACA_VEICULO: TcxGridDBColumn
          Caption = 'Placa Ve'#237'culo'
          DataBinding.FieldName = 'PLACA_VEICULO'
          Width = 113
        end
        object cxGrid1DBTableView1NUMERO_RASTREADOR: TcxGridDBColumn
          Caption = 'N'#250'mero Rastreador'
          DataBinding.FieldName = 'NUMERO_RASTREADOR'
          Width = 148
        end
        object cxGrid1DBTableView1DATA: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'DATA'
          PropertiesClassName = 'TcxDateEditProperties'
          Properties.SaveTime = False
          Properties.ShowTime = False
          Width = 70
        end
        object cxGrid1DBTableView1VELOCIDADE: TcxGridDBColumn
          Caption = 'Velocidade'
          DataBinding.FieldName = 'VELOCIDADE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ' ,0.##;- ,0.##'
          Width = 69
        end
        object cxGrid1DBTableView1LIMITE_VELOCIDADE: TcxGridDBColumn
          Caption = 'Limite Velocidade'
          DataBinding.FieldName = 'LIMITE_VELOCIDADE'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          Properties.DisplayFormat = ' ,0.##;- ,0.##'
          Width = 99
        end
      end
      object cxGrid1Level1: TcxGridLevel
        Caption = 'Dados'
        GridView = cxGrid1DBTableView1
      end
    end
    object btImprimir: TcxButton
      Left = 334
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 8
      OnClick = btImprimirClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Nome Motorista'
      CaptionOptions.Layout = clTop
      Control = teNomeMotorista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Placa Ve'#237'culo'
      CaptionOptions.Layout = clTop
      Control = tePlacaVeiculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Data'
      CaptionOptions.Layout = clTop
      Control = deData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'N'#250'mero Rastreador'
      CaptionOptions.Layout = clTop
      Control = teNumeroRastreador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Filtro'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btBuscar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btNovo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      Control = btAlterar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton4'
      CaptionOptions.Visible = False
      Control = btExcluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btImprimir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object dsInfracao: TDataSource
    AutoEdit = False
    DataSet = qInfracao
    Left = 576
    Top = 44
  end
  object qInfracao: TFDQuery
    Active = True
    Connection = dmMySql.FDConnection1
    SQL.Strings = (
      'select * from INFRACAO order by NOME_MOTORISTA')
    Left = 640
    Top = 44
    object qInfracaoID_INFRACAO: TFDAutoIncField
      FieldName = 'ID_INFRACAO'
      Origin = 'ID_INFRACAO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qInfracaoNOME_MOTORISTA: TStringField
      FieldName = 'NOME_MOTORISTA'
      Origin = 'NOME_MOTORISTA'
      Required = True
      Size = 255
    end
    object qInfracaoPLACA_VEICULO: TStringField
      FieldName = 'PLACA_VEICULO'
      Origin = 'PLACA_VEICULO'
      Required = True
      Size = 10
    end
    object qInfracaoNUMERO_RASTREADOR: TStringField
      FieldName = 'NUMERO_RASTREADOR'
      Origin = 'NUMERO_RASTREADOR'
      Required = True
      Size = 40
    end
    object qInfracaoDATA: TDateField
      FieldName = 'DATA'
      Origin = '`DATA`'
      Required = True
    end
    object qInfracaoVELOCIDADE: TFloatField
      FieldName = 'VELOCIDADE'
      Origin = 'VELOCIDADE'
      Required = True
    end
    object qInfracaoLIMITE_VELOCIDADE: TFloatField
      FieldName = 'LIMITE_VELOCIDADE'
      Origin = 'LIMITE_VELOCIDADE'
      Required = True
    end
  end
  object frxReport1: TfrxReport
    Version = '2022.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45720.769924803200000000
    ReportOptions.LastChange = 45720.775025092600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 900
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBDataset1."NOME_MOTORISTA"'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Motorista: [frxDBDataset1."NOME_MOTORISTA"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Placa Ve'#237'culo: [frxDBDataset1."PLACA_VEICULO"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Numero Rastreador: [frxDBDataset1."NUMERO_RASTREADOR"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data: [frxDBDataset1."DATA"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 83.149660000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Valocidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 83.149660000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Limite Velocidade')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Qtd Infra'#231#245'es: [COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 143.622140000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1VELOCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VELOCIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."VELOCIDADE"]')
          ParentFont = False
        end
        object frxDBDataset1LIMITE_VELOCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'LIMITE_VELOCIDADE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."LIMITE_VELOCIDADE"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_INFRACAO=ID_INFRACAO'
      'NOME_MOTORISTA=NOME_MOTORISTA'
      'PLACA_VEICULO=PLACA_VEICULO'
      'NUMERO_RASTREADOR=NUMERO_RASTREADOR'
      'DATA=DATA'
      'VELOCIDADE=VELOCIDADE'
      'LIMITE_VELOCIDADE=LIMITE_VELOCIDADE')
    DataSource = dsInfracao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1000
    Top = 60
  end
end
