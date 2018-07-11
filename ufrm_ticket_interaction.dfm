inherited frm_ticket_interaction: Tfrm_ticket_interaction
  Caption = 'Manuten'#231#227'o: Intera'#231#245'es dos Tickets'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1tkt_id: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_id'
            Width = 75
          end
          object cxGrid_1DBTableView1tkt_status: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_status'
            Width = 50
          end
          object cxGrid_1DBTableView1fclient_name: TcxGridDBColumn
            DataBinding.FieldName = 'fclient_name'
            Width = 250
          end
          object cxGrid_1DBTableView1fenterprise_name: TcxGridDBColumn
            DataBinding.FieldName = 'fenterprise_name'
            Width = 250
          end
          object cxGrid_1DBTableView1freseller_name: TcxGridDBColumn
            DataBinding.FieldName = 'freseller_name'
            Width = 250
          end
          object cxGrid_1DBTableView1fticket_type_name: TcxGridDBColumn
            DataBinding.FieldName = 'fticket_type_name'
            Width = 150
          end
          object cxGrid_1DBTableView1fticket_category_name: TcxGridDBColumn
            DataBinding.FieldName = 'fticket_category_name'
            Width = 150
          end
          object cxGrid_1DBTableView1fticket_category_sub_name: TcxGridDBColumn
            DataBinding.FieldName = 'fticket_category_sub_name'
            Width = 150
          end
          object cxGrid_1DBTableView1fticket_priority_name: TcxGridDBColumn
            DataBinding.FieldName = 'fticket_priority_name'
            Width = 100
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
          object cxGrid_1DBTableView1tkt_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1tkt_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1tkt_contact: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_contact'
            Width = 100
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
      ExplicitWidth = 1000
      ExplicitHeight = 512
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            object cxDBMemo1: TcxDBMemo [0]
              Left = 55
              Top = 92
              DataBinding.DataField = 'tkt_reason'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 9
              Height = 75
              Width = 914
            end
            object cxDBTextEdit1: TcxDBTextEdit [1]
              Left = 55
              Top = 38
              DataBinding.DataField = 'tkt_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [2]
              Left = 235
              Top = 38
              DataBinding.DataField = 'fticket_priority_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 1
              Width = 130
            end
            object cxDBTextEdit8: TcxDBTextEdit [3]
              Left = 415
              Top = 38
              DataBinding.DataField = 'fticket_type_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit [4]
              Left = 594
              Top = 38
              DataBinding.DataField = 'fticket_category_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 3
              Width = 148
            end
            object cxDBTextEdit10: TcxDBTextEdit [5]
              Left = 816
              Top = 38
              DataBinding.DataField = 'fticket_category_sub_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 4
              Width = 153
            end
            object cxDBTextEdit7: TcxDBTextEdit [6]
              Left = 55
              Top = 65
              DataBinding.DataField = 'fclient_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 5
              Width = 310
            end
            object cxDBTextEdit4: TcxDBTextEdit [7]
              Left = 415
              Top = 65
              DataBinding.DataField = 'tkt_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [8]
              Left = 594
              Top = 65
              DataBinding.DataField = 'tkt_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 7
              Width = 148
            end
            object cxDBTextEdit3: TcxDBTextEdit [9]
              Left = 816
              Top = 65
              DataBinding.DataField = 'tkt_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ReadOnly = True
              Style.HotTrack = False
              TabOrder = 8
              Width = 153
            end
            inherited dbedt_id: TcxDBTextEdit
              Left = 10000
              Top = 10000
              DataBinding.DataField = 'tkt_id'
              TabOrder = 12
              Visible = False
              ExplicitLeft = 10000
              ExplicitTop = 10000
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 10000
              Top = 10000
              DataBinding.DataField = 'tkt_dt_registration'
              TabOrder = 16
              Visible = False
              ExplicitLeft = 10000
              ExplicitTop = 10000
            end
            object cxGrid1: TcxGrid [12]
              Left = 17
              Top = 211
              Width = 400
              Height = 241
              TabOrder = 10
              object cxGrid1DBTableView1: TcxGridDBTableView
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
                object cxGrid1DBTableView1contract_user_ctr_usr_id: TcxGridDBColumn
                  DataBinding.FieldName = 'contract_user_ctr_usr_id'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownListStyle = lsFixedList
                  Properties.DropDownWidth = 350
                  Properties.KeyFieldNames = 'ctr_usr_id'
                  Properties.ListColumns = <
                    item
                      Caption = 'Nome'
                      Width = 250
                      FieldName = 'ctr_usr_first_name'
                    end
                    item
                      Caption = 'C'#243'd. ID'
                      Width = 75
                      FieldName = 'ctr_usr_id'
                    end>
                  Properties.ListSource = ds_contract_user
                  Width = 198
                end
                object cxGrid1DBTableView1tki_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'tki_dt_registration'
                  Options.Editing = False
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dbmem_reason: TcxDBMemo [13]
              Left = 423
              Top = 211
              DataBinding.DataField = 'tki_reason'
              DataBinding.DataSource = ds_ticket_interaction
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 11
              Height = 241
              Width = 546
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              Parent = nil
              ItemIndex = 1
              Index = -1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 966
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Motivo'
              Control = cxDBMemo1
              ControlOptions.OriginalHeight = 75
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Prioridade'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Tipo'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Categoria'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 148
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Subcategoria'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 153
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Cliente'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 310
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 148
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 153
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Intera'#231#227'o'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 241
              SizeOptions.Width = 400
              Control = cxGrid1
              ControlOptions.OriginalHeight = 241
              ControlOptions.OriginalWidth = 400
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              SizeOptions.Width = 546
              Control = dbmem_reason
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 546
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    inherited dxBarButton_insert: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton_delete: TdxBarButton
      Visible = ivNever
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
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
    object qryticket_category_sub_tks_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Subcategoria ID'
      FieldName = 'ticket_category_sub_tks_id'
      Origin = 'ticket_category_sub_tks_id'
    end
    object qryticket_priority_tkp_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prioridade ID'
      FieldName = 'ticket_priority_tkp_id'
      Origin = 'ticket_priority_tkp_id'
    end
    object qrycontract_user_ctr_usr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'contract_user_ctr_usr_id'
      Origin = 'contract_user_ctr_usr_id'
    end
    object qrytkt_dt_open: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Aber.'
      FieldName = 'tkt_dt_open'
      Origin = 'tkt_dt_open'
    end
    object qrytkt_dt_close: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Fech.'
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
    object qrytkt_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'tkt_phone1'
      Origin = 'tkt_phone1'
      Size = 15
    end
    object qrytkt_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'tkt_phone2'
      Origin = 'tkt_phone2'
      Size = 15
    end
    object qrytkt_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'tkt_contact'
      Origin = 'tkt_contact'
      Size = 15
    end
    object qrytkt_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tkt_dt_registration'
      Origin = 'tkt_dt_registration'
    end
    object qryfclient_name: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'fclient_name'
      LookupDataSet = qry_client
      LookupKeyFields = 'cli_id'
      LookupResultField = 'cli_first_name'
      KeyFields = 'client_cli_id'
      Size = 255
      Lookup = True
    end
    object qryfenterprise_name: TStringField
      DisplayLabel = 'Empresa'
      FieldKind = fkLookup
      FieldName = 'fenterprise_name'
      LookupDataSet = qry_enterprise
      LookupKeyFields = 'ent_id'
      LookupResultField = 'ent_first_name'
      KeyFields = 'enterprise_ent_id'
      Size = 255
      Lookup = True
    end
    object qryfreseller_name: TStringField
      DisplayLabel = 'Revenda'
      FieldKind = fkLookup
      FieldName = 'freseller_name'
      LookupDataSet = qry_reseller
      LookupKeyFields = 'res_id'
      LookupResultField = 'res_first_name'
      KeyFields = 'reseller_res_id'
      Size = 255
      Lookup = True
    end
    object qryfticket_type_name: TStringField
      DisplayLabel = 'Tipo'
      FieldKind = fkLookup
      FieldName = 'fticket_type_name'
      LookupDataSet = qry_ticket_type
      LookupKeyFields = 'tky_id'
      LookupResultField = 'tky_name'
      KeyFields = 'ticket_type_tky_id'
      Size = 255
      Lookup = True
    end
    object qryfticket_category_name: TStringField
      DisplayLabel = 'Categoria'
      FieldKind = fkLookup
      FieldName = 'fticket_category_name'
      LookupDataSet = qry_ticket_category
      LookupKeyFields = 'tkc_id'
      LookupResultField = 'tkc_name'
      KeyFields = 'ticket_category_tkc_id'
      Size = 255
      Lookup = True
    end
    object qryfticket_category_sub_name: TStringField
      DisplayLabel = 'Subcategoria'
      FieldKind = fkLookup
      FieldName = 'fticket_category_sub_name'
      LookupDataSet = qry_ticket_category_sub
      LookupKeyFields = 'tks_id'
      LookupResultField = 'tks_name'
      KeyFields = 'ticket_category_sub_tks_id'
      Size = 255
      Lookup = True
    end
    object qryfticket_priority_name: TStringField
      DisplayLabel = 'Prioridade'
      FieldKind = fkLookup
      FieldName = 'fticket_priority_name'
      LookupDataSet = qry_ticket_priority
      LookupKeyFields = 'tkp_id'
      LookupResultField = 'tkp_name'
      KeyFields = 'ticket_priority_tkp_id'
      Size = 255
      Lookup = True
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
  object qry_ticket_interaction: TFDQuery
    AfterInsert = qry_ticket_interactionAfterInsert
    IndexFieldNames = 'ticket_tkt_id'
    MasterSource = ds
    MasterFields = 'tkt_id'
    DetailFields = 'ticket_tkt_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_interaction')
    Left = 608
    Top = 400
    object qry_ticket_interactiontki_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'tki_id'
      Origin = 'tki_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_ticket_interactionticket_tkt_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ticket ID'
      FieldName = 'ticket_tkt_id'
      Origin = 'ticket_tkt_id'
    end
    object qry_ticket_interactioncontract_user_ctr_usr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'contract_user_ctr_usr_id'
      Origin = 'contract_user_ctr_usr_id'
    end
    object qry_ticket_interactiontki_reason: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
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
    Left = 608
    Top = 448
  end
  object qry_client: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from client')
    Left = 640
    Top = 400
  end
  object ds_client: TDataSource
    DataSet = qry_client
    Left = 640
    Top = 448
  end
  object qry_ticket_category_sub: TFDQuery
    IndexFieldNames = 'ticket_category_tkc_id'
    MasterSource = ds_ticket_category
    MasterFields = 'tkc_id'
    DetailFields = 'ticket_category_tkc_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_category_sub')
    Left = 800
    Top = 400
  end
  object ds_ticket_category_sub: TDataSource
    DataSet = qry_ticket_category_sub
    Left = 800
    Top = 448
  end
  object qry_enterprise: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise')
    Left = 736
    Top = 400
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 736
    Top = 448
  end
  object ds_reseller: TDataSource
    DataSet = qry_reseller
    Left = 704
    Top = 448
  end
  object qry_reseller: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from reseller')
    Left = 704
    Top = 400
  end
  object qry_ticket_type: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_type')
    Left = 768
    Top = 400
  end
  object ds_ticket_type: TDataSource
    DataSet = qry_ticket_type
    Left = 768
    Top = 448
  end
  object qry_ticket_category: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_category')
    Left = 672
    Top = 400
  end
  object ds_ticket_category: TDataSource
    DataSet = qry_ticket_category
    Left = 672
    Top = 448
  end
  object qry_ticket_priority: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from ticket_priority')
    Left = 576
    Top = 400
  end
  object ds_ticket_priority: TDataSource
    DataSet = qry_ticket_priority
    Left = 576
    Top = 448
  end
  object qry_contract_user: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from contract_user')
    Left = 832
    Top = 400
  end
  object ds_contract_user: TDataSource
    DataSet = qry_contract_user
    Left = 832
    Top = 448
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 690
    Top = 227
  end
end
