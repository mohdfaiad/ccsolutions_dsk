inherited frm_ticket: Tfrm_ticket
  Caption = 'Manute'#231#227'o: Tickets'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1tkt_id: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_id'
            Width = 75
          end
          object cxGrid_1DBTableView1client_cli_id: TcxGridDBColumn
            DataBinding.FieldName = 'client_cli_id'
            Width = 75
          end
          object cxGrid_1DBTableView1enterprise_ent_id: TcxGridDBColumn
            DataBinding.FieldName = 'enterprise_ent_id'
            Width = 75
          end
          object cxGrid_1DBTableView1reseller_res_id: TcxGridDBColumn
            DataBinding.FieldName = 'reseller_res_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ticket_type_tky_id: TcxGridDBColumn
            DataBinding.FieldName = 'ticket_type_tky_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ticket_category_tkc_id: TcxGridDBColumn
            DataBinding.FieldName = 'ticket_category_tkc_id'
            Width = 75
          end
          object cxGrid_1DBTableView1tkt_dt_open: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_open'
            Width = 125
          end
          object cxGrid_1DBTableView1tkt_dt_close: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_close'
            Width = 125
          end
          object cxGrid_1DBTableView1tkt_dt_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_maturity'
            Width = 125
          end
          object cxGrid_1DBTableView1tkt_status: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_status'
            Width = 50
          end
          object cxGrid_1DBTableView1tkt_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 776
      ExplicitHeight = 472
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 762
          ExplicitHeight = 432
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'tkt_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 238
              DataBinding.DataField = 'tkt_dt_registration'
              ExplicitLeft = 238
            end
            object cxDBDateEdit1: TcxDBDateEdit [2]
              Left = 238
              Top = 103
              DataBinding.DataField = 'tkt_dt_open'
              DataBinding.DataSource = ds
              Properties.Kind = ckDateTime
              Style.HotTrack = False
              TabOrder = 3
              Width = 130
            end
            object cxDBDateEdit3: TcxDBDateEdit [3]
              Left = 424
              Top = 103
              DataBinding.DataField = 'tkt_dt_maturity'
              DataBinding.DataSource = ds
              Properties.Kind = ckDateTime
              Style.HotTrack = False
              TabOrder = 4
              Width = 130
            end
            object cxDBDateEdit2: TcxDBDateEdit [4]
              Left = 604
              Top = 103
              DataBinding.DataField = 'tkt_dt_close'
              DataBinding.DataSource = ds
              Properties.Kind = ckDateTime
              Style.HotTrack = False
              TabOrder = 5
              Width = 130
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [5]
              Left = 59
              Top = 130
              DataBinding.DataField = 'client_cli_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'cli_id'
              Properties.ListColumns = <
                item
                  Caption = 'Raz'#227'o'
                  Width = 350
                  FieldName = 'cli_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'cli_id'
                end>
              Properties.ListSource = ds_client
              Style.HotTrack = False
              TabOrder = 6
              Width = 309
            end
            object cxDBLookupComboBox4: TcxDBLookupComboBox [6]
              Left = 59
              Top = 157
              DataBinding.DataField = 'ticket_type_tky_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'tky_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  FieldName = 'tky_name'
                end>
              Properties.ListSource = ds_ticket_type
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox [7]
              Left = 424
              Top = 130
              DataBinding.DataField = 'reseller_res_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'res_id'
              Properties.ListColumns = <
                item
                  Caption = 'Raz'#227'o'
                  Width = 350
                  FieldName = 'res_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'res_id'
                end>
              Properties.ListSource = ds_reseller
              Style.HotTrack = False
              TabOrder = 7
              Width = 310
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [8]
              Left = 238
              Top = 157
              DataBinding.DataField = 'ticket_category_tkc_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'tkc_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  FieldName = 'tkc_name'
                end>
              Properties.ListSource = ds_ticket_category
              Style.HotTrack = False
              TabOrder = 9
              Width = 130
            end
            object cxDBComboBox1: TcxDBComboBox [9]
              Left = 59
              Top = 103
              DataBinding.DataField = 'tkt_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A - ABERTO'
                'F - FECHADO'
                'C - CANCELADO')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBMemo1: TcxDBMemo [10]
              Left = 17
              Top = 222
              DataBinding.DataField = 'tkt_reason'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 10
              Height = 100
              Width = 717
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              LayoutDirection = ldHorizontal
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Aber.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Venc.'
              Control = cxDBDateEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Fec.'
              Control = cxDBDateEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Cliente'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 309
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo'
              Control = cxDBLookupComboBox4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Revenda'
              Control = cxDBLookupComboBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 310
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Categoria'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Motivo'
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup3
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 100
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Intera'#231#245'es'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            ExplicitLeft = 336
            ExplicitTop = 128
            ExplicitWidth = 300
            ExplicitHeight = 250
            object cxGrid1: TcxGrid
              Left = 10
              Top = 10
              Width = 742
              Height = 412
              Align = alClient
              TabOrder = 0
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.ConfirmDelete = True
                Navigator.Buttons.CustomButtons = <>
                Navigator.Buttons.Images = cxImageList_1
                Navigator.Buttons.First.ImageIndex = 0
                Navigator.Buttons.PriorPage.Visible = False
                Navigator.Buttons.Prior.ImageIndex = 1
                Navigator.Buttons.Next.ImageIndex = 2
                Navigator.Buttons.NextPage.Visible = False
                Navigator.Buttons.Last.ImageIndex = 3
                Navigator.Buttons.Insert.ImageIndex = 4
                Navigator.Buttons.Delete.ImageIndex = 8
                Navigator.Buttons.Delete.Visible = False
                Navigator.Buttons.Edit.ImageIndex = 5
                Navigator.Buttons.Post.ImageIndex = 6
                Navigator.Buttons.Cancel.ImageIndex = 7
                Navigator.Buttons.Refresh.ImageIndex = 9
                Navigator.Buttons.SaveBookmark.Visible = False
                Navigator.Buttons.GotoBookmark.Visible = False
                Navigator.Buttons.Filter.ImageIndex = 10
                Navigator.Visible = True
                DataController.DataSource = ds_ticket_interaction
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                object cxGrid1DBTableView1tki_id: TcxGridDBColumn
                  DataBinding.FieldName = 'tki_id'
                  Options.Editing = False
                  Width = 75
                end
                object cxGrid1DBTableView1tki_reason: TcxGridDBColumn
                  DataBinding.FieldName = 'tki_reason'
                  PropertiesClassName = 'TcxMemoProperties'
                  Properties.CharCase = ecUpperCase
                  Properties.ScrollBars = ssVertical
                  Width = 540
                end
                object cxGrid1DBTableView1tki_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'tki_dt_registration'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.Kind = ckDateTime
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutControl1Group_Root
              Control = cxGrid1
              ControlOptions.OriginalHeight = 412
              ControlOptions.OriginalWidth = 742
              ControlOptions.ShowBorder = False
              Index = 0
            end
          end
        end
      end
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket')
    object qrytkt_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'tkt_id'
      Origin = 'tkt_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryclient_cli_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente ID'
      FieldName = 'client_cli_id'
      Origin = 'client_cli_id'
    end
    object qryenterprise_ent_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Empresa ID'
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
    end
    object qryreseller_res_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Revenda ID'
      FieldName = 'reseller_res_id'
      Origin = 'reseller_res_id'
    end
    object qryticket_type_tky_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo ID'
      FieldName = 'ticket_type_tky_id'
      Origin = 'ticket_type_tky_id'
    end
    object qryticket_category_tkc_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria ID'
      FieldName = 'ticket_category_tkc_id'
      Origin = 'ticket_category_tkc_id'
    end
    object qrytkt_dt_open: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'tkt_dt_open'
      Origin = 'tkt_dt_open'
    end
    object qrytkt_dt_close: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Fec.'
      FieldName = 'tkt_dt_close'
      Origin = 'tkt_dt_close'
    end
    object qrytkt_dt_maturity: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Venc.'
      FieldName = 'tkt_dt_maturity'
      Origin = 'tkt_dt_maturity'
    end
    object qrytkt_reason: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Motivo'
      FieldName = 'tkt_reason'
      Origin = 'tkt_reason'
      BlobType = ftMemo
    end
    object qrytkt_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tkt_status'
      Origin = 'tkt_status'
      FixedChar = True
      Size = 1
    end
    object qrytkt_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tkt_dt_registration'
      Origin = 'tkt_dt_registration'
    end
  end
  inherited QExport4Dialog_1: TQExport4Dialog
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited frxReport_1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object qry_client: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from client')
    Left = 584
    Top = 96
  end
  object ds_client: TDataSource
    DataSet = qry_client
    Left = 616
    Top = 96
  end
  object ds_reseller: TDataSource
    DataSet = qry_reseller
    Left = 616
    Top = 144
  end
  object qry_reseller: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from reseller')
    Left = 584
    Top = 144
  end
  object qry_ticket_type: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_type')
    Left = 648
    Top = 96
  end
  object ds_ticket_type: TDataSource
    DataSet = qry_ticket_type
    Left = 680
    Top = 96
  end
  object ds_ticket_category: TDataSource
    DataSet = qry_ticket_category
    Left = 680
    Top = 144
  end
  object qry_ticket_category: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_category')
    Left = 648
    Top = 144
  end
  object qry_ticket_interaction: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    IndexFieldNames = 'ticket_tkt_id'
    MasterSource = ds
    MasterFields = 'tkt_id'
    DetailFields = 'ticket_tkt_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_interaction')
    Left = 584
    Top = 192
    object qry_ticket_interactiontki_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'tki_id'
      Origin = 'tki_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qry_ticket_interactionticket_tkt_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ticket ID'
      FieldName = 'ticket_tkt_id'
      Origin = 'ticket_tkt_id'
    end
    object qry_ticket_interactiontki_reason: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Motivo'
      FieldName = 'tki_reason'
      Origin = 'tki_reason'
      BlobType = ftMemo
    end
    object qry_ticket_interactiontki_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tki_dt_registration'
      Origin = 'tki_dt_registration'
    end
  end
  object ds_ticket_interaction: TDataSource
    DataSet = qry_ticket_interaction
    Left = 616
    Top = 192
  end
end
