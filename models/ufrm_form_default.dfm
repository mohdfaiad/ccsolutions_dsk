object frm_form_default: Tfrm_form_default
  Left = 0
  Top = 0
  Caption = 'Form Default'
  ClientHeight = 601
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
    Height = 546
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = cxTabSheet_2
    Properties.CustomButtons.Buttons = <>
    Properties.HotImages = cxImageList_1
    Properties.Images = cxImageList_1
    ClientRectBottom = 540
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
        Height = 506
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
          Navigator.Buttons.Filter.ImageIndex = 12
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
        Height = 506
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = cxTabSheet_3
        Properties.CustomButtons.Buttons = <>
        Properties.HotImages = cxImageList_1
        Properties.Images = cxImageList_1
        ClientRectBottom = 500
        ClientRectLeft = 2
        ClientRectRight = 988
        ClientRectTop = 28
        object cxTabSheet_3: TcxTabSheet
          Caption = 'Informa'#231#245'es'
          object dxLayoutControl_1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 472
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object dbedt_id: TcxDBTextEdit
              Left = 59
              Top = 38
              DataBinding.DataSource = ds
              Enabled = False
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object dbedt_dt_registration: TcxDBDateEdit
              Left = 232
              Top = 38
              DataBinding.DataSource = ds
              Enabled = False
              Style.HotTrack = False
              TabOrder = 1
              Width = 130
            end
            object dxLayoutControl_1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup1: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Registro'
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
    Left = 648
    Top = 48
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
      DockedLeft = 260
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
      DockedLeft = 281
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
      DockedLeft = 430
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
      DockedLeft = 576
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
      ImageIndex = 10
    end
    object dxBarSubItem_print: TdxBarSubItem
      Caption = 'Imprimir Dados'
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000030000000C000000120000001400000014000000150000
        0015000000140000000D00000003000000000000000000000000000000000000
        00000000000000000009896256C2BD8A78FFBE8A78FFBD8A78FFBD8978FFBD89
        78FFBE8978FF876356C30000000B000000000000000000000000000000030000
        000E0000001500000021C08D7CFFF6EEE9FFF5EDE9FFF5EDE9FFF5ECE8FFF4EC
        E8FFF5ECE7FFBF8D7BFF00000026000000180000000F000000040000000C7B50
        42C5A76E5BFF9F6755FFC2917FFFF7F0ECFFE2B47DFFE2B37AFFE1B077FFE0AE
        72FFF6EEEAFFC2907FFF845545FF895847FF613E32C70000000E00000011BB7E
        6BFFECD9CCFFE3CEBEFFC59483FFF9F2F0FFE4B984FFE3B781FFE3B47CFFE0B1
        76FFF7F0EDFFC59483FFE0CBBCFFEBD8CBFFB67763FF0000001400000010BE85
        71FFF1E5DAFFECDBD0FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        35FF7A4835FF7A4835FFEBDBCFFFF1E2D8FFB97C69FF000000130000000EC28B
        78FFF5EEE7FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5DEFFF2E7DDFFF2E7
        DDFFF2E7DEFFF2E7DDFFF2E5DEFFF5EDE6FFBC826EFF000000120000000CC793
        7FFFFAF4F1FFCDBEB8FF6F5448FF614337FF614035FF5F3F34FF5E3F33FF5D3D
        32FF5D3D34FF6A4C44FFCABCB6FFF9F5F1FFC18875FF000000100000000ACC99
        86FFFDFAFAFF7D6054FF745043FF744F43FF744E43FF734E43FF734E42FF724D
        42FF724C41FF724C40FF73584DFFFDFAFAFFC58F7CFF0000000E00000008CF9F
        8DFFFFFFFFFF7A5A4CFF8E695AFFF9F4F1FFF0E6E0FFF0E5DFFFEFE5DEFFEFE5
        DEFFF6EFEBFF866253FF704F43FFFFFFFFFFCA9683FF0000000B00000005BE95
        84E9F5ECE8FF866656FF977262FFFAF6F4FFF2E8E3FFF1E8E1FFF1E7E2FFF1E7
        E1FFF8F2EEFF8E6A5BFF7A5B4CFFF5EAE6FFBA8E7DEA00000008000000023429
        2545A78375CC947262FFA07B6AFFFCF9F8FFF3EBE6FFF4EAE5FFF2EAE5FFF3EA
        E3FFF9F5F3FF977263FF876658FFA68072CE3428234800000003000000000000
        0001000000030000000AC89B89FFFDFBFAFFF5EDE8FFF4EDE8FFF5EDE7FFF5EC
        E7FFFBF7F6FFC59685FF00000011000000040000000200000000000000000000
        00000000000000000005CA9E8DFFFEFCFCFFF7F0ECFFF6EFEBFFF7EFEBFFF5EF
        EAFFFCFAF8FFC89A89FF00000009000000000000000000000000000000000000
        00000000000000000003CDA291FFFEFEFDFFFEFDFDFFFEFDFCFFFEFCFCFFFEFC
        FBFFFDFBFAFFCB9F8DFF00000007000000000000000000000000000000000000
        000000000000000000019A796DBFCFA493FFCEA493FFCEA493FFCEA492FFCDA3
        91FFCDA391FF98786BC100000004000000000000000000000000}
      ItemLinks = <>
    end
    object dxBarSubItem_1: TdxBarSubItem
      Caption = 'Importar Dados'
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        20000000000000040000000000000000000000000000000000003131315CD1D1
        D1FCD4D4D4FED5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5
        D5FFD4D5D4FFD3D4D3FED1D1D1FC3333335D000000000000000047474774DEDE
        DEFDE0E0E0FEE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFE1E1E1FFDFE1
        E0FFBCD6BDFF9AD49DFEDCDEDCFD49494975000000010000000047474774DFDF
        DFFDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FFE1E2E2FFDCDFDCFF8ED1
        92FF41D249FF55D35DFF78CD7DFE478B4ACA2056249E09160A4147474774E0E0
        E0FDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E3E3FFC5DAC6FF61D068FF40D7
        49FF3FD748FF3FD748FF3FD648FE3FD648FE3ED346FD1445177348484874E0E0
        E0FDE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE2E3E2FF66D76DFF45DA4FFF43D9
        4DFF43DA4CFF43DA4CFF43DA4CFF43DA4CFF41D64BFD1647197448484874E1E1
        E1FDE5E5E5FFE5E5E5FFE5E5E5FFE4E5E4FFE4E4E4FFDDE4DEFF8DDF92FF4ADC
        54FF48DC52FF48DC52FF48DA52FE47DA51FE45D64FFC17471A7348484874E2E2
        E2FDE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E6E5FFE5E5E5FFE4E5E4FFBCE3
        BEFF60DF68FF7BE082FFBBE2BDFE537255970A1C0B400207031748484874E3E3
        E3FDE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE5E6
        E5FFDCE5DCFFBFE4C1FFE2E3E2FD4A4B4B75000000010000000049494974E3E3
        E3FDE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE6E7
        E6FFE6E7E6FFE6E7E6FFE3E3E3FD4B4B4B75000000010000000049494974E4E4
        E4FDE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
        E8FFE8E8E8FFE8E8E8FFE4E4E4FD4B4B4B75000000010000000049494974E5E5
        E5FDE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
        E8FFE8E8E8FFE8E8E8FFE5E5E5FD4C4C4C75000000010000000049494974E5E5
        E5FDE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E8
        E8FFE8E8E8FFE8E8E8FFE5E5E5FD4C4C4C7500000001000000004A4A4A74E6E6
        E6FDEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFE9E9
        E9FFE6E5E2FFDDD9D1FEDDD9D2FD4948477300000000000000004A4A4A74E7E7
        E7FDEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEBEBEBFFEAEA
        E9FFD6BD8CFEC49941FD95732FCD0605021400000000000000004A4A4A74E8E8
        E8FDEAEAEAFEEAEAEAFEEAEAEAFEEAEAEAFEEAEAEAFEEAEAEAFEEAEAEAFEEAEA
        E9FED8BC85FD9F7B33CD0705021400000000000000000000000036363658E0E0
        E0F4E5E5E5F7E5E5E5F7E5E5E5F7E5E5E5F7E5E5E5F7E5E5E5F7E5E5E5F7E3E3
        E2F6AE986BCC0706021500000000000000000000000000000000}
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
      Glyph.Data = {
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
    object cxBarEditItem_1: TcxBarEditItem
      Caption = 'Relat'#243'rio'
      Category = 0
      Hint = 'Relat'#243'rio'
      Visible = ivAlways
      ShowCaption = True
      Width = 150
      PropertiesClassName = 'TcxShellComboBoxProperties'
      Properties.DropDownWidth = 350
      Properties.IncrementalSearch = True
      Properties.Root.BrowseFolder = bfCustomPath
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports'
      Properties.ViewOptions = [scvoShowFiles, scvoShowZipFilesWithFolders]
      InternalEditValue = nil
    end
    object dxBarButton_report_edit: TdxBarButton
      Action = Action_print
      Category = 0
    end
    object dxBarButton_report_preview: TdxBarButton
      Action = Action_filter
      Category = 0
    end
    object dxBarButton_import: TdxBarButton
      Action = Action_import
      Category = 0
    end
  end
  object ActionList_1: TActionList
    Images = cxImageList_1
    Left = 712
    Top = 48
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
      OnExecute = Action_saveExecute
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
      OnExecute = Action_deleteExecute
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
      ImageIndex = 11
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
  end
  object ds: TDataSource
    DataSet = qry
    Left = 616
    Top = 48
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
    Left = 552
    Top = 48
  end
  object PopupMenu_1: TPopupMenu
    Images = cxImageList_1
    Left = 488
    Top = 48
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
    FormatVersion = 1
    DesignInfo = 3146408
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
      end>
  end
  object dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList
    Left = 520
    Top = 48
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object qry: TFDQuery
    CachedUpdates = True
    SchemaAdapter = FDSchemaAdapter_1
    Left = 584
    Top = 48
  end
  object ACBrEnterTab_1: TACBrEnterTab
    EnterAsTab = True
    Left = 456
    Top = 48
  end
  object QExport4Dialog_1: TQExport4Dialog
    DataSet = qry
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
    RTFOptions.CaptionStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.CaptionStyle.Font.Color = clBlack
    RTFOptions.CaptionStyle.Font.Height = -13
    RTFOptions.CaptionStyle.Font.Name = 'Arial'
    RTFOptions.CaptionStyle.Font.Style = [fsBold]
    RTFOptions.CaptionStyle.AllowHighlight = True
    RTFOptions.CaptionStyle.Alignment = talCenter
    RTFOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.DataStyle.Font.Color = clBlack
    RTFOptions.DataStyle.Font.Height = -13
    RTFOptions.DataStyle.Font.Name = 'Arial'
    RTFOptions.DataStyle.Font.Style = []
    RTFOptions.DataStyle.AllowHighlight = True
    RTFOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.FooterStyle.Font.Color = clBlack
    RTFOptions.FooterStyle.Font.Height = -13
    RTFOptions.FooterStyle.Font.Name = 'Arial'
    RTFOptions.FooterStyle.Font.Style = []
    RTFOptions.FooterStyle.AllowHighlight = True
    RTFOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    RTFOptions.HeaderStyle.Font.Color = clBlack
    RTFOptions.HeaderStyle.Font.Height = -13
    RTFOptions.HeaderStyle.Font.Name = 'Arial'
    RTFOptions.HeaderStyle.Font.Style = []
    RTFOptions.HeaderStyle.AllowHighlight = True
    RTFOptions.StripStyles = <>
    HTMLPageOptions.TextFont.Charset = DEFAULT_CHARSET
    HTMLPageOptions.TextFont.Color = clWhite
    HTMLPageOptions.TextFont.Height = -11
    HTMLPageOptions.TextFont.Name = 'Arial'
    HTMLPageOptions.TextFont.Style = []
    CSVOptions.Comma = ','
    PDFOptions.PageOptions.MarginLeft = 1.170000000000000000
    PDFOptions.PageOptions.MarginRight = 0.570000000000000000
    PDFOptions.PageOptions.MarginTop = 0.780000000000000000
    PDFOptions.PageOptions.MarginBottom = 0.780000000000000000
    PDFOptions.HeaderFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.HeaderFont.UserFont.Color = clWindowText
    PDFOptions.HeaderFont.UserFont.Height = -13
    PDFOptions.HeaderFont.UserFont.Name = 'Arial'
    PDFOptions.HeaderFont.UserFont.Style = []
    PDFOptions.HeaderFont.Charset = ANSI_CHARSET
    PDFOptions.CaptionFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.CaptionFont.UserFont.Color = clWindowText
    PDFOptions.CaptionFont.UserFont.Height = -13
    PDFOptions.CaptionFont.UserFont.Name = 'Arial'
    PDFOptions.CaptionFont.UserFont.Style = []
    PDFOptions.CaptionFont.Charset = ANSI_CHARSET
    PDFOptions.DataFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.DataFont.UserFont.Color = clWindowText
    PDFOptions.DataFont.UserFont.Height = -13
    PDFOptions.DataFont.UserFont.Name = 'Arial'
    PDFOptions.DataFont.UserFont.Style = []
    PDFOptions.DataFont.Charset = ANSI_CHARSET
    PDFOptions.FooterFont.UserFont.Charset = DEFAULT_CHARSET
    PDFOptions.FooterFont.UserFont.Color = clWindowText
    PDFOptions.FooterFont.UserFont.Height = -13
    PDFOptions.FooterFont.UserFont.Name = 'Arial'
    PDFOptions.FooterFont.UserFont.Style = []
    PDFOptions.FooterFont.Charset = ANSI_CHARSET
    XLSOptions.PageFooter = 'Page &P of &N'
    XLSOptions.SheetTitle = 'Sheet 1'
    XLSOptions.CaptionFormat.Font.Style = [xfsBold]
    XLSOptions.HyperlinkFormat.Font.Color = clrBlue
    XLSOptions.HyperlinkFormat.Font.Underline = fulSingle
    XLSOptions.NoteFormat.Alignment.Horizontal = halLeft
    XLSOptions.NoteFormat.Alignment.Vertical = valTop
    XLSOptions.NoteFormat.Font.Size = 8
    XLSOptions.NoteFormat.Font.Style = [xfsBold]
    XLSOptions.NoteFormat.Font.Name = 'Tahoma'
    XLSOptions.FieldFormats = <>
    XLSOptions.StripStyles = <>
    XLSOptions.Hyperlinks = <>
    XLSOptions.Notes = <>
    XLSOptions.Charts = <>
    XLSOptions.Pictures = <>
    XLSOptions.Images = <>
    XLSOptions.Cells = <>
    XLSOptions.MergedCells = <>
    ODSOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.HeaderStyle.Font.Color = clBlack
    ODSOptions.HeaderStyle.Font.Height = -13
    ODSOptions.HeaderStyle.Font.Name = 'Arial'
    ODSOptions.HeaderStyle.Font.Style = []
    ODSOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.FooterStyle.Font.Color = clBlack
    ODSOptions.FooterStyle.Font.Height = -13
    ODSOptions.FooterStyle.Font.Name = 'Arial'
    ODSOptions.FooterStyle.Font.Style = []
    ODSOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.CaptionRowStyle.Font.Color = clBlack
    ODSOptions.CaptionRowStyle.Font.Height = -13
    ODSOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODSOptions.CaptionRowStyle.Font.Style = []
    ODSOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODSOptions.DataStyle.Font.Color = clBlack
    ODSOptions.DataStyle.Font.Height = -13
    ODSOptions.DataStyle.Font.Name = 'Arial'
    ODSOptions.DataStyle.Font.Style = []
    ODSOptions.StripStylesList = <>
    ODTOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.HeaderStyle.Font.Color = clBlack
    ODTOptions.HeaderStyle.Font.Height = -13
    ODTOptions.HeaderStyle.Font.Name = 'Arial'
    ODTOptions.HeaderStyle.Font.Style = []
    ODTOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.FooterStyle.Font.Color = clBlack
    ODTOptions.FooterStyle.Font.Height = -13
    ODTOptions.FooterStyle.Font.Name = 'Arial'
    ODTOptions.FooterStyle.Font.Style = []
    ODTOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.CaptionRowStyle.Font.Color = clBlack
    ODTOptions.CaptionRowStyle.Font.Height = -13
    ODTOptions.CaptionRowStyle.Font.Name = 'Arial'
    ODTOptions.CaptionRowStyle.Font.Style = []
    ODTOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    ODTOptions.DataStyle.Font.Color = clBlack
    ODTOptions.DataStyle.Font.Height = -13
    ODTOptions.DataStyle.Font.Name = 'Arial'
    ODTOptions.DataStyle.Font.Style = []
    ODTOptions.StripStylesList = <>
    ODTOptions.Border.BorderStyle = bsODFSolid
    XlsxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.HeaderStyle.Font.Color = clBlack
    XlsxOptions.HeaderStyle.Font.Height = -15
    XlsxOptions.HeaderStyle.Font.Name = 'Calibri'
    XlsxOptions.HeaderStyle.Font.Style = []
    XlsxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.CaptionRowStyle.Font.Color = clBlack
    XlsxOptions.CaptionRowStyle.Font.Height = -15
    XlsxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    XlsxOptions.CaptionRowStyle.Font.Style = []
    XlsxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.DataStyle.Font.Color = clBlack
    XlsxOptions.DataStyle.Font.Height = -15
    XlsxOptions.DataStyle.Font.Name = 'Calibri'
    XlsxOptions.DataStyle.Font.Style = []
    XlsxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    XlsxOptions.FooterStyle.Font.Color = clBlack
    XlsxOptions.FooterStyle.Font.Height = -15
    XlsxOptions.FooterStyle.Font.Name = 'Calibri'
    XlsxOptions.FooterStyle.Font.Style = []
    XlsxOptions.StripStylesList = <>
    DocxOptions.HeaderStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.HeaderStyle.Font.Color = clBlack
    DocxOptions.HeaderStyle.Font.Height = -15
    DocxOptions.HeaderStyle.Font.Name = 'Calibri'
    DocxOptions.HeaderStyle.Font.Style = []
    DocxOptions.CaptionRowStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.CaptionRowStyle.Font.Color = clBlack
    DocxOptions.CaptionRowStyle.Font.Height = -15
    DocxOptions.CaptionRowStyle.Font.Name = 'Calibri'
    DocxOptions.CaptionRowStyle.Font.Style = []
    DocxOptions.DataStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.DataStyle.Font.Color = clBlack
    DocxOptions.DataStyle.Font.Height = -15
    DocxOptions.DataStyle.Font.Name = 'Calibri'
    DocxOptions.DataStyle.Font.Style = []
    DocxOptions.StripStylesList = <>
    DocxOptions.FooterStyle.Font.Charset = DEFAULT_CHARSET
    DocxOptions.FooterStyle.Font.Color = clBlack
    DocxOptions.FooterStyle.Font.Height = -15
    DocxOptions.FooterStyle.Font.Name = 'Calibri'
    DocxOptions.FooterStyle.Font.Style = []
    AccessOptions.TableName = 'EXPORT_TABLE'
    Left = 424
    Top = 48
  end
  object QImport3Wizard_1: TQImport3Wizard
    DataSet = qry
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue.Strings = (
      'True')
    Formats.BooleanFalse.Strings = (
      'False')
    Formats.NullValues.Strings = (
      'Null')
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    Left = 392
    Top = 48
  end
  object FDSchemaAdapter_1: TFDSchemaAdapter
    Left = 360
    Top = 48
  end
  object frxReport_1: TfrxReport
    Version = '6.0.4'
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
    Left = 296
    Top = 48
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object ACBrCEP_1: TACBrCEP
    ProxyPort = '8080'
    WebService = wsRepublicaVirtual
    PesquisarIBGE = True
    Left = 328
    Top = 48
  end
end
