object frm_consult_cpf: Tfrm_consult_cpf
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Consultar: CPF'
  ClientHeight = 571
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 27
    Width = 594
    Height = 544
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 538
    ClientRectLeft = 2
    ClientRectRight = 588
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'Receita Federal'
      ImageIndex = 0
      object dxLayoutControl_1: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 586
        Height = 511
        Align = alClient
        TabOrder = 0
        LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
        object EdtCodCtrlControle: TcxTextEdit
          Left = 17
          Top = 291
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 11
          Width = 547
        end
        object cxImage1: TcxImage
          Left = 17
          Top = 38
          Properties.FitMode = ifmStretch
          Style.HotTrack = False
          TabOrder = 0
          Height = 137
          Width = 354
        end
        object EditCNPJ: TcxTextEdit
          Left = 443
          Top = 38
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 1
          Width = 121
        end
        object EditDtNasc: TcxTextEdit
          Left = 443
          Top = 65
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 2
          Width = 121
        end
        object EditCaptcha: TcxTextEdit
          Left = 443
          Top = 92
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxButton2: TcxButton
          Left = 377
          Top = 119
          Width = 187
          Height = 25
          Action = Action_captcha
          TabOrder = 4
        end
        object cxButton1: TcxButton
          Left = 377
          Top = 150
          Width = 187
          Height = 25
          Action = Action_consult_cpf
          TabOrder = 5
        end
        object EditRazaoSocial: TcxTextEdit
          Left = 70
          Top = 219
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 6
          Width = 301
        end
        object EditSituacao: TcxTextEdit
          Left = 443
          Top = 219
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 7
          Width = 121
        end
        object EdtDigitoVerificador: TcxTextEdit
          Left = 70
          Top = 246
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 8
          Width = 51
        end
        object EdtEmissao: TcxTextEdit
          Left = 180
          Top = 246
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 9
          Width = 191
        end
        object EdtIncricao: TcxTextEdit
          Left = 443
          Top = 246
          Properties.CharCase = ecUpperCase
          Style.HotTrack = False
          TabOrder = 10
          Width = 121
        end
        object dxLayoutControl_1Group_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = dxLayoutControl_1Group_Root
          CaptionOptions.Text = 'Dados CPF'
          ButtonOptions.Buttons = <>
          Index = 0
        end
        object dxLayoutGroup2: TdxLayoutGroup
          Parent = dxLayoutControl_1Group_Root
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'Dados Pessoais'
          ButtonOptions.Buttons = <>
          Index = 1
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutGroup2
          AlignHorz = ahLeft
          AlignVert = avTop
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          CaptionOptions.Text = 'C'#243'digo de controlhe do comprovante'
          CaptionOptions.Layout = clTop
          Control = EdtCodCtrlControle
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 547
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahClient
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem13: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup1
          AlignHorz = ahClient
          Control = cxImage1
          ControlOptions.OriginalHeight = 137
          ControlOptions.OriginalWidth = 354
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          CaptionOptions.Text = 'CPF'
          Control = EditCNPJ
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutGroup1
          AlignHorz = ahLeft
          AlignVert = avTop
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem12: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Dt. Nasc.'
          Control = EditDtNasc
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup1
          Index = 1
          AutoCreated = True
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          CaptionOptions.Text = 'Captcha'
          Control = EditCaptcha
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = cxButton2
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup7
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = cxButton1
          ControlOptions.OriginalHeight = 25
          ControlOptions.OriginalWidth = 75
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Nome'
          Control = EditRazaoSocial
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 301
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = dxLayoutAutoCreatedGroup2
          AlignVert = avClient
          LayoutDirection = ldHorizontal
          Index = 0
          AutoCreated = True
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahRight
          AlignVert = avClient
          CaptionOptions.Text = 'Situa'#231#227'o'
          Control = EditSituacao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avTop
          CaptionOptions.Text = 'Dig. Verif.'
          Control = EdtDigitoVerificador
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 51
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem11: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Emitido '#224's'
          Control = EdtEmissao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 191
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahLeft
          AlignVert = avClient
          CaptionOptions.Text = 'Dt. Inscri'#231#227'o'
          Control = EdtIncricao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
      end
    end
  end
  object dxBarDockControl_1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 594
    Height = 27
    Align = dalTop
    BarManager = dxBarManager_1
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 424
    Top = 48
  end
  object dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 456
    Top = 48
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object ActionList_1: TActionList
    Images = cxImageList_1
    Left = 550
    Top = 48
    object Action_close: TAction
      Caption = 'Fechar'
      Hint = 'Fechar Formul'#225'rio'
      ImageIndex = 1
      ShortCut = 16454
      OnExecute = Action_closeExecute
    end
    object Action_export: TAction
      Caption = 'Exportar Registros'
      Hint = 'Exportar informa'#231#245'es'
      ImageIndex = 0
    end
    object Action_consult_cpf: TAction
      Caption = 'Consultar CPF'
      Hint = 'Consultar CPF'
      OnExecute = Action_consult_cpfExecute
    end
    object Action_captcha: TAction
      Caption = 'Atualizar Captcha'
      Hint = 'Atualizar Captcha'
      OnExecute = Action_captchaExecute
    end
  end
  object cxImageList_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 3146246
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000020000
          000A0000000F0000001000000010000000100000001100000011000000110000
          001100000011000000100000000B000000030000000000000000000000094633
          2CC160453BFF644A41FFB87D4EFFB97A4AFFB47444FFB06C3DFFA76436FFA764
          36FF583D36FF5B3E37FF3B2821C20000000A00000000000000000000000D6F53
          47FF947869FF6A4F46FFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
          6AFF5D413AFF684B41FF543931FF0000000E00000000000000000000000C7357
          4AFF987D6EFF70564BFFFFFFFFFFF6EFEAFFF6EFE9FFF6EEE9FFF5EEE9FFF6EE
          E8FF62473FFF715348FF573B33FF0000000F00000000000000000000000B785C
          4EFF9D8273FF765C50FFFFFFFFFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
          EAFF684E44FF72554BFF593E35FF0000000E00000000000000000000000A7C60
          50FFA28777FF7B6154FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF1F1
          F1FF89756EFF8A7269FF5F443BFF0000000C0000000000000000000000097F63
          54FFA78E7DFF977A6AFF967969FF957967FF84695CFF705548FF8F7B73FF0B67
          37FF295D3CFF81746BFF806C63FF0000000C0000000000000000000000088367
          57FFAB9382FF634A41FF614740FF5E463DFF5C443CFF5B433BFF776761FF0A67
          37FF2AAF7FFF106137FF5B6352FF00000016000000030000000000000007866A
          59FFAF9788FF674E44FFF3EAE4FFE8D9CEFFE9DFD7FFE5DBD5FFD8CFC9FF0B6A
          3BFF4EDCB2FF27C48DFF0C7746FF022E179C000201190000000500000006886D
          5CFFB39C8CFF6B5248FFF4ECE6FFEBE3DCFF47916BFF046B38FF046B38FF056B
          38FF3AD7A5FF37D6A2FF32D3A0FF199966FF044A26D5000D063A000000058B70
          5EFFB7A091FF70564DFFF6EFEAFFEBE4DFFF167E4EFF84EDD1FF52E1B6FF4DDF
          B3FF48DDAFFF44DBACFF3FD9A9FF3AD7A6FF32BE8EFF0F6A3FF6000000048E72
          60FFBBA595FF755A50FFF7F1ECFFF1EEEBFF188252FFB8F7E7FFB4F5E6FFAFF4
          E4FF85EDD2FF52E1B7FF4DDFB3FF5DE2BBFF66D0AEFF16794CF6000000026A56
          49BF8F7361FF795E54FF765D52FFAFA19CFF3B8963FF0D814DFF0D804DFF0D80
          4CFF95F1DAFF65E7C2FF83ECCFFF57B28FFF065932D2010E0832000000010000
          000200000003000000030000000300000005000000090000000C000000140D7B
          4BF2AEF6E5FF94E5CEFF339167FD033A1F910001010F00000003000000000000
          0000000000000000000000000000000000000000000000000000000000070F7F
          4EF287CBB3FF106D42E6011C0F4C000000060000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000051081
          52F1034B2AAE0007041700000003000000010000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00824B4B004E1E1F00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00824B4B00824B4B00A64B4B00A94D4D004E1E1F00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00824B4B00824B4B00B64F5000C24F5000C54D4E00B24D4E004E1E1F00824B
          4B00824B4B00824B4B00824B4B00824B4B00824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00D4585900CB555600C9545500C9525300B74F52004E1E1F00FE8B
          8C00FB9A9C00F8AAAB00F7B5B600F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00D75C5D00D05A5B00CF595A00CF575800BD5356004E1E1F0023B5
          4A0013C1480016BD48000CBC4100F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00DD636400D75F6000D55E5F00D55C5D00C2575A004E1E1F002AB4
          4D001CBF4C001EBC4C0013BC4500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00E3686900DD656600DA636400DE666700C6595B004E1E1F0026B1
          490016BC48001BBB490010BB4300F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00EB6D6E00E2676800E67E7F00FAD3D400CC6E70004E1E1F00A5D8
          970050D16F0042C966002DC75800F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00F2737400E96C6D00EB818200FCD1D300CF6E70004E1E1F00FFF2
          CC00FFFFD700FFFFD400E6FCC700F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00F8787900F0757600EE727300F0737400D16566004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD700F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00FE7F8000F77A7B00F6797A00F7777900D76B6B004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00FF838400FC7F8000FB7E7F00FE7F8000DA6E6F004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00FF888900FF828300FF818200FF828300E07374004E1E1F00FCEF
          C700FFFFD500FFFFD300FFFFD500F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00824B4B00824B4B00E2757600FE818200FF868700E57677004E1E1F00FAEB
          C500FCFBD100FCFBCF00FCFBD100F7B5B600824B4B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00824B4B009C565700CB6C6D00CF6E6E004E1E1F00824B
          4B00824B4B00824B4B00824B4B00824B4B00824B4B00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00824B4B00824B4B004E1E1F00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        MaskColor = clFuchsia
      end>
  end
  object dxBarManager_1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.HotImages = cxImageList_1
    ImageOptions.Images = cxImageList_1
    ImageOptions.LargeImages = cxImageList_1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 486
    Top = 48
    object dxBarManager_1Bar1: TdxBar
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 618
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      Images = cxImageList_1
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton1: TdxBarButton
      Action = Action_export
      Category = 0
    end
    object dxBarButton2: TdxBarButton
      Action = Action_close
      Category = 0
    end
  end
  object ACBrConsultaCPF1: TACBrConsultaCPF
    ProxyPort = '8080'
    Left = 392
    Top = 48
  end
end
