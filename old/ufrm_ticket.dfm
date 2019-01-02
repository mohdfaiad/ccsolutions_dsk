inherited frm_ticket: Tfrm_ticket
  Caption = 'Manute'#231#227'o: Tickets'
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxGrid_1: TcxGrid
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          object cxGrid_1DBTableView1tkt_id: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_id'
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
          object cxGrid_1DBTableView1tkt_email: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_email'
            Width = 200
          end
          object cxGrid_1DBTableView1tkt_status: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_status'
            Width = 50
          end
          object cxGrid_1DBTableView1tkt_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'tkt_dt_registration'
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 1000
      ExplicitHeight = 602
      inherited cxPageControl_2: TcxPageControl
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 986
          ExplicitHeight = 562
          inherited dxLayoutControl_1: TdxLayoutControl
            inherited dbedt_id: TcxDBTextEdit
              Left = 71
              Top = 37
              DataBinding.DataField = 'tkt_id'
              ExplicitLeft = 71
              ExplicitTop = 37
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 251
              Top = 37
              DataBinding.DataField = 'tkt_dt_registration'
              ExplicitLeft = 251
              ExplicitTop = 37
            end
            object dbcmb_tkt_status: TcxDBComboBox [2]
              Left = 439
              Top = 37
              DataBinding.DataField = 'tkt_status'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                'A'
                'F'
                'C')
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object dblookupcmb_contract_ctr_cod: TcxDBLookupComboBox [3]
              Left = 71
              Top = 101
              DataBinding.DataField = 'contract_user_ctr_usr_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 250
              Properties.KeyFieldNames = 'ctr_usr_cod'
              Properties.ListColumns = <
                item
                  Width = 150
                  FieldName = 'ctr_usr_first_name'
                end
                item
                  Width = 75
                  FieldName = 'ctr_usr_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsContractUser
              Style.HotTrack = False
              TabOrder = 3
              Width = 310
            end
            object dblookupcmb_enterprise_ent_cod: TcxDBLookupComboBox [4]
              Left = 439
              Top = 155
              DataBinding.DataField = 'enterprise_ent_cod'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'ent_cod'
              Properties.ListColumns = <
                item
                  Width = 275
                  FieldName = 'ent_last_name'
                end
                item
                  Width = 75
                  FieldName = 'ent_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsEnterprise
              Style.HotTrack = False
              TabOrder = 8
              Width = 234
            end
            object dblookupcmb_client_cli_cod: TcxDBLookupComboBox [5]
              Left = 71
              Top = 155
              DataBinding.DataField = 'client_cli_cod'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'cli_cod'
              Properties.ListColumns = <
                item
                  Width = 275
                  FieldName = 'cli_first_name'
                end
                item
                  Width = 75
                  FieldName = 'cli_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsClient
              Style.HotTrack = False
              TabOrder = 7
              Width = 310
            end
            object dblookupcmb_reseller_res_cod: TcxDBLookupComboBox [6]
              Left = 747
              Top = 155
              DataBinding.DataField = 'reseller_res_cod'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'res_cod'
              Properties.ListColumns = <
                item
                  Width = 275
                  FieldName = 'res_last_name'
                end
                item
                  Width = 75
                  FieldName = 'res_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsReseller
              Style.HotTrack = False
              TabOrder = 9
              Width = 222
            end
            object dblookupcmb_ticket_type_tky_cod: TcxDBLookupComboBox [7]
              Left = 71
              Top = 182
              DataBinding.DataField = 'ticket_type_tky_cod'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'tky_cod'
              Properties.ListColumns = <
                item
                  Width = 175
                  FieldName = 'tky_name'
                end
                item
                  Width = 75
                  FieldName = 'tky_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsTicketType
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object dblookupcmb_ticket_priority_tkp_cod: TcxDBLookupComboBox [8]
              Left = 251
              Top = 182
              DataBinding.DataField = 'ticket_priority_tkp_cod'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'tkp_cod'
              Properties.ListColumns = <
                item
                  Width = 175
                  FieldName = 'tkp_name'
                end
                item
                  Width = 75
                  FieldName = 'tkp_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsTicketPriority
              Style.HotTrack = False
              TabOrder = 11
              Width = 130
            end
            object dblookupcmb_ticket_category_tkc_cod: TcxDBLookupComboBox [9]
              Left = 439
              Top = 182
              DataBinding.DataField = 'ticket_category_tkc_cod'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'tkc_cod'
              Properties.ListColumns = <
                item
                  Width = 175
                  FieldName = 'tkc_name'
                end
                item
                  Width = 75
                  FieldName = 'tkc_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsTicketCategory
              Style.HotTrack = False
              TabOrder = 12
              Width = 234
            end
            object dblookupcmb_ticket_category_sub_tks_cod: TcxDBLookupComboBox [10]
              Left = 747
              Top = 182
              DataBinding.DataField = 'ticket_category_sub_tks_cod'
              DataBinding.DataSource = ds
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'tks_cod'
              Properties.ListColumns = <
                item
                  Width = 175
                  FieldName = 'tks_name'
                end
                item
                  Width = 75
                  FieldName = 'tks_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsTicketCategorySub
              Style.HotTrack = False
              TabOrder = 13
              Width = 222
            end
            object dbmem_reason: TcxDBMemo [11]
              Left = 71
              Top = 236
              DataBinding.DataField = 'tkt_reason'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 18
              Height = 100
              Width = 898
            end
            object cxDBTextEdit1: TcxDBTextEdit [12]
              Left = 71
              Top = 209
              DataBinding.DataField = 'tkt_phone1'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 14
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [13]
              Left = 251
              Top = 209
              DataBinding.DataField = 'tkt_phone2'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 15
              Width = 130
            end
            object cxDBTextEdit3: TcxDBTextEdit [14]
              Left = 439
              Top = 209
              DataBinding.DataField = 'tkt_contact'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 16
              Width = 234
            end
            object cxDBTextEdit4: TcxDBTextEdit [15]
              Left = 747
              Top = 209
              DataBinding.DataField = 'tkt_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 17
              Width = 222
            end
            object cxDBDateEdit1: TcxDBDateEdit [16]
              Left = 71
              Top = 128
              DataBinding.DataField = 'tkt_dt_open'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBDateEdit2: TcxDBDateEdit [17]
              Left = 251
              Top = 128
              DataBinding.DataField = 'tkt_dt_close'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 130
            end
            object cxDBDateEdit3: TcxDBDateEdit [18]
              Left = 439
              Top = 128
              DataBinding.DataField = 'tkt_dt_maturity'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              CaptionOptions.Visible = False
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              ItemIndex = 2
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 478
              SizeOptions.Width = 966
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = dbcmb_tkt_status
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'T'#233'cnico'
              Control = dblookupcmb_contract_ctr_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 310
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Empresa'
              Control = dblookupcmb_enterprise_ent_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 234
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Cliente'
              Control = dblookupcmb_client_cli_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 310
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Revenda'
              Control = dblookupcmb_reseller_res_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 222
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tipo'
              Control = dblookupcmb_ticket_type_tky_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Prioridade'
              Control = dblookupcmb_ticket_priority_tkp_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Categoria'
              Control = dblookupcmb_ticket_category_tkc_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 234
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avClient
              CaptionOptions.Text = 'Subcategoria'
              Control = dblookupcmb_ticket_category_sub_tks_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 222
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Motivo'
              Control = dbmem_reason
              ControlOptions.OriginalHeight = 100
              ControlOptions.OriginalWidth = 898
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 234
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 222
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup6
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dt. Abert.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Fech.'
              Control = cxDBDateEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Venc.'
              Control = cxDBDateEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
          end
        end
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited ActionList_1: TActionList
    inherited Action_save: TAction
      OnExecute = Action_saveExecute
    end
  end
  inherited qry: TFDQuery [5]
  end
  inherited ACBrEnterTab_1: TACBrEnterTab [6]
  end
  inherited QExport4Dialog_1: TQExport4Dialog [7]
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited QImport3Wizard_1: TQImport3Wizard [8]
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited schadp: TFDSchemaAdapter [9]
  end
  inherited frxReport_1: TfrxReport [10]
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited mem: TFDMemTable [11]
    Active = True
    FieldDefs = <
      item
        Name = 'tkt_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'client_cli_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'enterprise_ent_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'reseller_res_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ticket_type_tky_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ticket_category_tkc_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ticket_category_sub_tks_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'ticket_priority_tkp_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'contract_user_ctr_usr_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'tkt_id'
        DataType = ftLongWord
      end
      item
        Name = 'tkt_dt_open'
        DataType = ftDateTime
      end
      item
        Name = 'tkt_dt_close'
        DataType = ftDateTime
      end
      item
        Name = 'tkt_dt_maturity'
        DataType = ftDateTime
      end
      item
        Name = 'tkt_reason'
        DataType = ftMemo
      end
      item
        Name = 'tkt_phone1'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'tkt_phone2'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'tkt_contact'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'tkt_email'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'tkt_deleted_at'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'tkt_dt_registration'
        DataType = ftDateTime
      end
      item
        Name = 'tkt_status'
        DataType = ftString
        Size = 1
      end>
    StoreDefs = True
    object memtkt_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tkt_cod'
      Origin = 'tkt_cod'
      Size = 32
    end
    object memclient_cli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
      Size = 32
    end
    object mementerprise_ent_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Empresa'
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
      Size = 32
    end
    object memreseller_res_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Revenda'
      FieldName = 'reseller_res_cod'
      Origin = 'reseller_res_cod'
      Size = 32
    end
    object memticket_type_tky_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'ticket_type_tky_cod'
      Origin = 'ticket_type_tky_cod'
      Size = 32
    end
    object memticket_category_tkc_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'ticket_category_tkc_cod'
      Origin = 'ticket_category_tkc_cod'
      Size = 32
    end
    object memticket_category_sub_tks_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sub-Categoria'
      FieldName = 'ticket_category_sub_tks_cod'
      Origin = 'ticket_category_sub_tks_cod'
      Size = 32
    end
    object memticket_priority_tkp_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prioridade'
      FieldName = 'ticket_priority_tkp_cod'
      Origin = 'ticket_priority_tkp_cod'
      Size = 32
    end
    object memcontract_user_ctr_usr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'contract_user_ctr_usr_cod'
      Origin = 'contract_user_ctr_usr_cod'
      Size = 32
    end
    object memtkt_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'tkt_id'
      Origin = 'tkt_id'
    end
    object memtkt_dt_open: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Abert.'
      FieldName = 'tkt_dt_open'
      Origin = 'tkt_dt_open'
    end
    object memtkt_dt_close: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Fech.'
      FieldName = 'tkt_dt_close'
      Origin = 'tkt_dt_close'
    end
    object memtkt_dt_maturity: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Venc.'
      FieldName = 'tkt_dt_maturity'
      Origin = 'tkt_dt_maturity'
    end
    object memtkt_reason: TMemoField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Motivo'
      FieldName = 'tkt_reason'
      Origin = 'tkt_reason'
      BlobType = ftMemo
    end
    object memtkt_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'tkt_phone1'
      Origin = 'tkt_phone1'
      Size = 15
    end
    object memtkt_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'tkt_phone2'
      Origin = 'tkt_phone2'
      Size = 15
    end
    object memtkt_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'tkt_contact'
      Origin = 'tkt_contact'
      Size = 25
    end
    object memtkt_email: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      FieldName = 'tkt_email'
      Origin = 'tkt_email'
      Size = 65
    end
    object memtkt_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'tkt_status'
      Origin = 'tkt_status'
      FixedChar = True
      Size = 1
    end
    object memtkt_deleted_at: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Deletado em'
      FieldName = 'tkt_deleted_at'
      Origin = 'tkt_status'
      FixedChar = True
      Size = 1
    end
    object memtkt_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'tkt_dt_registration'
      Origin = 'tkt_dt_registration'
    end
  end
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [12]
  end
  inherited PopupMenu_1: TPopupMenu [13]
  end
  inherited cxImageList_1: TcxImageList [14]
    FormatVersion = 1
  end
  inherited dxLayoutLookAndFeelList_1: TdxLayoutLookAndFeelList [15]
    inherited dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
end
