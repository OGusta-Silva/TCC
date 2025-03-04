object AboutFrm: TAboutFrm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sobre'
  ClientHeight = 401
  ClientWidth = 870
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
    Width = 870
    Height = 401
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 20
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cxMemo1: TcxMemo
      Left = 10
      Top = 28
      Lines.Strings = (
        
          'Bem-vindo ao [Nome do Seu Site], a plataforma dedicada a promove' +
          'r mais seguran'#231'a no tr'#226'nsito. Nosso objetivo '#233' reunir e disponib' +
          'ilizar informa'#231#245'es sobre motoristas que '
        
          'cometem infra'#231#245'es graves de alta velocidade em rodovias e estrad' +
          'as.'
        ''
        
          'Somos uma empresa comprometida com a redu'#231#227'o de acidentes e a co' +
          'nscientiza'#231#227'o sobre os perigos da imprud'#234'ncia ao volante. Acredi' +
          'tamos que a transpar'#234'ncia e o '
        
          'acesso a informa'#231#245'es confi'#225'veis s'#227'o essenciais para que empresas' +
          ' e profissionais do setor de transportes possam tomar decis'#245'es m' +
          'ais seguras e respons'#225'veis.')
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Height = 160
      Width = 850
    end
    object cxMemo2: TcxMemo
      Left = 10
      Top = 212
      Lines.Strings = (
        
          'A alta velocidade continua sendo uma das principais causas de ac' +
          'identes fatais nas estradas. Empresas que contratam motoristas p' +
          'ara transporte de cargas ou '
        
          'passageiros devem estar atentas ao hist'#243'rico de seus condutores,' +
          ' garantindo que a seguran'#231'a seja sempre uma prioridade.'
        ''
        
          'Nosso banco de dados permite que empresas consultem registros de' +
          ' infra'#231#245'es e tomem decis'#245'es mais informadas antes de contratar m' +
          'otoristas. Juntos, podemos reduzir '
        'os riscos e tornar as estradas mais seguras para todos.'
        ''
        
          'A seguran'#231'a no tr'#226'nsito '#233' um dever de todos. Fa'#231'a parte dessa mu' +
          'dan'#231'a!')
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 179
      Width = 850
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Sobre N'#243's'
      CaptionOptions.Layout = clTop
      Control = cxMemo1
      ControlOptions.OriginalHeight = 109
      ControlOptions.OriginalWidth = 836
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Alerta '#224's Empresas'
      CaptionOptions.Layout = clTop
      Control = cxMemo2
      ControlOptions.OriginalHeight = 122
      ControlOptions.OriginalWidth = 836
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
end
