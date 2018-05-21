object frm_default: Tfrm_default
  Left = 0
  Top = 0
  Caption = 'Formul'#225'rio Default'
  ClientHeight = 661
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  ShowHint = True
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object bardck_1: TdxBarDockControl
    Left = 0
    Top = 0
    Width = 1008
    Height = 55
    Align = dalTop
    BarManager = barman_1
  end
  object pgctrl_1: TcxPageControl
    Left = 0
    Top = 55
    Width = 1008
    Height = 571
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tbsht_1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 565
    ClientRectLeft = 2
    ClientRectRight = 1002
    ClientRectTop = 27
    object tbsht_1: TcxTabSheet
      Caption = 'Registros'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pgctrl_2: TcxPageControl
        Left = 0
        Top = 0
        Width = 1000
        Height = 538
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tbsht_3
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 532
        ClientRectLeft = 2
        ClientRectRight = 994
        ClientRectTop = 27
        object tbsht_3: TcxTabSheet
          Caption = 'Registros'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object grid_1: TcxGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 986
            Height = 499
            Align = alClient
            Images = imglist_1
            PopupMenu = popmenu_1
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.ConfirmDelete = True
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.Images = imglist_1
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
              Navigator.Buttons.Filter.ImageIndex = 11
              Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
              Navigator.InfoPanel.Visible = True
              Navigator.Visible = True
              FindPanel.InfoText = 'Valor para pequisa...'
              DataController.DataSource = ds
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Images = imglist_1
              NewItemRow.InfoText = 'Adicione uma nova linha clicando aqui...'
              OptionsView.NoDataToDisplayInfoText = 'Registro(s) n'#227'o encontrado(s).'
              OptionsView.Indicator = True
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
    end
    object tbsht_2: TcxTabSheet
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pgctrl_3: TcxPageControl
        Left = 0
        Top = 0
        Width = 1000
        Height = 538
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = tbsht_5
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 532
        ClientRectLeft = 2
        ClientRectRight = 994
        ClientRectTop = 27
        object tbsht_5: TcxTabSheet
          Caption = 'Informa'#231#245'es'
          ImageIndex = 0
          DesignSize = (
            992
            505)
          object cxGroupBox1: TcxGroupBox
            Left = 3
            Top = 3
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 0
            Height = 46
            Width = 986
            object cxLabel1: TcxLabel
              Left = 3
              Top = 3
              Caption = 'C'#243'd. ID'
              Transparent = True
            end
            object edt_codid: TcxTextEdit
              Left = 3
              Top = 22
              Enabled = False
              TabOrder = 1
              Width = 125
            end
            object cxLabel2: TcxLabel
              Left = 134
              Top = 3
              Caption = 'Dt. Cad.'
              Transparent = True
            end
            object edt_dt_registration: TcxTextEdit
              Left = 134
              Top = 22
              Enabled = False
              TabOrder = 3
              Width = 125
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 3
            Top = 55
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 1
            Height = 447
            Width = 986
          end
        end
      end
    end
  end
  object stsbar_1: TdxStatusBar
    Left = 0
    Top = 626
    Width = 1008
    Height = 35
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarContainerPanelStyle'
        PanelStyle.Container = stsbar_deleted_at
        Bevel = dxpbNone
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    object stsbar_deleted_at: TdxStatusBarContainerControl
      Left = 1
      Top = 2
      Width = 972
      Height = 32
      object chkbox_1: TcxCheckBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Registro Deletados'
        Properties.Alignment = taLeftJustify
        TabOrder = 0
        Transparent = True
      end
    end
  end
  object actlist_1: TActionList
    Images = imglist_1
    Left = 880
    Top = 8
    object Action_print: TAction
      Category = 'Print'
      Caption = 'Imprimir'
      Hint = 'Imprimir Relat'#243'rio'
      ImageIndex = 12
    end
    object Action_first: TAction
      Category = 'Manager'
      Caption = 'Primeiro'
      Hint = 'Registro Primeiro'
      ImageIndex = 0
    end
    object Action_prior: TAction
      Category = 'Manager'
      Caption = 'Anterior'
      Hint = 'Registro Anterior'
      ImageIndex = 1
    end
    object Action_next: TAction
      Category = 'Manager'
      Caption = 'Pr'#243'ximo'
      Hint = 'Pr'#243'ximo Registro'
      ImageIndex = 2
    end
    object Action_last: TAction
      Category = 'Manager'
      Caption = #218'ltimo'
      Hint = #218'ltimo Registro'
      ImageIndex = 3
    end
    object Action_insert: TAction
      Category = 'Manager'
      Caption = 'Inserir'
      Hint = 'Inserir Registro'
      ImageIndex = 4
      ShortCut = 16457
    end
    object Action_edit: TAction
      Category = 'Manager'
      Caption = 'Editar'
      Hint = 'Editar Registro'
      ImageIndex = 5
      ShortCut = 16453
    end
    object Action_cancel: TAction
      Category = 'Manager'
      Caption = 'Cancelar'
      Hint = 'Cancelar Altera'#231#245'es'
      ImageIndex = 7
      ShortCut = 16462
    end
    object Action_save: TAction
      Category = 'Manager'
      Caption = 'Salvar'
      Hint = 'Salvar Altera'#231#245'es'
      ImageIndex = 6
      ShortCut = 16467
    end
    object Action_delete: TAction
      Category = 'Manager'
      Caption = 'Excluir'
      Hint = 'Excluir Registro'
      ImageIndex = 8
      ShortCut = 16452
    end
    object Action_refresh: TAction
      Category = 'Manager'
      Caption = 'Atualizar'
      Hint = 'Atualizar Informa'#231#245'es'
      ImageIndex = 9
      ShortCut = 16500
    end
    object Action_close: TAction
      Category = 'Form'
      Caption = 'Fechar'
      Hint = 'Fechar Formul'#225'rio'
      ImageIndex = 10
      OnExecute = Action_closeExecute
    end
    object Action_import: TAction
      Category = 'Import and Export'
      Caption = 'Importar'
      Hint = 'Importar Registro'
      ImageIndex = 14
      OnExecute = Action_importExecute
    end
    object Action_export: TAction
      Category = 'Import and Export'
      Caption = 'Exportar'
      Hint = 'Exportar Registros'
      ImageIndex = 15
      OnExecute = Action_exportExecute
    end
    object Action_print_preview: TAction
      Category = 'Print'
      Caption = 'Visualizar'
      Hint = 'Visualizar Relat'#243'rio'
      ImageIndex = 13
    end
    object Action_deleted: TAction
      Category = 'Form'
      Caption = 'Registros Deletados'
      Hint = 'Visualizar registros deletados'
    end
  end
  object barman_1: TdxBarManager
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
    ImageOptions.Images = imglist_1
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 912
    Top = 8
    object barman_bar_other: TdxBar
      Caption = 'Outros'
      CaptionButtons = <>
      DockControl = bardck_1
      DockedDockControl = bardck_1
      DockedLeft = 336
      DockedTop = 28
      FloatLeft = 1042
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
    object barman_bar_report: TdxBar
      Caption = 'Relat'#243'rios'
      CaptionButtons = <>
      DockControl = bardck_1
      DockedDockControl = bardck_1
      DockedLeft = 0
      DockedTop = 28
      FloatLeft = 1042
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'edt_report'
        end
        item
          Visible = True
          ItemName = 'btn_print_preview'
        end
        item
          Visible = True
          ItemName = 'btn_print'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barman_bar_manager: TdxBar
      Caption = 'Ger'#234'ncia'
      CaptionButtons = <>
      DockControl = bardck_1
      DockedDockControl = bardck_1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1042
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_first'
        end
        item
          Visible = True
          ItemName = 'btn_prior'
        end
        item
          Visible = True
          ItemName = 'btn_next'
        end
        item
          Visible = True
          ItemName = 'btn_last'
        end
        item
          Visible = True
          ItemName = 'btn_insert'
        end
        item
          Visible = True
          ItemName = 'btn_edit'
        end
        item
          Visible = True
          ItemName = 'btn_cancel'
        end
        item
          Visible = True
          ItemName = 'btn_save'
        end
        item
          Visible = True
          ItemName = 'btn_delete'
        end
        item
          Visible = True
          ItemName = 'btn_refresh'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barman_bar_form: TdxBar
      Caption = 'Formul'#225'rio'
      CaptionButtons = <>
      DockControl = bardck_1
      DockedDockControl = bardck_1
      DockedLeft = 260
      DockedTop = 0
      FloatLeft = 1042
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_close'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barman_import_export: TdxBar
      Caption = 'Importar e Exportar'
      CaptionButtons = <>
      DockControl = bardck_1
      DockedDockControl = bardck_1
      DockedLeft = 260
      DockedTop = 28
      FloatLeft = 1042
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_import'
        end
        item
          Visible = True
          ItemName = 'btn_export'
        end>
      OneOnRow = False
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_first: TdxBarButton
      Action = Action_first
      Category = 0
    end
    object btn_last: TdxBarButton
      Action = Action_last
      Category = 0
    end
    object btn_next: TdxBarButton
      Action = Action_next
      Category = 0
    end
    object btn_prior: TdxBarButton
      Action = Action_prior
      Category = 0
    end
    object btn_close: TdxBarButton
      Action = Action_close
      Category = 0
    end
    object btn_insert: TdxBarButton
      Action = Action_insert
      Category = 0
    end
    object btn_edit: TdxBarButton
      Action = Action_edit
      Category = 0
    end
    object btn_cancel: TdxBarButton
      Action = Action_cancel
      Category = 0
    end
    object btn_save: TdxBarButton
      Action = Action_save
      Category = 0
    end
    object btn_delete: TdxBarButton
      Action = Action_delete
      Category = 0
    end
    object btn_refresh: TdxBarButton
      Action = Action_refresh
      Category = 0
    end
    object btn_print_preview: TdxBarButton
      Action = Action_print_preview
      Category = 0
    end
    object btn_print: TdxBarButton
      Action = Action_print
      Category = 0
    end
    object btn_import: TdxBarButton
      Action = Action_import
      Category = 0
    end
    object btn_export: TdxBarButton
      Action = Action_export
      Category = 0
    end
    object edt_report: TcxBarEditItem
      Caption = 'Relat'#243'rios'
      Category = 0
      Hint = 'Relat'#243'rios'
      Visible = ivAlways
      Width = 184
      PropertiesClassName = 'TcxShellComboBoxProperties'
      Properties.DropDownWidth = 350
    end
  end
  object popmenu_1: TPopupMenu
    Images = imglist_1
    Left = 784
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
    object Cancelar1: TMenuItem
      Action = Action_cancel
    end
    object Salvar1: TMenuItem
      Action = Action_save
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
    object N3: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Action = Action_close
    end
  end
  object acbr_enter_1: TACBrEnterTab
    Left = 752
    Top = 8
  end
  object ds: TDataSource
    OnStateChange = dsStateChange
    Left = 720
    Top = 8
  end
  object impw_1: TQImport3Wizard
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
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'dddd, d'#39' de '#39'MMMM'#39' de '#39'yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
    FieldFormats = <>
    ErrorLogFileName = 'error.log'
    AddType = qatInsert
    Left = 624
    Top = 8
  end
  object expw_1: TQExport4Dialog
    Formats.DecimalSeparator = ','
    Formats.ThousandSeparator = '.'
    Formats.DateSeparator = '/'
    Formats.TimeSeparator = ':'
    Formats.BooleanTrue = 'true'
    Formats.BooleanFalse = 'false'
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss'
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
    CSVOptions.Comma = ';'
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
    Left = 592
    Top = 8
  end
  object popmenu_2: TPopupMenu
    Images = imglist_1
    Left = 816
    Top = 8
    object Restaurar1: TMenuItem
      Caption = 'Restaurar'
      Hint = 'Restaurar Registro'
    end
  end
  object imglist_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 525136
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
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
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
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000007E4C
          69B7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF7E4C69B70000000000000000AF6A
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
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF838383FE0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
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
          00000000000000000000150F091D51392270845D37B7A97747EAA97747EA845D
          37B751392270150F091D00000000000000000000000000000000000000000000
          000000000000291D11397F5A35B0B8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF3928184F00000000000000000000000000000000000000000000
          0000150F091D7F5A35B0B8824DFF8A613ABF4A341F661610091F1610091F4A34
          1F663E2C1A56000000003827174D000000000000000000000000000000000000
          000051392270B8824DFF8A613ABF21170E2E0000000000000000000000000000
          0000000000003827174DB8824DFF3827174D0000000000000000000000000000
          0000845D37B7B8824DFF4A341F66000000000000000000000000000000000000
          00003827174DB8824DFFB8824DFFB8824DFF3827174D00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000020302043827
          174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D3827174DB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF3827174D0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000003827
          174DB8824DFFB8824DFFB8824DFF3827174D0000000000000000000000000000
          0000000000004A341F66B8824DFF845D37B70000000000000000000000000000
          0000422E1B5BB8824DFF3827174D000000000000000000000000000000000000
          000021170E2E8A613ABFB8824DFF513922700000000000000000000000000000
          00000C0805103827174D01010001563D24774A341F661610091F1610091F4A34
          1F668A613ABFB8824DFF7F5A35B0150F091D0000000000000000000000000000
          000000000000010100014F38216EB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF7F5A35B0291D1139000000000000000000000000000000000000
          00000000000000000000150F091D51392270845D37B7A97747EAA97747EA845D
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
          0000365C70785490AFBB6AB5DCEC6AB5DCEC5490AFBB365C7078000000000000
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
          0000365C70785490AFBB6AB5DCEC6AB5DCEC5490AFBB365C7078000000000000
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
          0000000000000000000000000000848484FF848484FF848484FF777777E68484
          84FF848484FF00000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000848484FF848484FF777777E6262626498484
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
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000610100546
          8EF0003D98FF003A93FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000061010044990F30055
          D6FF0061F3FF003482FF00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000061010055CB2F9005AE1FF004F
          C7FF0051CCFF003482FF003C96FF003C96FF003C96FF003C96FF000000000000
          0000000000000000000000000000000000000D77E1FD0051CCFF0043A7FF004A
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
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FF0F0000FE0F0000FC000000FC0000008000000080000000800300008003
          000080030000800300008003000000030000000300000003000080030000C7FF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000306701FF317311FF1D4904AC000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000306701FF25BF4AFF28A437FF1B570BC00000000000000000000000000000
          0000000000000000000000000000000000001E7913FF1E7913FF1E7913FF1E79
          13FF306701FF16B02CFF13AD28FF2EA13FFF227D2ADF00000000000000000000
          000000000000000000000000000000000000326500FF42F075FF36DF67FF31D3
          5BFF2DC64EFF16B02CFF0EA81DFF0A9C0EFF238E2EFF2BA956F6000000008249
          11FF824911FF824911FF824911FF824911FF326500FF42F075FF36DF67FF31D3
          5BFF2DC64EFF1CC538FF12C025FF0FAF11FF238E2EFF25A14CF5000000008A4E
          0FFFFFFAF4FFFFFAF4FFFFFAF4FF00B233FF0A8E27FF0A8E27FF0A8E27FF0A8E
          27FF306701FF17B52FFF14B22AFF2F9F3FFF1B8431DF00000000000000009253
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
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFC70000FFC30000FC010000FC0000008000000080010000800300008003
          000080030000800300008003000000030000000300000003000080030000C7FF
          0000}
      end>
  end
  object frxReport_1: TfrxReport
    Version = '6.0.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43238.498741539360000000
    ReportOptions.LastChange = 43238.498741539360000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 560
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxPDFExport_1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'Report - CCS'
    Subject = 'Report Export - CCS'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 496
    Top = 8
  end
  object frxDOCXExport_1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 528
    Top = 8
  end
  object qry: TFDQuery
    Left = 688
    Top = 8
  end
  object schadp: TFDSchemaAdapter
    Left = 656
    Top = 8
  end
end
