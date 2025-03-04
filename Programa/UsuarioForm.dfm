object UsuarioFrm: TUsuarioFrm
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rio'
  ClientHeight = 529
  ClientWidth = 940
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
    Width = 940
    Height = 529
    Align = alClient
    TabOrder = 0
    object teUsuario: TcxTextEdit
      Left = 22
      Top = 46
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 227
    end
    object btBuscar: TcxButton
      Left = 10
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = btBuscarClick
    end
    object cxGrid1: TcxGrid
      Left = 10
      Top = 116
      Width = 920
      Height = 403
      TabOrder = 6
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = dsUsuario
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1Column1: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'LOGIN'
          DataBinding.IsNullValueType = True
          Width = 169
        end
        object cxGrid1DBTableView1Column2: TcxGridDBColumn
          Caption = 'Ativo'
          DataBinding.FieldName = 'ATIVO'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Width = 43
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cbAtivo: TcxComboBox
      Left = 255
      Top = 46
      Properties.Items.Strings = (
        'Inativo'
        'Ativo'
        'Todos')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 1
      Text = 'Todos'
      Width = 121
    end
    object btNovo: TcxButton
      Left = 91
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
      OnClick = btNovoClick
    end
    object btAlterar: TcxButton
      Left = 172
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 4
      OnClick = btAlterarClick
    end
    object btExcluir: TcxButton
      Left = 253
      Top = 85
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 5
      OnClick = btExcluirClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = teUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 227
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'Filtro'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btBuscar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
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
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Ativo'
      CaptionOptions.Layout = clTop
      Control = cbAtivo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btNovo
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btAlterar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxButton3'
      CaptionOptions.Visible = False
      CaptionOptions.Layout = clTop
      Control = btExcluir
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object dsUsuario: TDataSource
    AutoEdit = False
    DataSet = qUsuario
    Left = 428
    Top = 220
  end
  object qUsuario: TFDQuery
    Connection = dmMySql.FDConnection1
    Left = 352
    Top = 224
  end
end
