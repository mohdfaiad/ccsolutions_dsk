inherited frm_billpay: Tfrm_billpay
  Caption = 'Manuten'#231#227'o: Contas a Pagar'
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
          object cxGrid_1DBTableView1bpy_id: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1supplier_sup_id: TcxGridDBColumn
            DataBinding.FieldName = 'supplier_sup_id'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_value: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_value'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_addition: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_addition'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_discount: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_discount'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_amount_pay: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_amount_pay'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_amount_paid: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_amount_paid'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_document: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_document'
            Width = 150
          end
          object cxGrid_1DBTableView1bpy_dt_emission: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_dt_emission'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_dt_maturity: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_dt_maturity'
            Width = 75
          end
          object cxGrid_1DBTableView1bpy_installment: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_installment'
            Width = 100
          end
          object cxGrid_1DBTableView1bpy_status: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_status'
            Width = 50
          end
          object cxGrid_1DBTableView1bpy_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'bpy_dt_registration'
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
              Left = 77
              DataBinding.DataField = 'bpy_id'
              ExplicitLeft = 77
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 257
              DataBinding.DataField = 'bpy_dt_registration'
              ExplicitLeft = 257
            end
            object cxDBCurrencyEdit1: TcxDBCurrencyEdit [2]
              Left = 77
              Top = 249
              DataBinding.DataField = 'bpy_value'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBCurrencyEdit5: TcxDBCurrencyEdit [3]
              Left = 77
              Top = 276
              DataBinding.DataField = 'bpy_amount_paid'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 15
              Width = 121
            end
            object cxDBCurrencyEdit2: TcxDBCurrencyEdit [4]
              Left = 257
              Top = 249
              DataBinding.DataField = 'bpy_addition'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBCurrencyEdit3: TcxDBCurrencyEdit [5]
              Left = 434
              Top = 249
              DataBinding.DataField = 'bpy_discount'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object cxDBCurrencyEdit4: TcxDBCurrencyEdit [6]
              Left = 609
              Top = 249
              DataBinding.DataField = 'bpy_amount_pay'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 14
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit [7]
              Left = 77
              Top = 184
              DataBinding.DataField = 'bpy_reference'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 653
            end
            object cxDBDateEdit1: TcxDBDateEdit [8]
              Left = 77
              Top = 157
              DataBinding.DataField = 'bpy_dt_emission'
              DataBinding.DataSource = ds
              Properties.DateButtons = [btnClear, btnToday]
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBDateEdit2: TcxDBDateEdit [9]
              Left = 257
              Top = 157
              DataBinding.DataField = 'bpy_dt_maturity'
              DataBinding.DataSource = ds
              Properties.DateButtons = [btnClear, btnToday]
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [10]
              Left = 434
              Top = 157
              DataBinding.DataField = 'bpy_installment'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [11]
              Left = 77
              Top = 103
              DataBinding.DataField = 'supplier_sup_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoSize = True
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownSizeable = True
              Properties.KeyFieldNames = 'sup_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'sup_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'sup_id'
                end>
              Properties.ListSource = ds_supplier
              Properties.OnPopup = cxDBLookupComboBox1PropertiesPopup
              Style.HotTrack = False
              TabOrder = 2
              Width = 301
            end
            object cxDBLookupComboBox2: TcxDBLookupComboBox [12]
              Left = 77
              Top = 130
              DataBinding.DataField = 'enterprise_ent_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownAutoSize = True
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'ent_id'
              Properties.ListColumns = <
                item
                  Caption = 'Raz'#227'o'
                  Width = 250
                  FieldName = 'ent_first_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'ent_id'
                end>
              Properties.ListSource = ds_enterprise
              Properties.OnPopup = cxDBLookupComboBox2PropertiesPopup
              Style.HotTrack = False
              TabOrder = 4
              Width = 301
            end
            object cxDBTextEdit4: TcxDBTextEdit [13]
              Left = 434
              Top = 103
              DataBinding.DataField = 'bpy_status'
              DataBinding.DataSource = ds
              Enabled = False
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit [14]
              Left = 609
              Top = 130
              DataBinding.DataField = 'bpy_invoice'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit1: TcxDBTextEdit [15]
              Left = 434
              Top = 130
              DataBinding.DataField = 'bpy_document'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ItemIndex = 3
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Valores'
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Vl.'
              Control = cxDBCurrencyEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Vl. Pago'
              Control = cxDBCurrencyEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Acr'#233'scimo'
              Control = cxDBCurrencyEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Desconto'
              Control = cxDBCurrencyEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Vl. Pagar'
              Control = cxDBCurrencyEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Referente'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Emis.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Venc.'
              Control = cxDBDateEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Parcela'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Fornecedor'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 301
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Empresa'
              Control = cxDBLookupComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 301
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Enabled = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'NF'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Doc.'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Cont'#225'bil'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object cxDBLookupComboBox9: TcxDBLookupComboBox
              Left = 63
              Top = 103
              DataBinding.DataField = 'cost_center_coc_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'coc_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'coc_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'coc_id'
                end>
              Properties.ListSource = ds_cost_center
              Properties.OnPopup = cxDBLookupComboBox9PropertiesPopup
              Style.HotTrack = False
              TabOrder = 2
              Width = 145
            end
            object cxDBLookupComboBox12: TcxDBLookupComboBox
              Left = 63
              Top = 38
              DataBinding.DataField = 'account_plan_acp_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'acp_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'acp_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'acp_id'
                end>
              Properties.ListSource = ds_account_plan
              Properties.OnPopup = cxDBLookupComboBox12PropertiesPopup
              Style.HotTrack = False
              TabOrder = 0
              Width = 145
            end
            object cxDBLookupComboBox11: TcxDBLookupComboBox
              Left = 270
              Top = 38
              DataBinding.DataField = 'account_plan_detail_acd_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'acd_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'acd_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'acd_id'
                end>
              Properties.ListSource = ds_account_plan_detail
              Properties.OnPopup = cxDBLookupComboBox11PropertiesPopup
              Style.HotTrack = False
              TabOrder = 1
              Width = 145
            end
            object cxDBLookupComboBox10: TcxDBLookupComboBox
              Left = 270
              Top = 103
              DataBinding.DataField = 'cost_center_detail_cod_id'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'cod_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'cod_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'cod_id'
                end>
              Properties.ListSource = ds_cost_center_detail
              Properties.OnPopup = cxDBLookupComboBox10PropertiesPopup
              Style.HotTrack = False
              TabOrder = 3
              Width = 145
            end
            object dxLayoutGroup5: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup7: TdxLayoutGroup
              Parent = dxLayoutGroup5
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Plano de Conta'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutGroup5
              CaptionOptions.Text = 'Centro de Custo'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem37: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = ' Grupo'
              Control = cxDBLookupComboBox9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem40: TdxLayoutItem
              Parent = dxLayoutGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Sint'#233'tico'
              Control = cxDBLookupComboBox12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem39: TdxLayoutItem
              Parent = dxLayoutGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Anal'#237'tica'
              Control = cxDBLookupComboBox11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem38: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avClient
              CaptionOptions.Text = 'Sub-Grupo'
              Control = cxDBLookupComboBox10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 145
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
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
    AfterInsert = qryAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from billpay')
    object qrybpy_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'bpy_id'
      Origin = 'bpy_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryenterprise_ent_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Empresa ID'
      FieldName = 'enterprise_ent_id'
      Origin = 'enterprise_ent_id'
    end
    object qrysupplier_sup_id: TIntegerField
      DisplayLabel = 'Fornecedor ID'
      FieldName = 'supplier_sup_id'
    end
    object qrybpy_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl.'
      FieldName = 'bpy_value'
      Origin = 'bpy_value'
      Precision = 12
    end
    object qrybpy_discount: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Desconto'
      FieldName = 'bpy_discount'
      Origin = 'bpy_discount'
      Precision = 12
    end
    object qrybpy_addition: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'bpy_addition'
      Origin = 'bpy_addition'
      Precision = 12
    end
    object qrybpy_amount_pay: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Pagar'
      FieldName = 'bpy_amount_pay'
      Origin = 'bpy_amount_pay'
      Precision = 12
    end
    object qrybpy_amount_paid: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Pago'
      FieldName = 'bpy_amount_paid'
      Origin = 'bpy_amount_paid'
      Precision = 12
    end
    object qrybpy_document: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Documento'
      FieldName = 'bpy_document'
      Origin = 'bpy_document'
      Size = 50
    end
    object qrybpy_invoice: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'NF'
      FieldName = 'bpy_invoice'
      Origin = 'bpy_invoice'
      Size = 25
    end
    object qrybpy_dt_emission: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Emis.'
      FieldName = 'bpy_dt_emission'
      Origin = 'bpy_dt_emission'
    end
    object qrybpy_dt_maturity: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Venc.'
      FieldName = 'bpy_dt_maturity'
      Origin = 'bpy_dt_maturity'
    end
    object qrybpy_installment: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Parcela'
      FieldName = 'bpy_installment'
      Origin = 'bpy_installment'
      Size = 10
    end
    object qrybpy_reference: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Referente'
      FieldName = 'bpy_reference'
      Origin = 'bpy_reference'
      Size = 255
    end
    object qrybpy_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'bpy_status'
      Origin = 'bpy_status'
      FixedChar = True
      Size = 1
    end
    object qrybpy_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'bpy_dt_registration'
      Origin = 'bpy_dt_registration'
    end
    object qryaccount_plan_acp_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Plano de Conta - Sint'#233'tico'
      FieldName = 'account_plan_acp_id'
      Origin = 'account_plan_acp_id'
    end
    object qryaccount_plan_detail_acd_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Plano de Conta - Anal'#237'tica'
      FieldName = 'account_plan_detail_acd_id'
      Origin = 'account_plan_detail_acd_id'
    end
    object qrycost_center_coc_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Centro de Custo - Grupo'
      FieldName = 'cost_center_coc_id'
      Origin = 'cost_center_coc_id'
    end
    object qrycost_center_detail_cod_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Centro de Custo - Sub-Grupo'
      FieldName = 'cost_center_detail_cod_id'
      Origin = 'cost_center_detail_cod_id'
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
  object qry_supplier: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from supplier')
    Left = 584
    Top = 96
  end
  object ds_supplier: TDataSource
    DataSet = qry_supplier
    Left = 616
    Top = 96
  end
  object qry_enterprise: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise')
    Left = 584
    Top = 144
  end
  object ds_enterprise: TDataSource
    DataSet = qry_enterprise
    Left = 616
    Top = 144
  end
  object qry_cost_center: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from cost_center')
    Left = 512
    Top = 96
  end
  object ds_cost_center: TDataSource
    DataSet = qry_cost_center
    Left = 544
    Top = 96
  end
  object qry_cost_center_detail: TFDQuery
    Active = True
    IndexFieldNames = 'cost_center_coc_id'
    MasterSource = ds_cost_center
    MasterFields = 'coc_id'
    DetailFields = 'cost_center_coc_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from cost_center_detail')
    Left = 432
    Top = 272
  end
  object ds_cost_center_detail: TDataSource
    DataSet = qry_cost_center_detail
    Left = 544
    Top = 144
  end
  object qry_account_plan: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from account_plan')
    Left = 440
    Top = 96
    object qry_account_planacp_id: TFDAutoIncField
      FieldName = 'acp_id'
      Origin = 'acp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_account_plancontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qry_account_planaccount_type_act_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'account_type_act_id'
      Origin = 'account_type_act_id'
    end
    object qry_account_planacp_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'acp_name'
      Origin = 'acp_name'
      Size = 50
    end
    object qry_account_planacp_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'acp_status'
      Origin = 'acp_status'
      FixedChar = True
      Size = 1
    end
    object qry_account_planacp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'acp_dt_registration'
      Origin = 'acp_dt_registration'
    end
  end
  object ds_account_plan: TDataSource
    DataSet = qry_account_plan
    Left = 480
    Top = 96
  end
  object qry_account_plan_detail: TFDQuery
    Active = True
    IndexFieldNames = 'account_plan_acp_id'
    MasterSource = ds_account_plan
    MasterFields = 'acp_id'
    DetailFields = 'account_plan_acp_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from account_plan_detail')
    Left = 448
    Top = 216
  end
  object ds_account_plan_detail: TDataSource
    DataSet = qry_account_plan_detail
    Left = 552
    Top = 232
  end
end
