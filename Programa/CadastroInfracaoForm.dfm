object CadastroInfracaoFrm: TCadastroInfracaoFrm
  Left = 0
  Top = 0
  Caption = 'Cadastro Infra'#231#227'o'
  ClientHeight = 163
  ClientWidth = 586
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
    Width = 586
    Height = 163
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 36
    ExplicitWidth = 300
    ExplicitHeight = 250
    object teNomeMotorista: TcxDBTextEdit
      Left = 10
      Top = 28
      DataBinding.DataField = 'NOME_MOTORISTA'
      DataBinding.DataSource = dsInfracao
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 283
    end
    object tePlacaVeiculo: TcxDBTextEdit
      Left = 299
      Top = 28
      DataBinding.DataField = 'PLACA_VEICULO'
      DataBinding.DataSource = dsInfracao
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 121
    end
    object teNumeroRastreador: TcxDBTextEdit
      Left = 426
      Top = 28
      DataBinding.DataField = 'NUMERO_RASTREADOR'
      DataBinding.DataSource = dsInfracao
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 121
    end
    object deData: TcxDBDateEdit
      Left = 10
      Top = 73
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = dsInfracao
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object ceVelocidade: TcxDBCurrencyEdit
      Left = 137
      Top = 73
      DataBinding.DataField = 'VELOCIDADE'
      DataBinding.DataSource = dsInfracao
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ' ,0.##;- ,0.##'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 121
    end
    object ceLimiteVelocidade: TcxDBCurrencyEdit
      Left = 264
      Top = 73
      DataBinding.DataField = 'LIMITE_VELOCIDADE'
      DataBinding.DataSource = dsInfracao
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = ' ,0.##;- ,0.##'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 121
    end
    object btSalvar: TcxButton
      Left = 420
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 6
      OnClick = btSalvarClick
    end
    object btCancelar: TcxButton
      Left = 501
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 7
      OnClick = btCancelarClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 2
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Nome Motorista'
      CaptionOptions.Layout = clTop
      Control = teNomeMotorista
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 283
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Placa Ve'#237'culo'
      CaptionOptions.Layout = clTop
      Control = tePlacaVeiculo
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'N'#250'mero Rastreador'
      CaptionOptions.Layout = clTop
      Control = teNumeroRastreador
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Data'
      CaptionOptions.Layout = clTop
      Control = deData
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Velocidade'
      CaptionOptions.Layout = clTop
      Control = ceVelocidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'Limite Velocidade'
      CaptionOptions.Layout = clTop
      Control = ceLimiteVelocidade
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = btSalvar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      CaptionOptions.Text = 'cxButton2'
      CaptionOptions.Visible = False
      Control = btCancelar
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
  object qInfracao: TFDQuery
    OnNewRecord = qInfracaoNewRecord
    Connection = dmMySql.FDConnection1
    SQL.Strings = (
      'select * from INFRACAO where ID_INFRACAO = :ID_INFRACAO')
    Left = 476
    Top = 64
    ParamData = <
      item
        Name = 'ID_INFRACAO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qInfracaoID_INFRACAO: TFDAutoIncField
      FieldName = 'ID_INFRACAO'
      Origin = 'ID_INFRACAO'
      ProviderFlags = [pfInWhere, pfInKey]
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
  object dsInfracao: TDataSource
    DataSet = qInfracao
    Left = 400
    Top = 64
  end
end
