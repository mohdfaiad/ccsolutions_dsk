object frm_form_default: Tfrm_form_default
  Left = 0
  Top = 0
  Caption = 'Form Default'
  ClientHeight = 691
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  ShowHint = True
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl_1: TcxPageControl
    Left = 0
    Top = 55
    Width = 1008
    Height = 636
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet_1
    Properties.CustomButtons.Buttons = <>
    Properties.HotImages = cxImageList_1
    Properties.Images = cxImageList_1
    ClientRectBottom = 630
    ClientRectLeft = 2
    ClientRectRight = 1002
    ClientRectTop = 28
    object cxTabSheet_1: TcxTabSheet
      Caption = 'Pesquisar'
      object cxGrid_1: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 994
        Height = 596
        Align = alClient
        Images = cxImageList_1
        PopupMenu = PopupMenu_1
        TabOrder = 0
        LockedStateImageOptions.Text = 'Aguarde por favor...'
        object cxGrid_1DBTableView1: TcxGridDBTableView
          PopupMenu = PopupMenu_1
          OnDblClick = cxGrid_1DBTableView1DblClick
          Navigator.Buttons.ConfirmDelete = True
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.Images = cxImageList_1
          Navigator.Buttons.First.ImageIndex = 0
          Navigator.Buttons.First.Visible = False
          Navigator.Buttons.PriorPage.Visible = False
          Navigator.Buttons.Prior.ImageIndex = 1
          Navigator.Buttons.Prior.Visible = False
          Navigator.Buttons.Next.ImageIndex = 2
          Navigator.Buttons.Next.Visible = False
          Navigator.Buttons.NextPage.Visible = False
          Navigator.Buttons.Last.ImageIndex = 3
          Navigator.Buttons.Last.Visible = False
          Navigator.Buttons.Insert.ImageIndex = 4
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Delete.ImageIndex = 8
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.ImageIndex = 5
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.ImageIndex = 6
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.ImageIndex = 7
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.ImageIndex = 9
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Hint = 'Filtrar'
          Navigator.Buttons.Filter.ImageIndex = 11
          Navigator.Buttons.Filter.Visible = True
          Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          DataController.DataSource = ds
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Images = cxImageList_1
          NewItemRow.InfoText = 'Click aqui para adicionar uma nova linha'
          OptionsData.Editing = False
          OptionsView.NoDataToDisplayInfoText = '<Nenhum dado a ser exibido>'
          OptionsView.Footer = True
          OptionsView.Indicator = True
        end
        object cxGrid_1Level1: TcxGridLevel
          GridView = cxGrid_1DBTableView1
        end
      end
    end
    object cxTabSheet_2: TcxTabSheet
      Caption = 'Manuten'#231#227'o'
      object cxPageControl_2: TcxPageControl
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 994
        Height = 596
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet_3
        Properties.CustomButtons.Buttons = <>
        Properties.HotImages = cxImageList_1
        Properties.Images = cxImageList_1
        ClientRectBottom = 590
        ClientRectLeft = 2
        ClientRectRight = 988
        ClientRectTop = 28
        object cxTabSheet_3: TcxTabSheet
          Caption = 'Informa'#231#245'es'
          object dxLayoutControl_1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object dbedt_id: TcxDBTextEdit
              Left = 59
              Top = 37
              DataBinding.DataSource = ds
              Enabled = False
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dbedt_dt_registration: TcxDBDateEdit
              Left = 232
              Top = 37
              DataBinding.DataSource = ds
              Enabled = False
              Style.HotTrack = False
              TabOrder = 1
              Width = 130
            end
            object dxLayoutControl_1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup1: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Registro'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = False
              SizeOptions.Width = 966
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutGroup2: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Dados'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem1: TdxLayoutItem
              Parent = dxLayoutGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'C'#243'd. ID'
              Control = dbedt_id
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 0
            end
            object dxLayoutItem2: TdxLayoutItem
              Parent = dxLayoutGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Reg.'
              Control = dbedt_dt_registration
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
          end
        end
      end
    end
  end
  object dxBarDockControl_1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 55
    Align = dalTop
    BarManager = dxBarManager_1
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
    ImageOptions.Images = cxImageList_1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 928
    Top = 8
    PixelsPerInch = 96
    object dxBarManager_1Bar1: TdxBar
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_first'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_prior'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_next'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_last'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_insert'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_edit'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_save'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_cancel'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_delete'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_refresh'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager_1Bar2: TdxBar
      Caption = 'Imprimir'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 0
      DockedTop = 28
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 152
          Visible = True
          ItemName = 'cxBarEditItem_1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_report_edit'
        end
        item
          Visible = True
          ItemName = 'dxBarButton_report_preview'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager_1Bar3: TdxBar
      Caption = 'Fechar'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 267
      DockedTop = 0
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_close'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager_1Bar4: TdxBar
      Caption = 'Importar'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 295
      DockedTop = 28
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem_1'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager_1Bar5: TdxBar
      Caption = 'Exportar'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 451
      DockedTop = 28
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem_2'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager_1Bar6: TdxBar
      Caption = 'Personalizados'
      CaptionButtons = <>
      DockControl = dxBarDockControl_1
      DockedDockControl = dxBarDockControl_1
      DockedLeft = 604
      DockedTop = 28
      FloatLeft = 818
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton_first: TdxBarButton
      Action = Action_first
      Category = 0
    end
    object dxBarButton_prior: TdxBarButton
      Action = Action_prior
      Category = 0
    end
    object dxBarButton_next: TdxBarButton
      Action = Action_next
      Category = 0
    end
    object dxBarButton_last: TdxBarButton
      Action = Action_last
      Category = 0
    end
    object dxBarButton_insert: TdxBarButton
      Action = Action_insert
      Category = 0
    end
    object dxBarButton_edit: TdxBarButton
      Action = Action_edit
      Category = 0
    end
    object dxBarButton_save: TdxBarButton
      Action = Action_save
      Category = 0
    end
    object dxBarButton_cancel: TdxBarButton
      Action = Action_cancel
      Category = 0
    end
    object dxBarButton_delete: TdxBarButton
      Action = Action_delete
      Category = 0
    end
    object dxBarButton_refresh: TdxBarButton
      Action = Action_refresh
      Category = 0
    end
    object dxBarButton_close: TdxBarButton
      Action = Action_close
      Category = 0
    end
    object dxBarSubItem_print: TdxBarSubItem
      Caption = 'Imprimir Dados'
      Category = 0
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360400000000000036000000280000001000000010000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
        0000000000030000000C00000012000000140000001400000015000000150000
        00140000000D0000000300000000000000000000000000000000000000000000
        000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD8978FFBE89
        78FF876356C30000000B000000000000000000000000000000030000000E0000
        001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4ECE8FFF5EC
        E7FFBF8D7BFF00000026000000180000000F000000040000000C7B5042C5A76E
        5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE72FFF6EE
        EAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E6BFFECD9
        CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B176FFF7F0
        EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE8571FFF1E5
        DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B78FFF5EE
        E7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7DDFFF2E7
        DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC7937FFFFAF4
        F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D32FF5D3D
        34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC9986FFFDFA
        FAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D42FF724C
        41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F8DFFFFFF
        FFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5DEFFF6EF
        EBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE9584E9F5EC
        E8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7E1FFF8F2
        EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA000000080000000234292545A783
        75CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EAE3FFF9F5
        F3FF977263FF876658FFA68072CE342823480000000300000000000000010000
        00030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5ECE7FFFBF7
        F6FFC59685FF0000001100000004000000020000000000000000000000000000
        000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EFEAFFFCFA
        F8FFC89A89FF0000000900000000000000000000000000000000000000000000
        000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFCFBFFFDFB
        FAFFCB9F8DFF0000000700000000000000000000000000000000000000000000
        0000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA391FFCDA3
        91FF98786BC100000004000000000000000000000000}
      ItemLinks = <>
    end
    object dxBarSubItem_1: TdxBarSubItem
      Caption = 'Importar Dados'
      Category = 0
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000013744558745469746C6500536F72743B536F7274696E67
        3BD60332CA000002C049444154785E65526F48535F187ECEEE1CFDD7A4280A05
        7506F9A10F4248C1B4148B7419A16530095AD0C798266248500449089A261145
        EA878C6651D6EFE746D13F4B83024D90ACE514874C67B8E9D431BBDBBDA79773
        AF81F8C0C37B9E73CEF3BCE79E73D9AB8B7B3E488CE5710E80C8554E451F732E
        34C0B44A3AA6F0DE13EDE305B4A68060448CE759EAEA350761FCDD27A4E75B84
        09E09A3E9C4B928B50776D751E0003510B909715280B7EA87FE684C13FF00529
        FBB6029C81B1D59A80982C7C42888018050C74BA1109CE62057D777BF4FE1AFA
        49AF8CE3325F1D306AE9C031BB05AAFEED6D5D83B0976703D074BBF31BECA7B3
        C17557E3BD8FC08B827F0186B8C2B5CBD27B2448128C0640621C06AE22FF402A
        684A988D548FE46688C68C31102920AEC2DDEBC5939E1138FFFF8E049304EFC4
        2CAA9BCB70AACE8C3BDD173046DAE39DC19BCFEFD1E02C42CEC9ED3900A4E2CA
        1418E904389A670605892E0F9C8348DDB5051381213CAC7F8E8ADA52ECDEB111
        E1C520EEBB6EA0DED1802B2D359DD142F5604FD3A44F9C80AB1C2A002A62AC28
        A4B801A1E56171CC70781ECD5D55B01DB741367971EE4CD98ED4ACC4C73BCD1B
        928CD168F4C3B55B6F0F31300AE0E21423A33300230D453C5FFBB336BCEFEBC5
        AFC9215CAA2AC4ED8ED7F0FB16F6276798CE83B08EB889B8999848DC464CB33A
        D2F8F76013B756A673007B895956473A7F3956CA8B68CEE572950358AFBD804E
        4242C1F9D41ADA48C60CB1B998AAB53293E7DA52AE5A1D66DEED2D116B0092AC
        8E4C18B01ACAD7FF021D015FE49BBDBC048A2AC35E6EC5F4C4E2D0A07BE61198
        0171350640229297B13501EAE26F3934E559B235B67605E7E7A3686A7D1AF4FF
        58AC580AC9730083220218911417016BA04C8D44C6A646976C2DD787C3D3DEC8
        D9C0CF88174074D213EABF7979183ECFDC67003227FBEA3BD0A1B730E9976BD2
        B5A45F74B2A89AC65F50ED69BF30EA98540000000049454E44AE426082}
      Images = cxImageList_1
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_import'
        end>
    end
    object dxBarSubItem_2: TdxBarSubItem
      Caption = 'Exportar Dados'
      Category = 0
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000013744558745469746C6500536F72743B536F7274696E67
        3BD60332CA000002B849444154785E6D906B48537F1CC64F99B372A2CCBC7471
        B3794BA5B20B2861416988F3188DB2FE7FEA4D1451AF764E2F8C5E194192A159
        EABA28CD28BB9996145D2C9B5BD3B026B340C196A168A44586E4659BD39EBEBF
        B37182F2C08787E7FBFD9DCF39FCB80A93D55275AD0D8CCA5A860D15948C0B26
        DB1FAEDA709E3857DD6AE1382E0000C7E0D8D2EB9D9598269EB7F7B3EEE7179A
        DBFAD95CA6ACDA0A1204CA82F29A57707B6630E59E81CB338B4B759D70B9A9FB
        3152A724BCD2FCEC250B13286441E9152BEA9ABAE9A01DC61B8C4E3F76545DF7
        6164E9A7B8CACC0441B2A0E462ABEF8B535E4C12976F7662C2E525A6314E545C
        7B83099A8F132C4F9D7FC9040B65C1E94AB324987479891998EADFC1ED61BFEB
        21A11BDD1F86E1A24E1269DEE118600225E17B5A8424F4980EA1BD2853E68BE3
        290CC5DBA01357506E95FAD0EB7AD89E18B1BB3011E9FA882C1204E489311CD7
        7C3401D39F6FC3ED2C93B01EDF84C96FEF404BFC70DBA113D4F839E2C0609F19
        47CE6C8673F831F69E481D59B33D5CCB24DCA3035A7806AE4A0217D162C8C0F8
        D72EE4091AF48D9948A4C190D38263A5B9B0F5D4A07BF4029EBD2F026FD0BE8D
        8E5F1CCEDD2A50B736FEAF41E37F1A34EC51E35E811ABD2FEED08BB1708ED590
        281625C58790A657917425CC8387A55DDA4E155272C20A3976A3FE4B09214289
        25C44A9E0EF78C968317B5A09E4CA4F082160F3FED82CE375B4A2CE200C8D013
        9875505DC80EF2629C74388F921713B0655FCC495E884753DF0EB66382305E48
        E0FE16CC0F8954446ED44739EE778878F0311F8D1D066CD0477729558A445E4C
        44833317944CA0A2FC47C058B02C25383973FFF2EFB5F66CB08C5E159C4AF308
        5E4CC2DDDE6C504A827C21694EC13C42A14D0FCD59B7236A2C2E234C473D8850
        AED545B4ADD74761B52EB29D755E489E53204B08254B7F0FF05FB48AA5BF73BF
        0118723CD8704845110000000049454E44AE426082}
      Images = cxImageList_1
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton_export'
        end>
    end
    object dxBarButton_export: TdxBarButton
      Action = Action_export
      Category = 0
    end
    object dxBarButton_report_edit: TdxBarButton
      Action = Action_print
      Category = 0
    end
    object dxBarButton_report_preview: TdxBarButton
      Action = Action_report_designer
      Category = 0
    end
    object dxBarButton_import: TdxBarButton
      Action = Action_import
      Category = 0
    end
    object cxBarEditItem_1: TcxBarEditItem
      Caption = 'Relat'#243'rios'
      Category = 0
      Hint = 'Relat'#243'rios'
      Visible = ivAlways
      ShowCaption = True
      PropertiesClassName = 'TcxShellComboBoxProperties'
      Properties.DropDownWidth = 350
      Properties.FastSearch = True
      Properties.FileMask = '*.fr3'
      Properties.Root.BrowseFolder = bfCustomPath
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports'
      Properties.ViewOptions = [scvoShowFiles, scvoShowZipFilesWithFolders]
    end
  end
  object ActionList_1: TActionList
    Images = cxImageList_1
    Left = 960
    Top = 8
    object Action_first: TAction
      Caption = 'Primeiro'
      Hint = 'Registro Primeiro'
      ImageIndex = 0
      OnExecute = Action_firstExecute
      OnUpdate = Action_insertUpdate
    end
    object Action_prior: TAction
      Caption = 'Anterior'
      Hint = 'Registro Anterior'
      ImageIndex = 1
      OnExecute = Action_priorExecute
      OnUpdate = Action_insertUpdate
    end
    object Action_next: TAction
      Caption = 'Pr'#243'ximo'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 2
      OnExecute = Action_nextExecute
      OnUpdate = Action_insertUpdate
    end
    object Action_last: TAction
      Caption = #218'ltimo'
      Hint = #218'ltimo Registro'
      ImageIndex = 3
      OnExecute = Action_lastExecute
      OnUpdate = Action_insertUpdate
    end
    object Action_insert: TAction
      Caption = 'Inserir'
      Hint = 'Inserir Registro'
      ImageIndex = 4
      ShortCut = 16457
      OnExecute = Action_insertExecute
      OnUpdate = Action_insertUpdate
    end
    object Action_edit: TAction
      Caption = 'Editar'
      Hint = 'Editar Registro'
      ImageIndex = 5
      ShortCut = 16453
      OnExecute = Action_editExecute
    end
    object Action_save: TAction
      Caption = 'Salvar'
      Hint = 'Salvar Altera'#231#245'es'
      ImageIndex = 6
      ShortCut = 16467
    end
    object Action_cancel: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar Altera'#231#245'es'
      ImageIndex = 7
      ShortCut = 16462
      OnExecute = Action_cancelExecute
      OnUpdate = Action_cancelUpdate
    end
    object Action_delete: TAction
      Caption = 'Excluir'
      Hint = 'Excluir Registro'
      ImageIndex = 8
      ShortCut = 16452
      OnUpdate = Action_insertUpdate
    end
    object Action_refresh: TAction
      Caption = 'Atualizar'
      Hint = 'Atualizar Informa'#231#245'es'
      ImageIndex = 9
      ShortCut = 32884
      OnExecute = Action_refreshExecute
      OnUpdate = Action_insertUpdate
    end
    object Action_filter: TAction
      Caption = 'Filtrar'
      Hint = 'Filtrar Informa'#231#245'es'
      ImageIndex = 11
    end
    object Action_close: TAction
      Caption = 'Fechar'
      Hint = 'Fechar Formul'#225'rio'
      ImageIndex = 10
      ShortCut = 16454
      OnExecute = Action_closeExecute
      OnUpdate = Action_insertUpdate
    end
    object Action_import: TAction
      Caption = 'Import Registros'
      Hint = 'Importar Registros'
      OnExecute = Action_importExecute
    end
    object Action_export: TAction
      Caption = 'Exportar Registros'
      Hint = 'Exportar registros do Grid'
      OnExecute = Action_exportExecute
    end
    object Action_print: TAction
      Caption = 'Imprimir'
      Hint = 'Visualizar Relat'#243'rio'
      ImageIndex = 12
      OnExecute = Action_printExecute
    end
    object Action_print_edit: TAction
      Caption = 'Editar'
      Hint = 'Editar Relat'#243'rio'
      ImageIndex = 13
    end
    object Action_report_designer: TAction
      Caption = 'Designer Relat'#243'rio'
      Hint = 'Designer Relat'#243'rio'
      ImageIndex = 19
      OnExecute = Action_report_designerExecute
    end
  end
  object ds: TDataSource
    DataSet = clientSQL
    Left = 960
    Top = 56
  end
  object cxGridPopupMenu_1: TcxGridPopupMenu
    Grid = cxGrid_1
    PopupMenus = <
      item
        GridView = cxGrid_1DBTableView1
        HitTypes = []
        Index = 0
        PopupMenu = PopupMenu_1
      end>
    Left = 864
    Top = 8
  end
  object PopupMenu_1: TPopupMenu
    Images = cxImageList_1
    Left = 800
    Top = 8
    object Primeiro1: TMenuItem
      Action = Action_first
    end
    object Anterior1: TMenuItem
      Action = Action_prior
    end
    object Prximo1: TMenuItem
      Action = Action_next
    end
    object ltimo1: TMenuItem
      Action = Action_last
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Inserir1: TMenuItem
      Action = Action_insert
    end
    object Editar1: TMenuItem
      Action = Action_edit
    end
    object Excluir1: TMenuItem
      Action = Action_delete
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Atualizar1: TMenuItem
      Action = Action_refresh
    end
  end
  object cxImageList_1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 525184
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174D000000000000000000000000000000003827174D0000000000000000B882
          4DFFB8824DFF00000000000000000000000000000000000000003827174DB882
          4DFF0000000000000000000000003827174DB8824DFF0000000000000000B882
          4DFFB8824DFF000000000000000000000000000000003827174DB8824DFFB882
          4DFF00000000000000003827174DB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF0000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFF000000003827174DB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF00000000000000003827174DB8824DFFB8824DFFB8824DFF805B
          36B23827174DB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF000000003827174DB8824DFFB8824DFFB8824DFF805B36B23827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF3827174DB8824DFFB8824DFFB8824DFF805B36B23827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF805B36B23827174DB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF3827174DB8824DFFB8824DFFB8824DFF805B36B23827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF000000003827174DB8824DFFB8824DFFB8824DFF805B36B23827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF00000000000000003827174DB8824DFFB8824DFFB8824DFF805B
          36B23827174DB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF0000000000000000000000003827174DB8824DFFB8824DFFB882
          4DFF000000003827174DB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF000000000000000000000000000000003827174DB8824DFFB882
          4DFF00000000000000003827174DB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF00000000000000000000000000000000000000003827174DB882
          4DFF0000000000000000000000003827174DB8824DFF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174D000000000000000000000000000000003827174D00000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000000000
          00003827174DB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000003827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF0000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF00000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174DB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000003827174DB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF00000000000000003827174DB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF0000000000000000000000003827174DB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000003827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF000000000000000000000000000000000000
          00003827174DB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B8824DFF3827174D000000000000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174D0000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827
          174DB8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFF3827174D000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFF3827174D00000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF3827174D0000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          000000000000B8824DFF3827174D000000000000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000003827174D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003827
          174D000000000000000000000000000000003827174D00000000000000000000
          000000000000000000000000000000000000000000000000000000000000B882
          4DFF3827174D000000000000000000000000B8824DFF3827174D000000000000
          0000000000000000000000000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF3827174D0000000000000000B8824DFFB8824DFF3827174D0000
          0000000000000000000000000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFF3827174D00000000B8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB8824DFFB882
          4DFF3827174D0000000000000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB882
          4DFFB8824DFF3827174D00000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B882
          4DFFB8824DFFB8824DFF3827174DB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B
          36B2B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B882
          4DFFB8824DFFB8824DFF3827174DB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB882
          4DFFB8824DFF3827174D00000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFF3827174D805B36B2B8824DFFB8824DFFB882
          4DFF3827174D0000000000000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFF3827174D00000000B8824DFFB8824DFFB8824DFF3827
          174D000000000000000000000000B8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFF3827174D0000000000000000B8824DFFB8824DFF3827174D0000
          0000000000000000000000000000B8824DFFB8824DFF0000000000000000B882
          4DFF3827174D000000000000000000000000B8824DFF3827174D000000000000
          0000000000000000000000000000B8824DFFB8824DFF00000000000000003827
          174D000000000000000000000000000000003827174D00000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000B8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
          FFFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFF9F9F9FA7A7A7ADD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7A7A7ADD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8282
          82FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB882
          4DFFF1E6DBFFB8824DFF251A0F33000000000000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6
          DBFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1E6DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFF9F9F9FA7A7A7ADD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7A7A7ADD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8282
          82FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007E4B
          69B7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF7E4B69B70000000000000000AF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000000000000000000000000000000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
          0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
          93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
          0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000824F
          6DBDAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FF00000000AF6A93FFAF6A93FF824F6DBD00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001B2856664463
          D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
          0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
          D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
          F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
          F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
          D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4C1EFFF4463
          D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFF9F9F9FA7A7A7ADD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7A7A7ADD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8282
          82FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF828282FE0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFF9F9F9FA7A7A7ADD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7A7A7ADD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8282
          82FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000150F091D51392270835D37B7A97647EAA97647EA835D
          37B751392270150F091D00000000000000000000000000000000000000000000
          000000000000291D11397F5A34B0B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3928184F00000000000000000000000000000000000000000000
          0000150F091D7F5A34B0B8824DFF8A613ABF4A341F661610091F1610091F4A34
          1F663E2C1A56000000003827174D000000000000000000000000000000000000
          000051392270B8824DFF8A613ABF21170E2E0000000000000000000000000000
          0000000000003827174DB8824DFF3827174D0000000000000000000000000000
          0000835D37B7B8824DFF4A341F66000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFF3827174D00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000020302043827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D3827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000003827
          174DB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000004A341F66B8824DFF835D37B70000000000000000000000000000
          0000422E1B5BB8824DFF3827174D000000000000000000000000000000000000
          000021170E2E8A613ABFB8824DFF513922700000000000000000000000000000
          00000C0805103827174D01010001563D24774A341F661610091F1610091F4A34
          1F668A613ABFB8824DFF7F5A34B0150F091D0000000000000000000000000000
          000000000000010100014F38216EB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF7F5A34B0291D1139000000000000000000000000000000000000
          00000000000000000000150F091D51392270835D37B7A97647EAA97647EA835D
          37B751392270150F091D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
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
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000365C70785490AFBB6AB4DBEC6AB4DBEC5490AFBB365C7078000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          0000000000000000000000000000000000004343438100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF43434381000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          000000000000000000000000000000000000848484FF848484FF000000000000
          0000365C70785490AFBB6AB4DBEC6AB4DBEC5490AFBB365C7078000000000000
          000000000000000000000000000043434381848484FF848484FF2A28254D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000043434381848484FF848484FF848484FF848484FF4343
          4381000000000000000000000000000000000000000000000000000000000000
          00000000000043434381848484FF848484FF848484FF848484FF848484FF8484
          84FF434343810000000000000000000000000000000000000000000000000000
          000043434381848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF4343438100000000000000000000000000000000000000004343
          4381848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF43434381000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF000000000000000000000000000000002626264A8484
          84FF848484FF848484FF848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB882
          4DFFFFFFFFFF848484FF848484FF848484FF848484FF2626264A848484FF8484
          84FF848484FF848484FF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF0000000000000000848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000848484FF848484FF848484FF767676E68484
          84FF848484FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000848484FF848484FF767676E6262626498484
          84FF848484FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000848484FF848484FF26262649000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
          00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000EDE0D2FFB8824DFFEDE0D2FFFFFFFFFF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000B8824DFFB8824DFFB8824DFFEDE0D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000EDE0D2FFB8824DFFB8824DFFB8824DFFC89E76FFBA8652FFC89E76FFE0C8
          B1FFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000FFFFFFFFEDE0D2FFB8824DFFC69A70FFE1C8B2FFFAF6F2FFE1C8B2FFC69A
          70FFE0C8B1FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFC89E76FFE1C8B2FFFFFFFFFFFFFFFFFFFFFFFFFFE1C8
          B2FFC89E76FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFBA8652FFFAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFAF6
          F2FFBA8652FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFC89E76FFE1C8B2FFFFFFFFFFFFFFFFFFFFFFFFFFE1C8
          B2FFC89E76FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFE0C8B1FFC69A70FFE1C8B2FFFAF6F2FFE1C8B2FFC69A
          70FFE0C8B1FFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFE0C8B1FFC89E76FFBA8652FFC89E76FFE0C8
          B1FFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFF9F9F9FA7A7A7ADD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7A7A7ADD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8282
          82FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000610100546
          8DF0003D98FF003A93FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000061010044890F30055
          D6FF0061F3FF003482FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000061010055CB2F9005AE1FF004F
          C7FF0051CCFF003482FF003C96FF003C96FF003C96FF003C96FF000000000000
          0000000000000000000000000000000000000D76E0FD0051CCFF0043A7FF004A
          BAFF0051CCFF0063F9FF1371FFFF2D82FFFF65A3FFFF003179FF000000008249
          11FF824911FF824911FF824911FF824911FF0C7EBAFF0051CCFF004CBFFF0056
          D7FF005EECFF0063F9FF1371FFFF2D82FFFF65A3FFFF003179FF000000008A4E
          0FFFFFFAF4FFFFFAF4FFFFFAF4FF00B233FFFFFAF4FF137BB8FF005AE1FF0052
          CEFF0054D2FF003482FF0048B4FF0048B4FF0048B4FF0048B4FF000000009253
          0CFFFFFEFEFFFFFEFEFFFFFEFEFF00C23FFFFFFEFEFFFFFEFEFF1A7DBFFF0055
          D6FF0267FFFF003A93FFFFFEFEFF92530CFF0000000000000000000000009B58
          0AFF00DF54FF00D950FF00D34CFF00CD47FF00C843FF00C23FFF00BC3AFF006E
          91FF003A93FF003482FF00A529FF9B580AFF000000000000000000000000B781
          3EFFFFFCF8FFFFFDFBFFFFFCF8FF36E679FFFFF8F1FFFFF8F1FFFFF8F1FF00DF
          54FFFFF8F1FFFFF8F1FFFFF8F1FFA35D08FF000000000000000000000000E0C6
          A4FF13BEEDFF006FA3FF13BEEDFFA1F3C0FFFFFFFFFFFFFFFFFFFFFFFFFF00DF
          54FFFFFFFFFFFFFFFFFFFFFFFFFFAB6205FF0000000000000000000000000182
          B4FF008EC1FF00CCFFFF008EC1FF0182B4FFE6C7A8FFC78747FFB36518FFAE65
          1DFFAA6521FFA66525FFA26529FF9D652EFF00000000000000000085AAB8008E
          C1FF30DAF8FF59EDFCFF27D6F7FF008EC1FF11BDEBFFDCE9C0FFC5C873FFD0BF
          67FFDCB65BFFE8AD4EFFF3A442FF9D652EFF0000000000000000006FA3FF00CC
          FFFF59EDFCFF008CBFFF59EDFCFF00CCFFFF006FA3FFFFE9D3FFFFB060FFFFAC
          57FFFFA74EFFFFA244FFFF9E3BFF9D652EFF00000000000000000085AAB8008E
          C1FF48E5FAFF59EDFCFF3BDFF9FF008EC1FF12BDEBFFEEEDD2FFCDE0A8FFBDE6
          ACFFAEECB1FF9EF3B5FF8FF9BAFF9D652EFF0000000000000000000000000182
          B4FF008EC1FF00CCFFFF008EC1FF0182B4FFE6C7A8FFC78747FFB36518FFAE65
          1DFFAA6521FFA66525FFA26529FF9D652EFF0000000000000000000000000000
          00000085AAB8006FA3FF0085AAB8000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000306701FF317311FF1C4903AC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000306701FF25BF4AFF28A437FF1A570BC00000000000000000000000000000
          0000000000000000000000000000000000001E7913FF1E7913FF1E7913FF1E79
          13FF306701FF16B02CFF13AD28FF2EA13FFF217C2ADF00000000000000000000
          000000000000000000000000000000000000326500FF42F075FF36DF67FF31D3
          5BFF2DC64EFF16B02CFF0EA81DFF0A9C0EFF238E2EFF2AA956F6000000008249
          11FF824911FF824911FF824911FF824911FF326500FF42F075FF36DF67FF31D3
          5BFF2DC64EFF1CC538FF12C025FF0FAF11FF238E2EFF25A04CF5000000008A4E
          0FFFFFFAF4FFFFFAF4FFFFFAF4FF00B233FF0A8E27FF0A8E27FF0A8E27FF0A8E
          27FF306701FF17B52FFF14B22AFF2F9F3FFF1A8331DF00000000000000009253
          0CFFFFFEFEFFFFFEFEFFFFFEFEFF00C23FFFFFFEFEFFFFFEFEFFFFFEFEFF00C2
          3FFF306701FF2AC455FF28A237FF2E7B1EFF0000000000000000000000009B58
          0AFF00DF54FF00D950FF00D34CFF00CD47FF00C843FF00C23FFF00BC3AFF00B6
          36FF306701FF25720CFF03992CFF9B580AFF000000000000000000000000B781
          3EFFFFFCF8FFFFFDFBFFFFFCF8FF36E679FFFFF8F1FFFFF8F1FFFFF8F1FF00DF
          54FFFFF8F1FFFFF8F1FFFFF8F1FFA35D08FF000000000000000000000000E0C6
          A4FF13BEEDFF006FA3FF13BEEDFFA1F3C0FFFFFFFFFFFFFFFFFFFFFFFFFF00DF
          54FFFFFFFFFFFFFFFFFFFFFFFFFFAB6205FF0000000000000000000000000182
          B4FF008EC1FF00CCFFFF008EC1FF0182B4FFE5C7A9FFC48749FFB1651AFFAD65
          1EFFA96522FFA56526FFA1652AFF9D652EFF00000000000000000085AAB8008E
          C1FF30DAF8FF59EDFCFF27D6F7FF008EC1FF11BDEBFFDCE9C0FFC5C873FFD0BF
          67FFDCB65BFFE8AD4EFFF3A442FF9D652EFF0000000000000000006FA3FF00CC
          FFFF59EDFCFF008CBFFF59EDFCFF00CCFFFF006FA3FFFFE9D3FFFFB060FFFFAC
          57FFFFA74EFFFFA244FFFF9E3BFF9D652EFF00000000000000000085AAB8008E
          C1FF48E5FAFF59EDFCFF3BDFF9FF008EC1FF12BDEBFFEEEDD2FFCDE0A8FFBDE6
          ACFFAEECB1FF9EF3B5FF8FF9BAFF9D652EFF0000000000000000000000000182
          B4FF008EC1FF00CCFFFF008EC1FF0182B4FFE5C7A9FFC48749FFB1651AFFAD65
          1EFFA96522FFA56526FFA1652AFF9D652EFF0000000000000000000000000000
          00000085AAB8006FA3FF0085AAB8000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000001E0000003300000033000000330000001E00000000000000000000
          0023000000330000003300000033000000330000003300000033000000330000
          003300532EA9008D4CFF008B4AFF008C4CFF00552FAC0000001E000000007F5E
          3ABFB88956FFB88A57FFB88955FFB58550FFB4834CFFB6834CFFC48450FF508A
          4FFF00995BFF00BB86FF77E0C6FF00BB86FF00995CFF00552FAC00000033BC88
          4EFFFFDFAAFFBC8D58FFB5844FFFFFF9EDFFFEF2E4FFFFF2E4FFFFF7ECFF0086
          41FF00C08BFF00BC83FFFFFFFFFF00BC83FF00C18DFF008C4CFF8D8D90FFC5CA
          D1FF57616EFFC6975EFFB4824BFFFEF2E4FFF8E7D4FFFBE7D5FFFFEDDEFF0082
          3CFF72E6CCFFFFFFFFFFFFFFFFFFFFFFFFFF77E7CEFF008B49FF00000000BF89
          4DFFAB7A3EFFCB9F65FFB2814BFFFCF1E3FFF6E3CEFFF8E3CEFFFFE8D6FF0081
          3AFF00CA95FF00C88FFFFFFFFFFF00C990FF00CD99FF008C4BFF00000033BD87
          4CFFFFDFA4FFD0A568FFB2804AFFFDF1E3FFF4E0C7FFF6DFC5FFFFE2CAFF63AB
          7BFF009C5BFF00D29BFF73EED4FF00D49EFF00A366FF00522D948E8D8FFFC5C9
          D1FF565F6DFFD9AE6FFFB2804AFFFCF1E4FFF3DBC1FFFEF6EEFFFFFFFFFFFFFF
          FFFF6EC19CFF008038FF00813BFF008541FF54894EFF0000000000000000BF88
          4DFFA67B3AFFDEB576FFB17F49FFFDF2E4FFF2D9BBFFFFFFFFFFBBBBBDFFC3C0
          C1FF91888CFFFFFFFFFFFFE0C6FFFFF8EDFFC68450FF0000000000000033BD87
          4CFFFFE09EFFE3BB7AFFB17E49FFFDF3E7FFF2D6B6FFFFFFFFFF818384FFBEBE
          BFFFBCBCBEFFFFFFFFFFF6D7B8FFFFF5E9FFB6834DFF000000008E8D90FFC5C9
          D1FF555D6CFFEBC47FFFB17E49FFFEF5EAFFF1D3B3FFFEF4EBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDF4EAFFF1D3B3FFFFF6EAFFB4834CFF0000000000000000BF88
          4DFFA57C35FFECC581FFB07E49FFFEF8EEFFF0D2B1FFF1D3B1FFF3D5B3FFF2D4
          B2FFF2D4B1FFF0D2B0FFF0D2B1FFFFF9EFFFB4824CFF0000000000000033BD87
          4CFFF9D08BFFEBC47FFFB07D48FFFFFAF2FFEFD0ADFFF1D4B2FFAB773EFFCFA6
          7AFFCDA477FFF0D2B0FFEFD0ACFFFFFBF3FFB4824CFF000000008D8D90FFC3C8
          CFFF525A67FFEBC37BFFB07D46FFFFFDF8FFEECCA6FFEFCEA9FFF0D1ACFFF0D1
          ACFFF0CFABFFEECDA8FFEECCA6FFFFFEF9FFB4834CFF0000000000000000BC86
          4BFFFFF2D4FFFEF1D4FFB27F49FFFFFFFFFFFFFEFAFFFFFEFAFFFFFFFBFFFFFF
          FBFFFFFEFAFFFFFEFAFFFFFEFAFFFFFFFFFFB5844FFF0000000000000000805F
          3AAFB78752FFB68652FFB78752FFB5844EFFB4824CFFB4824BFFB4824BFFB482
          4BFFB4824BFFB4824BFFB4824CFFB5844FFF7F5F3BB000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000001E0000003300000033000000330000001E00000000000000000000
          0023000000330000003300000033000000330000003300000033000000330000
          0033101B69A92132AEFF2232ADFF2233ADFF151E69AC0000001E000000007F5E
          3ABFB88956FFB88A57FFB88955FFB58550FFB4834CFFB6844CFFC18B48FF6357
          85FF2139C4FF385FFBFF3961FEFF3960FAFF283EC1FF141E69AC00000033BC88
          4EFFFFDFAAFFBC8D58FFB5844FFFFFF9EDFFFEF2E4FFFFF3E3FFFFFFE2FF071E
          AFFF3E63FDFF3D61FBFF3A5EF9FF3D61FBFF4366FDFF1E30ADFF8D8D90FFC5CA
          D1FF57616EFFC6975EFFB4824BFFFEF2E4FFF8E7D4FFFAE8D3FFFFF5D5FF041A
          AAFFA8BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFACBDFFFF1B2DACFF00000000BF89
          4DFFAB7A3EFFCB9F65FFB2814BFFFCF1E3FFF6E3CEFFF8E4CDFFFFF0CEFF0118
          A9FF5876FFFF5876FFFF5473FEFF5877FFFF5E7BFFFF1D2EADFF00000033BD87
          4CFFFFDFA4FFD0A568FFB2804AFFFDF1E3FFF4E0C7FFF5E0C5FFFFE8C4FF7575
          B4FF263CC4FF6B84FFFF728BFFFF6D87FFFF324ACBFF111C67948E8D8FFFC5C9
          D1FF565F6DFFD9AE6FFFB2804AFFFCF1E4FFF3DBC1FFFEF6EEFFFFFFFFFFFFFF
          FFFF808BD5FF0419A7FF061BA9FF071EAFFF655883FF0000000000000000BF88
          4DFFA67B3AFFDEB576FFB17F49FFFDF2E4FFF2D9BBFFFFFFFFFFBBBCBCFFC2C2
          BFFF8E8D86FFFFFFFFFFFFE9BDFFFFFFE4FFC28C47FF0000000000000033BD87
          4CFFFFE09EFFE3BB7AFFB17E49FFFDF3E7FFF2D6B6FFFFFFFFFF818384FFBEBE
          BEFFBCBDBDFFFFFFFFFFF5D9B6FFFFF6E8FFB6844BFF000000008E8D90FFC5C9
          D1FF555D6CFFEBC47FFFB17E49FFFEF5EAFFF1D3B3FFFEF4EBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFDF4EAFFF1D3B3FFFFF6EAFFB4834CFF0000000000000000BF88
          4DFFA57C35FFECC581FFB07E49FFFEF8EEFFF0D2B1FFF1D3B1FFF3D5B3FFF2D4
          B2FFF2D4B1FFF0D2B0FFF0D2B1FFFFF9EFFFB4824CFF0000000000000033BD87
          4CFFF9D08BFFEBC47FFFB07D48FFFFFAF2FFEFD0ADFFF1D4B2FFAB773EFFCFA6
          7AFFCDA477FFF0D2B0FFEFD0ACFFFFFBF3FFB4824CFF000000008D8D90FFC3C8
          CFFF525A67FFEBC37BFFB07D46FFFFFDF8FFEECCA6FFEFCEA9FFF0D1ACFFF0D1
          ACFFF0CFABFFEECDA8FFEECCA6FFFFFEF9FFB4834CFF0000000000000000BC86
          4BFFFFF2D4FFFEF1D4FFB27F49FFFFFFFFFFFFFEFAFFFFFEFAFFFFFFFBFFFFFF
          FBFFFFFEFAFFFFFEFAFFFFFEFAFFFFFFFFFFB5844FFF0000000000000000805F
          3AAFB78752FFB68652FFB78752FFB5844EFFB4824CFFB4824BFFB4824BFFB482
          4BFFB4824BFFB4824BFFB4824CFFB5844FFF7F5F3BB000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000002200000033000000330000
          0033000000330000003300000033000000330000003300000030000000000000
          0023000000330000003300000033000000337A560FB9B78217FFB68114FFB880
          10FFB9810FFFB87F0EFFB67E0FFFB68013FFB78218FFAE7B1BF2000000007F5E
          3ABFB88956FFB88A57FFB88956FFB78758FFB6800FFFF6CC8AFFF3C275FFF9FC
          FFFF8B8D91FFF9F9F9FFF4F8FCFFF2C174FFF6CD8BFFB78218FF00000033BC88
          4EFFFFDFAAFFBC8D58FFB58651FFFFFFFBFFB27B07FFF2CA89FFEBB65CFFF2ED
          EDFF7F7978FFF1E9E2FFEEE9E9FFEAB55BFFF3CC8BFFB68116FF8D8D90FFC5CA
          D1FF57616EFFC6975EFFB4834EFFFFFAF4FFB17904FFF2CD90FFE6AD4FFFEACF
          A9FFFFFFFFFFFDFFFFFFE8CEA7FFE6AD4EFFF3CE93FFB68115FF00000000BF89
          4DFFAB7A3EFFCB9F65FFB4834EFFFFF9F3FFB07803FFF3D29BFFE4A641FFE3A4
          3AFFE3A133FFE2A132FFE3A43AFFE3A641FFF4D49EFFB68114FF00000033BD87
          4CFFFFDFA4FFD0A568FFB3824DFFFFF9F3FFB07703FFF5D7A9FFE19E2FFFE7CA
          A1FFEBE2E0FFEBE2E0FFE7CAA1FFE19E2FFFF6D9ADFFB68014FF8E8D8FFFC5C9
          D1FF565F6DFFD9AE6FFFB3814CFFFFF9F4FFB07701FFF7E0B9FFDD9419FFEEE9
          E9FFEFE6DEFFEFE6DEFFEEE9E9FFDD9419FFF8E2BCFFB68012FF00000000BF88
          4DFFA67B3AFFDEB576FFB2814CFFFFFAF4FFB07600FFFAE9CEFFDA8802FFF0EE
          ECFFB2ADA7FFB2ADA7FFF0EEECFFDA8802FFFBEAD1FFB67F12FF00000033BD87
          4CFFFFE09EFFE3BB7AFFB1804BFFFFFAF5FFB07600FFFDE8C8FFFBE5C2FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBE5C2FFFFEBCDFFB78114FF8E8D90FFC5C9
          D1FF555D6CFFEBC47FFFB17F4AFFFFFAF3FFCA9C48FFB07700FFB07700FFB075
          00FFB07400FFB07400FFB07400FFB17701FFB57E0CFFA87816E700000000BF88
          4DFFA57C35FFECC581FFB07E49FFFFFAF2FFF3D8BBFFF5DCC2FFF8DFC6FFF8DE
          C5FFF6DDC4FFF5DBC1FFF5DABFFFFFFEFCFFB58556FF0000000000000033BD87
          4CFFF9D08BFFEBC47FFFB07D48FFFFFBF3FFF0D1AEFFF2D5B4FFAC7942FFD0A8
          7DFFCEA67BFFF1D4B3FFF0D2AFFFFFFCF6FFB4834EFF000000008D8D90FFC3C8
          CFFF525A67FFEBC37BFFB07D46FFFFFDF8FFEECCA6FFEFCEA9FFF0D1ACFFF0D1
          ACFFF0CFABFFEECDA8FFEECCA6FFFFFEF9FFB4834CFF0000000000000000BC86
          4BFFFFF2D4FFFEF1D4FFB27F49FFFFFFFFFFFFFEFAFFFFFEFAFFFFFFFBFFFFFF
          FBFFFFFEFAFFFFFEFAFFFFFEFAFFFFFFFFFFB5844FFF0000000000000000805F
          3AAFB78752FFB68652FFB78752FFB5844EFFB4824CFFB4824BFFB4824BFFB482
          4BFFB4824BFFB4824BFFB4824CFFB5844FFF7F5F3BB000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000003300000033000000330000
          0000000000000000000000000000000000000000000000000000000000000000
          0023000000330000003300000033000000334F6B81FF496685FF4F90DAFF0000
          0033000000330000003300000033000000330000002300000000000000007F5E
          3ABFB88956FFB88A57FFBA8954FFC0874AFF5383A5FF7FA7B7FF8ED5FFFF2C68
          A0FFCC8B46FFBC874CFFB5844DFFB58550FF7E5F3BC00000000000000033BC88
          4EFFFFDFAAFFBC8D58FFB7854EFFFFFCE9FF37ACF6FF88E5FFFF7FD4FFFF109A
          FFFF2A659EFFFFFDE4FFFFF7E5FFFFFAEDFFB58550FF000000008D8D90FFC5CA
          D1FF57616EFFC6975EFFB4824BFFFFF4E3FFFFEDD1FF1D70C6FF3DC4FFFF2AAA
          FFFF1399FFFF265F96FFFFF3D6FFFFF7E5FFB5844DFF0000000000000000BF89
          4DFFAB7A3EFFCB9F65FFB3814BFFFEF1E3FFFDE6CEFFFFEBCBFF2272C5FF42C6
          FFFF2AAAFFFF0F98FFFF1F5E9AFFFFFDE8FFB9864EFF0000000000000033BD87
          4CFFFFDFA4FFD0A568FFB2804AFFFDF1E3FFF6E1C7FFFCE2C4FFFFE8C1FF2271
          C3FF40C6FFFF20AAFFFF7FADD5FF757371FFBF8B4CFF000000008E8D8FFFC5C9
          D1FF565F6DFFD9AE6FFFB2804AFFFCF1E4FFF3DBC1FFFFF7EEFFFFFFFFFFFFFF
          FFFF2074C9FFAFDBF1FF91887FFFBEBEB9FF737A72FF0000003300000000BF88
          4DFFA67B3AFFDEB576FFB17F49FFFDF2E4FFF2D9BBFFFFFFFFFFBBBCBCFFC5C2
          C0FF938E89FF847D77FFE9E7E3FF888B82FFB979B7FF9769CBFF00000033BD87
          4CFFFFE09EFFE3BB7AFFB17E49FFFDF3E7FFF2D6B6FFFFFFFFFF818384FFBEBF
          BFFFBFBFBFFFFFFFFFFF797C77FFDFAFE0FFCA95C7FFAE7CCFFF8E8D90FFC5C9
          D1FF555D6CFFEBC47FFFB17E49FFFEF5EAFFF1D3B3FFFEF4EBFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFF7EDFFF9DCB4FFB980D7FFBC87DCFF0000000000000000BF88
          4DFFA57C35FFECC581FFB07E49FFFEF8EEFFF0D2B1FFF1D3B1FFF3D5B3FFF2D4
          B2FFF2D4B1FFF1D3B1FFF2D5B1FFFFFDECFFB58543FF0000000000000033BD87
          4CFFF9D08BFFEBC47FFFB07D48FFFFFAF2FFEFD0ADFFF1D4B2FFAB773EFFCFA6
          7AFFCDA477FFF0D2B0FFEFD1ACFFFFFCF3FFB4834AFF000000008D8D90FFC3C8
          CFFF525A67FFEBC37BFFB07D46FFFFFDF8FFEECCA6FFEFCEA9FFF0D1ACFFF0D1
          ACFFF0CFABFFEECDA8FFEECCA6FFFFFEF9FFB4834CFF0000000000000000BC86
          4BFFFFF2D4FFFEF1D4FFB27F49FFFFFFFFFFFFFEFAFFFFFEFAFFFFFFFBFFFFFF
          FBFFFFFEFAFFFFFEFAFFFFFEFAFFFFFFFFFFB5844FFF0000000000000000805F
          3AAFB78752FFB68652FFB78752FFB5844EFFB4824CFFB4824BFFB4824BFFB482
          4BFFB4824BFFB4824BFFB4824CFFB5844FFF7F5F3BB000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000033000000330000000A000000000000
          0023000000330000003300000033000000330000003300000033000000330000
          0033000000330000003300000033396EA1FF3B6E9EFF0C17215D000000007F5E
          3ABFB88956FFB88A57FFB88955FFB68550FFB6854EFFB98751FFBD8B54FFBF8C
          55FFC08D55FFCA8F4FFF2C6CA9FF29B2FFFF44C8FFFF3A83CCFF00000033BC88
          4EFFFFDFAAFFBC8D58FFB5844FFFFFFBEEFFFFF8EAFFD4CDC5FF74777CFF5E63
          6DFF60646DFF68686BFF7F736CFF3AC6FFFF55DBFFFF3880CBFF8D8D90FFC5CA
          D1FF57616EFFC6975EFFB4834CFFFFF7E8FFD1C5B9FF696869FFE4C58FFFFFED
          A7FFFFF5B1FFE8D5A3FF76716DFF9D9088FF2A7FD7FF0000000000000000BF89
          4DFFAB7A3EFFCB9F65FFB4824CFFFFF8E9FF78777AFFE3BF86FFFFE6A5FFFFE7
          A6FFFFEFB3FFFFF9BBFFE8D6A3FF78787BFFC88C4BFF0000000000000033BD87
          4CFFFFDFA4FFD0A568FFB4824BFFFFF9EAFF6A6D73FFFFE19EFFFFEFCAFFFFE7
          B3FFFFE9ABFFFFEFB2FFFFF4B0FF71757DFFBF8C53FF000000008E8D8FFFC5C9
          D1FF565F6DFFD9AE6FFFB4814BFFFFF9EBFF707278FFFFDD98FFFFF7E4FFFFED
          C8FFFFE7B2FFFFE6A5FFFFEBA5FF757982FFBD8B54FF0000000000000000BF88
          4DFFA67B3AFFDEB576FFB2804AFFFFF9EAFF868585FFE7BC7DFFFFF5DCFFFFF7
          E4FFFFEECAFFFFE5A4FFE8C993FF8B8E93FFBB8952FF0000000000000033BD87
          4CFFFFE09EFFE3BB7AFFB17F49FFFFF7EAFFD3C0ACFF828181FFE8BC7EFFFFDC
          97FFFFDF9CFFE8C48BFF838284FFDED7D0FFB88750FF000000008E8D90FFC5C9
          D1FF555D6CFFEBC47FFFB17E49FFFFF6EBFFF7D9B9FFD9D1C9FF92959BFF8184
          8BFF80848BFF8F8E8FFFD4C0AAFFFFFBEFFFB5844DFF0000000000000000BF88
          4DFFA57C35FFECC581FFB07E49FFFFF8EEFFF2D4B2FFF5D8B6FFF9DCBBFFFADD
          BCFFF9DCBBFFF7D9B8FFF4D6B4FFFFFAF0FFB4834CFF0000000000000033BD87
          4CFFF9D08BFFEBC47FFFB07D48FFFFFBF2FFEFD1ADFFF1D5B2FFAC7940FFD0A8
          7BFFCEA679FFF1D4B1FFEFD1ADFFFFFBF3FFB4824CFF000000008D8D90FFC3C8
          CFFF525A67FFEBC37BFFB07D46FFFFFDF8FFEECCA6FFEFCEA9FFF0D1ACFFF0D1
          ACFFF0CFABFFEECDA8FFEECCA6FFFFFEF9FFB4834CFF0000000000000000BC86
          4BFFFFF2D4FFFEF1D4FFB27F49FFFFFFFFFFFFFEFAFFFFFEFAFFFFFFFBFFFFFF
          FBFFFFFEFAFFFFFEFAFFFFFEFAFFFFFFFFFFB5844FFF0000000000000000805F
          3AAFB78752FFB68652FFB78752FFB5844EFFB4824CFFB4824BFFB4824BFFB482
          4BFFB4824BFFB4824BFFB4824CFFB5844FFF7F5F3BB000000000}
      end>
  end
  object dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 832
    Top = 8
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object ACBrEnterTab_1: TACBrEnterTab
    EnterAsTab = True
    Left = 768
    Top = 8
  end
  object frxReport_1: TfrxReport
    Version = '6.2.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43193.605400104170000000
    ReportOptions.LastChange = 43193.605400104170000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 864
    Top = 56
    Datasets = <>
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
    end
  end
  object frxDesigner_1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 832
    Top = 56
  end
  object frxChartObject_1: TfrxChartObject
    Left = 800
    Top = 56
  end
  object clientSQL: TRESTDWClientSQL
    Active = False
    Filtered = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    MasterCascadeDelete = True
    Datapacks = -1
    DataCache = False
    Params = <>
    CacheUpdateRecords = True
    AutoCommitData = False
    AutoRefreshAfterCommit = False
    ActionCursor = crSQLWait
    ReflectChanges = True
    Left = 928
    Top = 56
  end
  object storedProc: TRESTDWStoredProc
    Params = <>
    Left = 896
    Top = 56
  end
end
