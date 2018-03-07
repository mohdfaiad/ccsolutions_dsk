inherited frm_employee: Tfrm_employee
  Caption = 'Manuten'#231#227'o: Funcion'#225'rios'
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
          object cxGrid_1DBTableView1emp_id: TcxGridDBColumn
            DataBinding.FieldName = 'emp_id'
            Width = 75
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            DataBinding.FieldName = 'contract_ctr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1role_rol_id: TcxGridDBColumn
            DataBinding.FieldName = 'role_rol_id'
            Width = 75
          end
          object cxGrid_1DBTableView1emp_type: TcxGridDBColumn
            DataBinding.FieldName = 'emp_type'
            Width = 50
          end
          object cxGrid_1DBTableView1emp_name: TcxGridDBColumn
            DataBinding.FieldName = 'emp_name'
            Width = 250
          end
          object cxGrid_1DBTableView1emp_nickname: TcxGridDBColumn
            DataBinding.FieldName = 'emp_nickname'
            Width = 250
          end
          object cxGrid_1DBTableView1emp_dt_admission: TcxGridDBColumn
            DataBinding.FieldName = 'emp_dt_admission'
            Width = 75
          end
          object cxGrid_1DBTableView1emp_dt_resignation: TcxGridDBColumn
            DataBinding.FieldName = 'emp_dt_resignation'
            Width = 75
          end
          object cxGrid_1DBTableView1emp_sex: TcxGridDBColumn
            DataBinding.FieldName = 'emp_sex'
            Width = 50
          end
          object cxGrid_1DBTableView1emp_dt_birth: TcxGridDBColumn
            DataBinding.FieldName = 'emp_dt_birth'
            Width = 75
          end
          object cxGrid_1DBTableView1emp_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'emp_dt_registration'
            Width = 75
          end
          object cxGrid_1DBTableView1emp_cpf_number: TcxGridDBColumn
            DataBinding.FieldName = 'emp_cpf_number'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_rg_number: TcxGridDBColumn
            DataBinding.FieldName = 'emp_rg_number'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_ctps_number: TcxGridDBColumn
            DataBinding.FieldName = 'emp_ctps_number'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_ctps_serial: TcxGridDBColumn
            DataBinding.FieldName = 'emp_ctps_serial'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_ctps_state: TcxGridDBColumn
            DataBinding.FieldName = 'emp_ctps_state'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_ctps_date: TcxGridDBColumn
            DataBinding.FieldName = 'emp_ctps_date'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_cam_number: TcxGridDBColumn
            DataBinding.FieldName = 'emp_cam_number'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_cnh_number: TcxGridDBColumn
            DataBinding.FieldName = 'emp_cnh_number'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_cnh_category: TcxGridDBColumn
            DataBinding.FieldName = 'emp_cnh_category'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_cnh_date_expiration: TcxGridDBColumn
            DataBinding.FieldName = 'emp_cnh_date_expiration'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_titulo_eleitor_number: TcxGridDBColumn
            DataBinding.FieldName = 'emp_titulo_eleitor_number'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_titulo_eleitor_zone: TcxGridDBColumn
            DataBinding.FieldName = 'emp_titulo_eleitor_zone'
            Width = 150
          end
          object cxGrid_1DBTableView1emp_titulo_eleitor_section: TcxGridDBColumn
            DataBinding.FieldName = 'emp_titulo_eleitor_section'
            Width = 150
          end
          object cxGrid_1DBTableView1emp_status_marital: TcxGridDBColumn
            DataBinding.FieldName = 'emp_status_marital'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_nationality: TcxGridDBColumn
            DataBinding.FieldName = 'emp_nationality'
            Width = 150
          end
          object cxGrid_1DBTableView1emp_naturalness_uf: TcxGridDBColumn
            DataBinding.FieldName = 'emp_naturalness_uf'
            Width = 75
          end
          object cxGrid_1DBTableView1emp_naturalness_city: TcxGridDBColumn
            DataBinding.FieldName = 'emp_naturalness_city'
            Width = 150
          end
          object cxGrid_1DBTableView1emp_name_father: TcxGridDBColumn
            DataBinding.FieldName = 'emp_name_father'
            Width = 250
          end
          object cxGrid_1DBTableView1emp_name_mother: TcxGridDBColumn
            DataBinding.FieldName = 'emp_name_mother'
            Width = 250
          end
          object cxGrid_1DBTableView1emp_add_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_zipcode'
            Width = 75
          end
          object cxGrid_1DBTableView1emp_add_address: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_address'
            Width = 200
          end
          object cxGrid_1DBTableView1emp_add_number: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_number'
            Width = 50
          end
          object cxGrid_1DBTableView1emp_add_street: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_street'
            Width = 150
          end
          object cxGrid_1DBTableView1emp_add_complement: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_complement'
            Width = 200
          end
          object cxGrid_1DBTableView1emp_add_city: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_city'
            Width = 150
          end
          object cxGrid_1DBTableView1emp_add_state: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_state'
            Width = 50
          end
          object cxGrid_1DBTableView1emp_add_country: TcxGridDBColumn
            DataBinding.FieldName = 'emp_add_country'
            Width = 150
          end
          object cxGrid_1DBTableView1emp_phone1: TcxGridDBColumn
            DataBinding.FieldName = 'emp_phone1'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_phone2: TcxGridDBColumn
            DataBinding.FieldName = 'emp_phone2'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_phone3: TcxGridDBColumn
            DataBinding.FieldName = 'emp_phone3'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_phone4: TcxGridDBColumn
            DataBinding.FieldName = 'emp_phone4'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_contact: TcxGridDBColumn
            DataBinding.FieldName = 'emp_contact'
            Width = 100
          end
          object cxGrid_1DBTableView1emp_image: TcxGridDBColumn
            DataBinding.FieldName = 'emp_image'
            Width = 75
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
              Left = 88
              DataBinding.DataField = 'emp_id'
              ExplicitLeft = 88
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 287
              DataBinding.DataField = 'emp_dt_registration'
              ExplicitLeft = 287
            end
            object cxDBTextEdit31: TcxDBTextEdit [2]
              Left = 88
              Top = 238
              DataBinding.DataField = 'emp_name_mother'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 14
              Width = 320
            end
            object cxDBTextEdit30: TcxDBTextEdit [3]
              Left = 88
              Top = 265
              DataBinding.DataField = 'emp_name_father'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 15
              Width = 320
            end
            object cxDBTextEdit28: TcxDBTextEdit [4]
              Left = 88
              Top = 211
              DataBinding.DataField = 'emp_naturalness_uf'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit29: TcxDBTextEdit [5]
              Left = 287
              Top = 211
              DataBinding.DataField = 'emp_naturalness_city'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object cxDBImage1: TcxDBImage [6]
              Left = 591
              Top = 103
              DataBinding.DataField = 'emp_image'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Height = 102
              Width = 140
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox [7]
              Left = 88
              Top = 103
              DataBinding.DataField = 'role_rol_id'
              DataBinding.DataSource = ds
              Properties.DropDownAutoSize = True
              Properties.KeyFieldNames = 'rol_id'
              Properties.ListColumns = <
                item
                  Caption = 'Nome'
                  Width = 250
                  FieldName = 'rol_name'
                end
                item
                  Caption = 'C'#243'd. ID'
                  Width = 75
                  FieldName = 'rol_id'
                end>
              Properties.ListSource = ds_role
              Style.HotTrack = False
              TabOrder = 2
              Width = 320
            end
            object cxDBTextEdit1: TcxDBTextEdit [8]
              Left = 88
              Top = 130
              DataBinding.DataField = 'emp_name'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 320
            end
            object cxDBTextEdit2: TcxDBTextEdit [9]
              Left = 464
              Top = 130
              DataBinding.DataField = 'emp_nickname'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit32: TcxDBTextEdit [10]
              Left = 464
              Top = 103
              DataBinding.DataField = 'emp_status'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [11]
              Left = 88
              Top = 157
              DataBinding.DataField = 'emp_dt_admission'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBDateEdit2: TcxDBDateEdit [12]
              Left = 287
              Top = 157
              DataBinding.DataField = 'emp_dt_resignation'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBDateEdit3: TcxDBDateEdit [13]
              Left = 464
              Top = 157
              DataBinding.DataField = 'emp_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit27: TcxDBTextEdit [14]
              Left = 88
              Top = 184
              DataBinding.DataField = 'emp_nationality'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit26: TcxDBTextEdit [15]
              Left = 287
              Top = 184
              DataBinding.DataField = 'emp_status_marital'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup1: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahClient
              AlignVert = avTop
            end
            object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem39: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'M'#227'e'
              Control = cxDBTextEdit31
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem38: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Pai'
              Control = cxDBTextEdit30
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Natur. UF'
              Control = cxDBTextEdit28
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem37: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Natur. Cidade'
              Control = cxDBTextEdit29
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem41: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
              Control = cxDBImage1
              ControlOptions.OriginalHeight = 102
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem42: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup14
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Fun'#231#227'o'
              Control = cxDBLookupComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Apelido'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem40: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup14
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Status'
              Control = cxDBTextEdit32
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dt. Adm.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Dem.'
              Control = cxDBDateEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Nasc.'
              Control = cxDBDateEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem35: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nacionalidade'
              Control = cxDBTextEdit27
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem34: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado Civil'
              Control = cxDBTextEdit26
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup2
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 3
              AutoCreated = True
            end
          end
        end
        object cxTabSheet_address: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
          object dxLayoutControl_address: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 61
              Top = 92
              DataBinding.DataField = 'emp_add_city'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 220
              Top = 92
              DataBinding.DataField = 'emp_add_country'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 380
              Top = 92
              DataBinding.DataField = 'emp_add_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 61
              Top = 157
              DataBinding.DataField = 'emp_phone1'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit22: TcxDBTextEdit
              Left = 220
              Top = 157
              DataBinding.DataField = 'emp_phone2'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 61
              Top = 184
              DataBinding.DataField = 'emp_contact'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit24: TcxDBTextEdit
              Left = 380
              Top = 157
              DataBinding.DataField = 'emp_phone4'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit23: TcxDBTextEdit
              Left = 545
              Top = 157
              DataBinding.DataField = 'emp_phone3'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'emp_add_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'emp_add_address'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 220
              Top = 65
              DataBinding.DataField = 'emp_add_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 380
              Top = 65
              DataBinding.DataField = 'emp_add_street'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 545
              Top = 65
              DataBinding.DataField = 'emp_add_complement'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object dxLayoutControl_addressGroup_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = False
              SizeOptions.SizableVert = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avClient
              CaptionOptions.Text = 'UF'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit21
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit22
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl_addressGroup_Root
              CaptionOptions.Text = 'Comercial'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutGroup10: TdxLayoutGroup
              Parent = dxLayoutControl_addressGroup_Root
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem33: TdxLayoutItem
              Parent = dxLayoutGroup10
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit25
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem32: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 4'
              Control = cxDBTextEdit24
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem31: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit23
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup5
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
        end
        object cxTabSheet_documentation: TcxTabSheet
          Caption = 'Documentos'
          object dxLayoutControl_documentation: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 47
              Top = 38
              DataBinding.DataField = 'emp_rg_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 222
              Top = 38
              DataBinding.DataField = 'emp_cpf_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 401
              Top = 38
              DataBinding.DataField = 'emp_cam_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 222
              Top = 103
              DataBinding.DataField = 'emp_titulo_eleitor_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit19: TcxDBTextEdit
              Left = 222
              Top = 130
              DataBinding.DataField = 'emp_titulo_eleitor_zone'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit20: TcxDBTextEdit
              Left = 222
              Top = 157
              DataBinding.DataField = 'emp_titulo_eleitor_section'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 47
              Top = 103
              DataBinding.DataField = 'emp_ctps_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 47
              Top = 130
              DataBinding.DataField = 'emp_ctps_serial'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 47
              Top = 157
              DataBinding.DataField = 'emp_ctps_state'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBDateEdit5: TcxDBDateEdit
              Left = 47
              Top = 184
              DataBinding.DataField = 'emp_ctps_date'
              DataBinding.DataSource = ds
              Properties.DateButtons = [btnClear, btnToday]
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 401
              Top = 103
              DataBinding.DataField = 'emp_cnh_number'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 401
              Top = 130
              DataBinding.DataField = 'emp_cnh_category'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBDateEdit4: TcxDBDateEdit
              Left = 401
              Top = 157
              DataBinding.DataField = 'emp_cnh_date_expiration'
              DataBinding.DataSource = ds
              Properties.DateButtons = [btnClear, btnToday]
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object dxLayoutControl_documentationGroup_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 1
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'RG'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 0
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'CPF'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup8: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'CAM'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 2
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl_documentationGroup_Root
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutGroup9: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup16
              CaptionOptions.Text = 'Titulo de Eleitor'
              ButtonOptions.Buttons = <>
              Index = 1
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutGroup9
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit18
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutGroup9
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Zona'
              Control = cxDBTextEdit19
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutGroup9
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Se'#231#227'o'
              Control = cxDBTextEdit20
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutControl_documentationGroup_Root
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutGroup7: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup16
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CTPS'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'S'#233'rie'
              Control = cxDBTextEdit15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutGroup7
              AlignHorz = ahRight
              AlignVert = avTop
              CaptionOptions.Text = 'UF'
              Control = cxDBTextEdit16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutGroup7
              AlignHorz = ahRight
              AlignVert = avTop
              CaptionOptions.Text = 'Data'
              Control = cxDBDateEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutAutoCreatedGroup16
              CaptionOptions.Text = 'CNH'
              ButtonOptions.Buttons = <>
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Categ.'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutGroup6
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Valid.'
              Control = cxDBDateEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Filhos'
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxGrid1: TcxGrid
              Left = 10
              Top = 10
              Width = 742
              Height = 200
              Images = cxImageList_1
              TabOrder = 0
              object cxGrid1DBTableView1: TcxGridDBTableView
                Navigator.Buttons.CustomButtons = <>
                Navigator.Visible = True
                DataController.DataSource = ds_employee_children
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid1DBTableView1emp_chi_id: TcxGridDBColumn
                  DataBinding.FieldName = 'emp_chi_id'
                  Width = 75
                end
                object cxGrid1DBTableView1employee_emp_id: TcxGridDBColumn
                  DataBinding.FieldName = 'employee_emp_id'
                  Width = 75
                end
                object cxGrid1DBTableView1emp_chi_name: TcxGridDBColumn
                  DataBinding.FieldName = 'emp_chi_name'
                  Width = 250
                end
                object cxGrid1DBTableView1emp_chi_dt_birth: TcxGridDBColumn
                  DataBinding.FieldName = 'emp_chi_dt_birth'
                  Width = 75
                end
                object cxGrid1DBTableView1emp_chi_sex: TcxGridDBColumn
                  DataBinding.FieldName = 'emp_chi_sex'
                  Width = 50
                end
                object cxGrid1DBTableView1emp_chi_dt_registration: TcxGridDBColumn
                  DataBinding.FieldName = 'emp_chi_dt_registration'
                  Width = 125
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object dxLayoutGroup11: TdxLayoutGroup
              AlignHorz = ahParentManaged
              AlignVert = avParentManaged
              CaptionOptions.Visible = False
              LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutItem43: TdxLayoutItem
              Parent = dxLayoutGroup11
              Control = cxGrid1
              ControlOptions.OriginalHeight = 200
              ControlOptions.OriginalWidth = 250
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
      'select * from employee')
    object qryemp_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'emp_id'
      Origin = 'emp_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryrole_rol_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fun'#231#227'o ID'
      FieldName = 'role_rol_id'
      Origin = 'role_rol_id'
    end
    object qryemp_type: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'emp_type'
      Origin = 'emp_type'
      FixedChar = True
      Size = 1
    end
    object qryemp_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'emp_name'
      Origin = 'emp_name'
      Size = 50
    end
    object qryemp_nickname: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Apelido'
      FieldName = 'emp_nickname'
      Origin = 'emp_nickname'
      Size = 50
    end
    object qryemp_dt_admission: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Adm.'
      FieldName = 'emp_dt_admission'
      Origin = 'emp_dt_admission'
    end
    object qryemp_dt_resignation: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Dem.'
      FieldName = 'emp_dt_resignation'
      Origin = 'emp_dt_resignation'
    end
    object qryemp_sex: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'emp_sex'
      Origin = 'emp_sex'
      FixedChar = True
      Size = 1
    end
    object qryemp_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'emp_dt_birth'
      Origin = 'emp_dt_birth'
    end
    object qryemp_cpf_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'emp_cpf_number'
      Origin = 'emp_cpf_number'
      Size = 25
    end
    object qryemp_rg_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'RG'
      FieldName = 'emp_rg_number'
      Origin = 'emp_rg_number'
      Size = 25
    end
    object qryemp_ctps_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CTPS'
      FieldName = 'emp_ctps_number'
      Origin = 'emp_ctps_number'
      Size = 25
    end
    object qryemp_ctps_serial: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CTPS S'#233'rie'
      FieldName = 'emp_ctps_serial'
      Origin = 'emp_ctps_serial'
      Size = 25
    end
    object qryemp_ctps_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CTPS UF'
      FieldName = 'emp_ctps_state'
      Origin = 'emp_ctps_state'
      FixedChar = True
      Size = 3
    end
    object qryemp_ctps_date: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CTPS Data'
      FieldName = 'emp_ctps_date'
      Origin = 'emp_ctps_date'
    end
    object qryemp_cam_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CAM'
      FieldName = 'emp_cam_number'
      Origin = 'emp_cam_number'
      Size = 25
    end
    object qryemp_cnh_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNH'
      FieldName = 'emp_cnh_number'
      Origin = 'emp_cnh_number'
      Size = 25
    end
    object qryemp_cnh_category: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNH Categ.'
      FieldName = 'emp_cnh_category'
      Origin = 'emp_cnh_category'
      Size = 25
    end
    object qryemp_cnh_date_expiration: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CNH Valid.'
      FieldName = 'emp_cnh_date_expiration'
      Origin = 'emp_cnh_date_expiration'
    end
    object qryemp_titulo_eleitor_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Titulo de Eleitor'
      FieldName = 'emp_titulo_eleitor_number'
      Origin = 'emp_titulo_eleitor_number'
      Size = 25
    end
    object qryemp_titulo_eleitor_zone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Titulo de Eleitor Zona'
      FieldName = 'emp_titulo_eleitor_zone'
      Origin = 'emp_titulo_eleitor_zone'
      Size = 25
    end
    object qryemp_titulo_eleitor_section: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Titulo de Eleitor Se'#231#227'o'
      FieldName = 'emp_titulo_eleitor_section'
      Origin = 'emp_titulo_eleitor_section'
      Size = 25
    end
    object qryemp_status_marital: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Estado Civil'
      FieldName = 'emp_status_marital'
      Origin = 'emp_status_marital'
      Size = 25
    end
    object qryemp_nationality: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nacionalidade'
      FieldName = 'emp_nationality'
      Origin = 'emp_nationality'
      Size = 25
    end
    object qryemp_naturalness_uf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Natur. UF'
      FieldName = 'emp_naturalness_uf'
      Origin = 'emp_naturalness_uf'
      FixedChar = True
      Size = 3
    end
    object qryemp_naturalness_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Natur. Cidade'
      FieldName = 'emp_naturalness_city'
      Origin = 'emp_naturalness_city'
      Size = 35
    end
    object qryemp_name_father: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pai'
      FieldName = 'emp_name_father'
      Origin = 'emp_name_father'
      Size = 50
    end
    object qryemp_name_mother: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#227'e'
      FieldName = 'emp_name_mother'
      Origin = 'emp_name_mother'
      Size = 50
    end
    object qryemp_add_zipcode: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CEP'
      FieldName = 'emp_add_zipcode'
      Origin = 'emp_add_zipcode'
      Size = 9
    end
    object qryemp_add_address: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Rua'
      FieldName = 'emp_add_address'
      Origin = 'emp_add_address'
      Size = 9
    end
    object qryemp_add_number: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#250'm.'
      FieldName = 'emp_add_number'
      Origin = 'emp_add_number'
      Size = 9
    end
    object qryemp_add_street: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Bairro'
      FieldName = 'emp_add_street'
      Origin = 'emp_add_street'
      Size = 45
    end
    object qryemp_add_complement: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Compl.'
      FieldName = 'emp_add_complement'
      Origin = 'emp_add_complement'
      Size = 50
    end
    object qryemp_add_city: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'emp_add_city'
      Origin = 'emp_add_city'
      Size = 35
    end
    object qryemp_add_state: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'emp_add_state'
      Origin = 'emp_add_state'
      FixedChar = True
      Size = 3
    end
    object qryemp_add_country: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Pa'#237's'
      FieldName = 'emp_add_country'
      Origin = 'emp_add_country'
      Size = 25
    end
    object qryemp_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'emp_phone1'
      Origin = 'emp_phone1'
      Size = 15
    end
    object qryemp_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'emp_phone2'
      Origin = 'emp_phone2'
      Size = 15
    end
    object qryemp_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'emp_phone3'
      Origin = 'emp_phone3'
      Size = 15
    end
    object qryemp_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 4'
      FieldName = 'emp_phone4'
      Origin = 'emp_phone4'
      Size = 15
    end
    object qryemp_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'emp_contact'
      Origin = 'emp_contact'
      Size = 25
    end
    object qryemp_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'emp_status'
      Origin = 'emp_status'
      FixedChar = True
      Size = 1
    end
    object qryemp_image: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Foto'
      FieldName = 'emp_image'
      Origin = 'emp_image'
    end
    object qryemp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'emp_dt_registration'
      Origin = 'emp_dt_registration'
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
  object qry_role: TFDQuery [12]
    Active = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from role')
    Left = 639
    Top = 402
  end
  object ds_role: TDataSource [13]
    DataSet = qry_role
    Left = 671
    Top = 402
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  object qry_employee_children: TFDQuery
    Active = True
    IndexFieldNames = 'employee_emp_id'
    MasterSource = ds
    MasterFields = 'emp_id'
    DetailFields = 'employee_emp_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from employee_children')
    Left = 639
    Top = 450
    object qry_employee_childrenemp_chi_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'emp_chi_id'
      Origin = 'emp_chi_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qry_employee_childrenemployee_emp_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'employee_emp_id'
      Origin = 'employee_emp_id'
    end
    object qry_employee_childrenemp_chi_name: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'emp_chi_name'
      Origin = 'emp_chi_name'
      Size = 50
    end
    object qry_employee_childrenemp_chi_dt_birth: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Nasc.'
      FieldName = 'emp_chi_dt_birth'
      Origin = 'emp_chi_dt_birth'
    end
    object qry_employee_childrenemp_chi_sex: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'emp_chi_sex'
      Origin = 'emp_chi_sex'
      FixedChar = True
      Size = 1
    end
    object qry_employee_childrenemp_chi_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'emp_chi_dt_registration'
      Origin = 'emp_chi_dt_registration'
    end
  end
  object ds_employee_children: TDataSource
    DataSet = qry_employee_children
    Left = 671
    Top = 450
  end
end
