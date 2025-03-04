object MainFrm: TMainFrm
  Left = 0
  Top = 0
  Caption = 'Controle de rotas'
  ClientHeight = 596
  ClientWidth = 1008
  Color = clHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 596
    Align = alClient
    ParentBackground = True
    TabOrder = 0
    Transparent = True
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
  end
  object MainMenu1: TMainMenu
    Left = 88
    Top = 100
    object U1: TMenuItem
      Caption = 'Usu'#225'rio'
      OnClick = U1Click
    end
    object I1: TMenuItem
      Caption = 'Infra'#231#227'o'
      OnClick = I1Click
    end
    object S1: TMenuItem
      Caption = 'Sobre'
      OnClick = S1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 172
    Top = 72
  end
end
