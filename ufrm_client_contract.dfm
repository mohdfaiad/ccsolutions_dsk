inherited frm_client_contract: Tfrm_client_contract
  Caption = 'Manuten'#231#227'o: Contratos Clientes'
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
          object cxGrid_1DBTableView1cli_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'cli_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1client_name: TcxGridDBColumn
            DataBinding.FieldName = 'client_name'
            Width = 250
          end
          object cxGrid_1DBTableView1reseller_name: TcxGridDBColumn
            DataBinding.FieldName = 'reseller_name'
            Width = 250
          end
          object cxGrid_1DBTableView1cli_ctr_status: TcxGridDBColumn
            DataBinding.FieldName = 'cli_ctr_status'
            Width = 50
          end
          object cxGrid_1DBTableView1cli_ctr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'cli_ctr_dt_registration'
            Width = 125
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
              Left = 65
              Top = 37
              DataBinding.DataField = 'cli_ctr_id'
              ExplicitLeft = 65
              ExplicitTop = 37
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 238
              Top = 37
              DataBinding.DataField = 'cli_ctr_dt_registration'
              ExplicitLeft = 238
              ExplicitTop = 37
            end
            object dbchk_status: TcxDBCheckBox [2]
              Left = 374
              Top = 37
              Caption = 'Status'
              DataBinding.DataField = 'cli_ctr_status'
              DataBinding.DataSource = ds
              Properties.Alignment = taRightJustify
              Properties.ValueChecked = 1
              Properties.ValueGrayed = '1'
              Properties.ValueUnchecked = 0
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [3]
              Left = 65
              Top = 101
              DataBinding.DataField = 'client_cli_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'cli_cod'
              Properties.ListColumns = <
                item
                  Width = 250
                  FieldName = 'cli_first_name'
                end
                item
                  Width = 75
                  FieldName = 'cli_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsClient
              Style.HotTrack = False
              TabOrder = 3
              Width = 303
            end
            object cxDBLookupComboBox3: TcxDBLookupComboBox [4]
              Left = 424
              Top = 101
              DataBinding.DataField = 'requisition_req_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'req_cod'
              Properties.ListColumns = <
                item
                  Caption = 'Proposta'
                  Width = 75
                  FieldName = 'req_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsProposalContract
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dbedt_data_signature: TcxDBDateEdit [5]
              Left = 603
              Top = 101
              DataBinding.DataField = 'cli_ctr_date_signature'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 130
            end
            object dbmem_annotation: TcxDBMemo [6]
              Left = 17
              Top = 229
              DataBinding.DataField = 'cli_ctr_annotation'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 9
              Height = 89
              Width = 952
            end
            object dblookupcmbReseller: TcxDBLookupComboBox [7]
              Left = 65
              Top = 165
              DataBinding.DataField = 'reseller_res_cod'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'res_cod'
              Properties.ListColumns = <
                item
                  Width = 250
                  FieldName = 'res_first_name'
                end
                item
                  Width = 75
                  FieldName = 'res_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsReseller
              Style.HotTrack = False
              TabOrder = 7
              Width = 303
            end
            object dbedt_value_reseller: TcxDBCurrencyEdit [8]
              Left = 424
              Top = 165
              DataBinding.DataField = 'cli_ctr_value_reseller'
              DataBinding.DataSource = ds
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object dbedt_cli_ctr_start_service: TcxDBDateEdit [9]
              Left = 783
              Top = 101
              DataBinding.DataField = 'cli_ctr_start_service'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 2
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ItemIndex = 2
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = dbchk_status
              ControlOptions.OriginalHeight = 19
              ControlOptions.OriginalWidth = 53
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Cliente'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Proposta'
              Control = cxDBLookupComboBox3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Assin.'
              Control = dbedt_data_signature
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup9: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Nota'#231#245'es'
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              SizeOptions.Width = 966
              ButtonOptions.Buttons = <>
              Index = 3
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutGroup9
              Control = dbmem_annotation
              ControlOptions.OriginalHeight = 89
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup10: TdxLayoutGroup
              Parent = dxLayoutControl_1Group_Root
              CaptionOptions.Text = 'Revenda'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Revenda'
              Control = dblookupcmbReseller
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 303
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignVert = avClient
              CaptionOptions.Text = 'Comiss'#227'o'
              Control = dbedt_value_reseller
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutGroup2
              CaptionOptions.Text = 'Dt. Inic.'
              Control = dbedt_cli_ctr_start_service
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Servi'#231'os do Contrato'
          object dxLayoutControl2: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 986
            Height = 562
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object grid: TcxGrid
              Left = 17
              Top = 289
              Width = 952
              Height = 253
              TabOrder = 9
              object griddb: TcxGridDBTableView
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
                Navigator.Buttons.Filter.ImageIndex = 11
                Navigator.InfoPanel.DisplayMask = '[RecordIndex] de [RecordCount]'
                Navigator.InfoPanel.Visible = True
                Navigator.Visible = True
                DataController.DataSource = dsClientContractIten
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                Images = cxImageList_1
                OptionsData.Appending = True
                OptionsData.Editing = False
                object griddbproduct_pro_cod: TcxGridDBColumn
                  DataBinding.FieldName = 'product_pro_cod'
                  PropertiesClassName = 'TcxLookupComboBoxProperties'
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownListStyle = lsFixedList
                  Properties.DropDownWidth = 350
                  Properties.KeyFieldNames = 'pro_cod'
                  Properties.ListColumns = <
                    item
                      Width = 250
                      FieldName = 'pro_name'
                    end
                    item
                      Width = 75
                      FieldName = 'pro_id'
                    end>
                  Properties.ListOptions.SyncMode = True
                  Properties.ListSource = frm_dm_ds.dsProduct
                  Width = 250
                end
                object griddbcci_value: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object griddbcci_quant: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_quant'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = '0.0000'
                  Width = 75
                end
                object griddbcci_value_discount: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value_discount'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object griddbcci_value_total: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value_total'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Properties.DecimalPlaces = 4
                  Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
                  Width = 100
                end
                object griddbcci_value_reseller: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_value_reseller'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                  Width = 100
                end
                object griddbcci_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'cci_dt_registration'
                  Width = 125
                end
              end
              object gridlvl: TcxGridLevel
                GridView = griddb
              end
            end
            object dbedt_cci_value: TcxDBCurrencyEdit
              Left = 387
              Top = 37
              DataBinding.DataField = 'cci_value'
              DataBinding.DataSource = dsClientContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 1
              Width = 100
            end
            object dbedt_cci_quant: TcxDBCurrencyEdit
              Left = 532
              Top = 37
              DataBinding.DataField = 'cci_quant'
              DataBinding.DataSource = dsClientContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = '0.0000'
              Style.HotTrack = False
              TabOrder = 2
              Width = 100
            end
            object dbedt_cci_value_discount: TcxDBCurrencyEdit
              Left = 685
              Top = 37
              DataBinding.DataField = 'cci_value_discount'
              DataBinding.DataSource = dsClientContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 3
              Width = 100
            end
            object dbedt_cci_value_total: TcxDBCurrencyEdit
              Left = 835
              Top = 37
              DataBinding.DataField = 'cci_value_total'
              DataBinding.DataSource = dsClientContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 4
              Width = 120
            end
            object dbedt_cci_value_reseller: TcxDBCurrencyEdit
              Left = 387
              Top = 101
              DataBinding.DataField = 'cci_value_reseller'
              DataBinding.DataSource = dsClientContractIten
              Properties.DecimalPlaces = 4
              Properties.DisplayFormat = 'R$ ,0.0000;-R$ ,0.0000'
              Style.HotTrack = False
              TabOrder = 6
              Width = 100
            end
            object dblookupcmb_product_pro_cod: TcxDBLookupComboBox
              Left = 65
              Top = 37
              DataBinding.DataField = 'product_pro_cod'
              DataBinding.DataSource = dsClientContractIten
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'pro_cod'
              Properties.ListColumns = <
                item
                  Width = 250
                  FieldName = 'pro_name'
                end
                item
                  Width = 75
                  FieldName = 'pro_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsProduct
              Style.HotTrack = False
              TabOrder = 0
              Width = 287
            end
            object cxDBNavigator1: TcxDBNavigator
              Left = 727
              Top = 258
              Width = 242
              Height = 25
              Buttons.OnButtonClick = cxDBNavigator1ButtonsButtonClick
              Buttons.CustomButtons = <>
              Buttons.Images = cxImageList_1
              Buttons.First.ImageIndex = 0
              Buttons.PriorPage.Visible = False
              Buttons.Prior.ImageIndex = 1
              Buttons.Next.ImageIndex = 2
              Buttons.NextPage.Visible = False
              Buttons.Last.ImageIndex = 3
              Buttons.Insert.ImageIndex = 4
              Buttons.Delete.ImageIndex = 8
              Buttons.Edit.ImageIndex = 5
              Buttons.Post.ImageIndex = 6
              Buttons.Cancel.ImageIndex = 7
              Buttons.Refresh.ImageIndex = 9
              Buttons.SaveBookmark.Visible = False
              Buttons.GotoBookmark.Visible = False
              Buttons.Filter.Visible = False
              DataSource = dsClientContractIten
              TabOrder = 8
            end
            object dblookupcmb_cci_reseller: TcxDBLookupComboBox
              Left = 65
              Top = 101
              DataBinding.DataField = 'reseller_res_cod'
              DataBinding.DataSource = dsClientContractIten
              Properties.CharCase = ecUpperCase
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownWidth = 350
              Properties.KeyFieldNames = 'res_cod'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'res_first_name'
                end
                item
                  Width = 75
                  FieldName = 'res_id'
                end>
              Properties.ListOptions.SyncMode = True
              Properties.ListSource = frm_dm_ds.dsReseller
              Style.HotTrack = False
              TabOrder = 5
              Width = 287
            end
            object dbmem_cci_annotation: TcxDBMemo
              Left = 17
              Top = 165
              DataBinding.DataField = 'cci_annotation'
              DataBinding.DataSource = dsClientContractIten
              Properties.CharCase = ecUpperCase
              Properties.ScrollBars = ssVertical
              Style.HotTrack = False
              TabOrder = 7
              Height = 50
              Width = 952
            end
            object dxLayoutGroup4: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              SizeOptions.AssignedValues = [sovSizableHorz]
              SizeOptions.SizableHorz = True
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Itens'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 259
              SizeOptions.Width = 966
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 3
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              Control = grid
              ControlOptions.OriginalHeight = 253
              ControlOptions.OriginalWidth = 250
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup8: TdxLayoutGroup
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'Dados'
              ButtonOptions.Buttons = <>
              ItemIndex = 4
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Valor'
              Control = dbedt_cci_value
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Quant.'
              Control = dbedt_cci_quant
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Vl. Desc.'
              Control = dbedt_cci_value_discount
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignVert = avClient
              CaptionOptions.Text = 'Vl. Total'
              Control = dbedt_cci_value_total
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 120
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Valor'
              Control = dbedt_cci_value_reseller
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 100
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Servi'#231'o'
              Control = dblookupcmb_product_pro_cod
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 287
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahRight
              Control = cxDBNavigator1
              ControlOptions.OriginalHeight = 25
              ControlOptions.OriginalWidth = 242
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignVert = avClient
              CaptionOptions.Text = 'Revenda'
              Control = dblookupcmb_cci_reseller
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 287
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutGroup5
              Control = dbmem_cci_annotation
              ControlOptions.OriginalHeight = 50
              ControlOptions.OriginalWidth = 185
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'Revenda'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutGroup4
              CaptionOptions.Text = 'Anota'#231#245'es'
              ButtonOptions.Buttons = <>
              Index = 2
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
  inherited cxGridPopupMenu_1: TcxGridPopupMenu [11]
  end
  inherited mem: TFDMemTable [12]
    Active = True
    FieldDefs = <
      item
        Name = 'cli_ctr_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'client_cli_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'reseller_res_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'requisition_req_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cli_ctr_id'
        DataType = ftLongWord
      end
      item
        Name = 'cli_ctr_value_reseller'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cli_ctr_date_signature'
        DataType = ftDate
      end
      item
        Name = 'cli_ctr_start_service'
        DataType = ftDate
      end
      item
        Name = 'cli_ctr_status'
        DataType = ftShortint
      end
      item
        Name = 'cli_ctr_annotation'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'cli_ctr_dt_registration'
        DataType = ftDateTime
      end>
    IndexFieldNames = 'cli_ctr_id'
    StoreDefs = True
    object memcli_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cli_ctr_cod'
      Origin = 'cli_ctr_cod'
      Size = 32
    end
    object memclient_cli_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cliente'
      FieldName = 'client_cli_cod'
      Origin = 'client_cli_cod'
      Size = 32
    end
    object memreseller_res_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Revendedor'
      FieldName = 'reseller_res_cod'
      Origin = 'reseller_res_cod'
      Size = 32
    end
    object memrequisition_req_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Proposta'
      FieldName = 'requisition_req_cod'
      Origin = 'requisition_req_cod'
      Size = 32
    end
    object memcli_ctr_id: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'ID'
      FieldName = 'cli_ctr_id'
      Origin = 'cli_ctr_id'
    end
    object memcli_ctr_value_reseller: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Revenda'
      FieldName = 'cli_ctr_value_reseller'
      Origin = 'cli_ctr_value_reseller'
      Precision = 12
    end
    object memcli_ctr_date_signature: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_ctr_date_signature'
      Origin = 'cli_ctr_date_signature'
    end
    object memcli_ctr_start_service: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Inic.'
      FieldName = 'cli_ctr_start_service'
      Origin = 'cli_ctr_start_service'
    end
    object memcli_ctr_status: TShortintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'cli_ctr_status'
      Origin = 'cli_ctr_status'
    end
    object memcli_ctr_annotation: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'cli_ctr_annotation'
      Origin = 'cli_ctr_annotation'
      Size = 255
    end
    object memcli_ctr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cli_ctr_dt_registration'
      Origin = 'cli_ctr_dt_registration'
    end
    object memreseller_name: TStringField
      DisplayLabel = 'Revenda'
      FieldKind = fkLookup
      FieldName = 'reseller_name'
      LookupDataSet = frm_dm_ds.memReseller
      LookupKeyFields = 'res_cod'
      LookupResultField = 'res_first_name'
      KeyFields = 'reseller_res_cod'
      Size = 85
      Lookup = True
    end
    object memclient_name: TStringField
      DisplayLabel = 'Cliente'
      FieldKind = fkLookup
      FieldName = 'client_name'
      LookupDataSet = frm_dm_ds.memClient
      LookupKeyFields = 'cli_cod'
      LookupResultField = 'cli_first_name'
      KeyFields = 'client_cli_cod'
      Size = 85
      Lookup = True
    end
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
  object memClientContractIten: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cci_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'client_contract_cli_ctr_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'product_pro_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'reseller_res_cod'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'cci_value'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_quant'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_value_discount'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_value_total'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_value_reseller'
        DataType = ftBCD
        Precision = 12
        Size = 4
      end
      item
        Name = 'cci_annotation'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'cci_dt_registration'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    IndexFieldNames = 'client_contract_cli_ctr_cod'
    MasterSource = ds
    MasterFields = 'cli_ctr_cod'
    DetailFields = 'client_contract_cli_ctr_cod'
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 800
    Top = 56
    object memClientContractItencci_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'C'#243'd.'
      FieldName = 'cci_cod'
      Origin = 'cci_cod'
      Size = 32
    end
    object memClientContractItenclient_contract_cli_ctr_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato'
      FieldName = 'client_contract_cli_ctr_cod'
      Origin = 'client_contract_cli_ctr_cod'
      Size = 32
    end
    object memClientContractItenproduct_pro_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'product_pro_cod'
      Origin = 'product_pro_cod'
      Size = 32
    end
    object memClientContractItenreseller_res_cod: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Revenda'
      FieldName = 'reseller_res_cod'
      Origin = 'reseller_res_cod'
      Size = 32
    end
    object memClientContractItencci_value: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'cci_value'
      Origin = 'cci_value'
      Precision = 12
    end
    object memClientContractItencci_quant: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quant.'
      FieldName = 'cci_quant'
      Origin = 'cci_quant'
      Precision = 12
    end
    object memClientContractItencci_value_discount: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Desc.'
      FieldName = 'cci_value_discount'
      Origin = 'cci_value_discount'
      Precision = 12
    end
    object memClientContractItencci_value_total: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Total'
      FieldName = 'cci_value_total'
      Origin = 'cci_value_total'
      Precision = 12
    end
    object memClientContractItencci_value_reseller: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Vl. Revenda'
      FieldName = 'cci_value_reseller'
      Origin = 'cci_value_reseller'
      Precision = 12
    end
    object memClientContractItencci_annotation: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Anota'#231#245'es'
      FieldName = 'cci_annotation'
      Origin = 'cci_annotation'
      Size = 255
    end
    object memClientContractItencci_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'cci_dt_registration'
      Origin = 'cci_dt_registration'
    end
    object memClientContractItenproduct_name: TStringField
      DisplayLabel = 'Produto'
      FieldKind = fkLookup
      FieldName = 'product_name'
      LookupDataSet = frm_dm_ds.memProduct
      LookupKeyFields = 'pro_cod'
      LookupResultField = 'pro_name'
      KeyFields = 'product_pro_cod'
      Size = 85
      Lookup = True
    end
  end
  object dsClientContractIten: TDataSource
    DataSet = memClientContractIten
    Left = 832
    Top = 56
  end
end
