object CadastroUsuarioFrm: TCadastroUsuarioFrm
  Left = 0
  Top = 0
  Caption = 'Cadastro de Usu'#225'rio'
  ClientHeight = 104
  ClientWidth = 571
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
    Width = 571
    Height = 104
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 172
    ExplicitTop = 100
    ExplicitWidth = 300
    ExplicitHeight = 250
    object teUsuario: TcxDBTextEdit
      Left = 10
      Top = 28
      DataBinding.DataField = 'LOGIN'
      DataBinding.DataSource = dsUsuario
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 255
    end
    object teSenha: TcxDBTextEdit
      Left = 271
      Top = 28
      DataBinding.DataField = 'SENHA'
      DataBinding.DataSource = dsUsuario
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 255
    end
    object cbAtivo: TcxDBCheckBox
      Left = 532
      Top = 28
      DataBinding.DataField = 'ATIVO'
      DataBinding.DataSource = dsUsuario
      Properties.ValueChecked = '1'
      Properties.ValueUnchecked = '0'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
    end
    object btCancelar: TcxButton
      Left = 486
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btCancelarClick
    end
    object btSalvar: TcxButton
      Left = 405
      Top = 69
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btSalvarClick
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
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Usu'#225'rio'
      CaptionOptions.Layout = clTop
      Control = teUsuario
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Senha'
      CaptionOptions.Layout = clTop
      Control = teSenha
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 255
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Ativo'
      CaptionOptions.Layout = clTop
      Control = cbAtivo
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btSalvar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object qUsuario: TFDQuery
    OnNewRecord = qUsuarioNewRecord
    Connection = dmMySql.FDConnection1
    SQL.Strings = (
      'select * from USUARIO where ID_USUARIO = :ID_USUARIO')
    Left = 168
    Top = 48
    ParamData = <
      item
        Name = 'ID_USUARIO'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsUsuario: TDataSource
    DataSet = qUsuario
    Left = 220
    Top = 48
  end
end
