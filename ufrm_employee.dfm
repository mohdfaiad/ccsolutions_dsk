inherited frm_employee: Tfrm_employee
  Caption = 'Cadastro de funcio'#225'rio'
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
          object cxGrid_1DBTableView1rec_id: TcxGridDBColumn
            Caption = 'C'#243'd. ID'
            DataBinding.FieldName = 'rec_id'
          end
          object cxGrid_1DBTableView1contract_ctr_id: TcxGridDBColumn
            Caption = 'Contrato ID'
            DataBinding.FieldName = 'contract_ctr_id'
          end
          object cxGrid_1DBTableView1rec_name: TcxGridDBColumn
            Caption = 'Nome'
            DataBinding.FieldName = 'rec_name'
          end
          object cxGrid_1DBTableView1rec_nickname: TcxGridDBColumn
            Caption = 'Apelido'
            DataBinding.FieldName = 'rec_nickname'
          end
          object cxGrid_1DBTableView1rec_sex: TcxGridDBColumn
            Caption = 'Sexo'
            DataBinding.FieldName = 'rec_sex'
          end
          object cxGrid_1DBTableView1rec_dt_birth: TcxGridDBColumn
            Caption = 'Nascimento'
            DataBinding.FieldName = 'rec_dt_birth'
          end
          object cxGrid_1DBTableView1rec_admission: TcxGridDBColumn
            Caption = 'Admiss'#227'o'
            DataBinding.FieldName = 'rec_admission'
          end
          object cxGrid_1DBTableView1rec_resignation: TcxGridDBColumn
            Caption = 'Desligamento'
            DataBinding.FieldName = 'rec_resignation'
          end
          object cxGrid_1DBTableView1rec_cpf_number: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'rec_cpf_number'
          end
          object cxGrid_1DBTableView1rec_rg_number: TcxGridDBColumn
            Caption = 'RG'
            DataBinding.FieldName = 'rec_rg_number'
          end
          object cxGrid_1DBTableView1rec_ctps_number: TcxGridDBColumn
            Caption = 'N'#186' Carteira de Trabalho'
            DataBinding.FieldName = 'rec_ctps_number'
          end
          object cxGrid_1DBTableView1rec_ctps_serial: TcxGridDBColumn
            Caption = 'N'#186' S'#233'rie Carteira de Trabalho'
            DataBinding.FieldName = 'rec_ctps_serial'
          end
          object cxGrid_1DBTableView1rec_state: TcxGridDBColumn
            DataBinding.FieldName = 'rec_state'
          end
          object cxGrid_1DBTableView1rec_date: TcxGridDBColumn
            DataBinding.FieldName = 'rec_date'
          end
          object cxGrid_1DBTableView1rec_cam_number: TcxGridDBColumn
            DataBinding.FieldName = 'rec_cam_number'
          end
          object cxGrid_1DBTableView1rec_cnh_number: TcxGridDBColumn
            DataBinding.FieldName = 'rec_cnh_number'
          end
          object cxGrid_1DBTableView1rec_chn_category: TcxGridDBColumn
            DataBinding.FieldName = 'rec_chn_category'
          end
          object cxGrid_1DBTableView1rec_cnh_dt_expiration: TcxGridDBColumn
            DataBinding.FieldName = 'rec_cnh_dt_expiration'
          end
          object cxGrid_1DBTableView1rec_te_number: TcxGridDBColumn
            DataBinding.FieldName = 'rec_te_number'
          end
          object cxGrid_1DBTableView1rec_te_zone: TcxGridDBColumn
            DataBinding.FieldName = 'rec_te_zone'
          end
          object cxGrid_1DBTableView1rec_te_section: TcxGridDBColumn
            DataBinding.FieldName = 'rec_te_section'
          end
          object cxGrid_1DBTableView1rec_crm: TcxGridDBColumn
            DataBinding.FieldName = 'rec_crm'
          end
          object cxGrid_1DBTableView1rec_status_marital: TcxGridDBColumn
            DataBinding.FieldName = 'rec_status_marital'
          end
          object cxGrid_1DBTableView1rec_nationality: TcxGridDBColumn
            DataBinding.FieldName = 'rec_nationality'
          end
          object cxGrid_1DBTableView1rec_naturalness_uf: TcxGridDBColumn
            DataBinding.FieldName = 'rec_naturalness_uf'
          end
          object cxGrid_1DBTableView1rec_naturalness_city: TcxGridDBColumn
            DataBinding.FieldName = 'rec_naturalness_city'
          end
          object cxGrid_1DBTableView1rec_father_name: TcxGridDBColumn
            DataBinding.FieldName = 'rec_father_name'
          end
          object cxGrid_1DBTableView1rec_mother_name: TcxGridDBColumn
            DataBinding.FieldName = 'rec_mother_name'
          end
          object cxGrid_1DBTableView1rec_add_zipcode: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_zipcode'
          end
          object cxGrid_1DBTableView1rec_add_address: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_address'
          end
          object cxGrid_1DBTableView1rec_add_number: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_number'
          end
          object cxGrid_1DBTableView1rec_add_street: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_street'
          end
          object cxGrid_1DBTableView1rec_add_complement: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_complement'
          end
          object cxGrid_1DBTableView1rec_add_city: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_city'
          end
          object cxGrid_1DBTableView1rec_add_state: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_state'
          end
          object cxGrid_1DBTableView1rec_add_country: TcxGridDBColumn
            DataBinding.FieldName = 'rec_add_country'
          end
          object cxGrid_1DBTableView1rec_phone1: TcxGridDBColumn
            Caption = 'Tel.1'
            DataBinding.FieldName = 'rec_phone1'
          end
          object cxGrid_1DBTableView1rec_phone2: TcxGridDBColumn
            Caption = 'Tel.2'
            DataBinding.FieldName = 'rec_phone2'
          end
          object cxGrid_1DBTableView1rec_phone3: TcxGridDBColumn
            Caption = 'Tel.3'
            DataBinding.FieldName = 'rec_phone3'
          end
          object cxGrid_1DBTableView1rec_phone4: TcxGridDBColumn
            Caption = 'Tel.4'
            DataBinding.FieldName = 'rec_phone4'
          end
          object cxGrid_1DBTableView1rec_contact: TcxGridDBColumn
            DataBinding.FieldName = 'rec_contact'
          end
          object cxGrid_1DBTableView1rec_image: TcxGridDBColumn
            Caption = 'Foto'
            DataBinding.FieldName = 'rec_image'
          end
          object cxGrid_1DBTableView1rec_dt_registration: TcxGridDBColumn
            Caption = 'Dt. Reg.'
            DataBinding.FieldName = 'rec_dt_registration'
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
          ExplicitWidth = 986
          ExplicitHeight = 472
          inherited dxLayoutControl_1: TdxLayoutControl
            ShowDesignSelectors = False
            HighlightRoot = False
            inherited dbedt_id: TcxDBTextEdit
              Left = 88
              DataBinding.DataField = 'rec_id'
              ExplicitLeft = 88
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 287
              DataBinding.DataField = 'rec_dt_registration'
              ExplicitLeft = 287
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 88
              Top = 103
              DataBinding.DataField = 'rec_name'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 320
            end
            object cxDBTextEdit19: TcxDBTextEdit [3]
              Left = 88
              Top = 184
              DataBinding.DataField = 'rec_father_name'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 320
            end
            object cxDBImage1: TcxDBImage [4]
              Left = 414
              Top = 103
              DataBinding.DataField = 'rec_image'
              DataBinding.DataSource = ds
              Properties.GraphicClassName = 'TJPEGImage'
              Style.HotTrack = False
              TabOrder = 12
              Height = 129
              Width = 140
            end
            object cxDBTextEdit20: TcxDBTextEdit [5]
              Left = 88
              Top = 211
              DataBinding.DataField = 'rec_mother_name'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 320
            end
            object cxDBTextEdit22: TcxDBTextEdit [6]
              Left = 88
              Top = 238
              DataBinding.DataField = 'rec_nationality'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBComboBox1: TcxDBComboBox [7]
              Left = 88
              Top = 157
              DataBinding.DataField = 'rec_sex'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'M - MASCULINO'
                'F - FEMININO')
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [8]
              Left = 88
              Top = 130
              DataBinding.DataField = 'rec_nickname'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBDateEdit1: TcxDBDateEdit [9]
              Left = 287
              Top = 130
              DataBinding.DataField = 'rec_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBComboBox2: TcxDBComboBox [10]
              Left = 287
              Top = 157
              DataBinding.DataField = 'rec_status_marital'
              DataBinding.DataSource = ds
              Properties.Items.Strings = (
                'S - SOLTEIRO '
                'C - CASADO'
                'D - DIVORCIADO')
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit23: TcxDBTextEdit [11]
              Left = 88
              Top = 265
              DataBinding.DataField = 'rec_naturalness_uf'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit24: TcxDBTextEdit [12]
              Left = 287
              Top = 238
              DataBinding.DataField = 'rec_naturalness_city'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            inherited dxLayoutControl_1Group_Root: TdxLayoutGroup
              ItemIndex = 1
            end
            inherited dxLayoutGroup2: TdxLayoutGroup
              AlignHorz = ahRight
              AlignVert = avTop
              LayoutDirection = ldHorizontal
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup12: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem21: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Pai'
              Control = cxDBTextEdit19
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              Control = cxDBImage1
              ControlOptions.OriginalHeight = 129
              ControlOptions.OriginalWidth = 140
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem22: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup12
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'M'#227'e'
              Control = cxDBTextEdit20
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 320
              ControlOptions.ShowBorder = False
              Index = 4
            end
            object dxLayoutItem24: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Nacionalidade'
              Control = cxDBTextEdit22
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem35: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Sexo'
              Control = cxDBComboBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Apelido'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup2
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Nasc.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup12
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup12
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup18
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem41: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              CaptionOptions.Text = 'Estado Civil'
              Control = cxDBComboBox2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem25: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup7
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Natur. UF'
              Control = cxDBTextEdit23
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem26: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup18
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Natur. Cidade'
              Control = cxDBTextEdit24
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup18: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup12
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 5
              AutoCreated = True
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Documentos'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object dxLayoutControl3: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 762
            Height = 432
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            object cxDBTextEdit12: TcxDBTextEdit
              Left = 107
              Top = 119
              DataBinding.DataField = 'rec_cnh_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit16: TcxDBTextEdit
              Left = 336
              Top = 173
              DataBinding.DataField = 'rec_te_zone'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit8: TcxDBTextEdit
              Left = 107
              Top = 38
              DataBinding.DataField = 'rec_cpf_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 336
              Top = 38
              DataBinding.DataField = 'rec_rg_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 107
              Top = 65
              DataBinding.DataField = 'rec_ctps_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 336
              Top = 65
              DataBinding.DataField = 'rec_ctps_serial'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit15: TcxDBTextEdit
              Left = 107
              Top = 173
              DataBinding.DataField = 'rec_te_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit11: TcxDBTextEdit
              Left = 107
              Top = 146
              DataBinding.DataField = 'rec_cam_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit18: TcxDBTextEdit
              Left = 538
              Top = 173
              DataBinding.DataField = 'rec_te_section'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 13
              Width = 121
            end
            object cxDBTextEdit17: TcxDBTextEdit
              Left = 107
              Top = 200
              DataBinding.DataField = 'rec_crm_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object cxDBTextEdit13: TcxDBTextEdit
              Left = 538
              Top = 119
              DataBinding.DataField = 'rec_cnh_dt_expiration'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit14: TcxDBTextEdit
              Left = 336
              Top = 119
              DataBinding.DataField = 'rec_chn_category'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit10: TcxDBTextEdit
              Left = 107
              Top = 92
              DataBinding.DataField = 'rec_date'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit9: TcxDBTextEdit
              Left = 336
              Top = 92
              DataBinding.DataField = 'rec_state'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dxLayoutControl3Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Visible = False
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup3: TdxLayoutGroup
              Parent = dxLayoutControl3Group_Root
              CaptionOptions.Text = 'Documentos'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem14: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#186' CNH'
              Control = cxDBTextEdit12
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup14: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 2
              AutoCreated = True
            end
            object dxLayoutItem18: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Zona Eleitoral'
              Control = cxDBTextEdit16
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup15: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup3
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 4
              AutoCreated = True
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CPF'
              Control = cxDBTextEdit8
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup6
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'RG'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#186' Cart. Trabalho'
              Control = cxDBTextEdit6
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup5
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'S'#233'rie Cart. Trabalho'
              Control = cxDBTextEdit7
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem17: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup16
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'T'#237'tulo de Eleitor'
              Control = cxDBTextEdit15
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem13: TdxLayoutItem
              Parent = dxLayoutGroup3
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'N'#186' CAM'
              Control = cxDBTextEdit11
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup14
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem20: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Se'#231#227'o Eleitotal'
              Control = cxDBTextEdit18
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem19: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup16
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'N'#186' CRM'
              Control = cxDBTextEdit17
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup16: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup15
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem15: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup14
              AlignHorz = ahLeft
              AlignVert = avBottom
              CaptionOptions.Text = 'Dt. Exp. CNH'
              Control = cxDBTextEdit13
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem16: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup8
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Categoria CNH'
              Control = cxDBTextEdit14
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem12: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup17
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Dt. Emiss'#227'o'
              Control = cxDBTextEdit10
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup17
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado UF'
              Control = cxDBTextEdit9
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup17: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup4
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
          end
          object StatusBar1: TStatusBar
            Left = 0
            Top = 22
            Width = 0
            Height = 19
            Align = alNone
            Panels = <>
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
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
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 61
              Top = 38
              DataBinding.DataField = 'rec_add_zipcode'
              DataBinding.DataSource = ds
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxDBButtonEdit1PropertiesButtonClick
              Style.HotTrack = False
              TabOrder = 0
              Width = 121
            end
            object cxDBTextEdit25: TcxDBTextEdit
              Left = 61
              Top = 65
              DataBinding.DataField = 'rec_add_address'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 1
              Width = 121
            end
            object cxDBTextEdit29: TcxDBTextEdit
              Left = 226
              Top = 65
              DataBinding.DataField = 'rec_add_number'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxDBTextEdit26: TcxDBTextEdit
              Left = 551
              Top = 65
              DataBinding.DataField = 'rec_add_complement'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cxDBTextEdit27: TcxDBTextEdit
              Left = 386
              Top = 65
              DataBinding.DataField = 'rec_add_street'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit28: TcxDBTextEdit
              Left = 61
              Top = 92
              DataBinding.DataField = 'rec_add_city'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object cxDBTextEdit32: TcxDBTextEdit
              Left = 226
              Top = 92
              DataBinding.DataField = 'rec_add_state'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit31: TcxDBTextEdit
              Left = 386
              Top = 92
              DataBinding.DataField = 'rec_add_country'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 7
              Width = 121
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 61
              Top = 157
              DataBinding.DataField = 'rec_phone1'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 8
              Width = 121
            end
            object cxDBTextEdit33: TcxDBTextEdit
              Left = 61
              Top = 184
              DataBinding.DataField = 'rec_contact'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 12
              Width = 121
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 226
              Top = 157
              DataBinding.DataField = 'rec_phone2'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 9
              Width = 121
            end
            object cxDBTextEdit21: TcxDBTextEdit
              Left = 386
              Top = 157
              DataBinding.DataField = 'rec_phone3'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 10
              Width = 121
            end
            object cxDBTextEdit30: TcxDBTextEdit
              Left = 551
              Top = 157
              DataBinding.DataField = 'rec_phone4'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 11
              Width = 121
            end
            object dxLayoutControl1Group_Root: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Endere'#231'o'
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahClient
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup13: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup4
              AlignHorz = ahLeft
              AlignVert = avTop
              Index = 0
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup13
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutItem23: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup13
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'CEP'
              Control = cxDBButtonEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem27: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Rua'
              Control = cxDBTextEdit25
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem31: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'N'#250'm.'
              Control = cxDBTextEdit29
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem28: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Compl.'
              Control = cxDBTextEdit26
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object dxLayoutItem29: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup9
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Bairro'
              Control = cxDBTextEdit27
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem30: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Cidade'
              Control = cxDBTextEdit28
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem34: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Estado'
              Control = cxDBTextEdit32
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem33: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Pa'#237's'
              Control = cxDBTextEdit31
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutGroup6: TdxLayoutGroup
              Parent = dxLayoutControl1Group_Root
              AlignHorz = ahClient
              AlignVert = avTop
              CaptionOptions.Text = 'Contato'
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              Index = 1
            end
            object dxLayoutItem32: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 1'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem39: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup10
              AlignHorz = ahLeft
              CaptionOptions.Text = 'Contato'
              Control = cxDBTextEdit33
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup6
              AlignHorz = ahLeft
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem36: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 2'
              Control = cxDBTextEdit5
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutAutoCreatedGroup10
              AlignVert = avClient
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem37: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 3'
              Control = cxDBTextEdit21
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem38: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup11
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Tel. 4'
              Control = cxDBTextEdit30
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 3
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
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from record')
    object qryrec_id: TFDAutoIncField
      FieldName = 'rec_id'
      Origin = 'rec_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      Size = 50
    end
    object qryrec_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nickname'
      Origin = 'rec_nickname'
      Size = 50
    end
    object qryrec_sex: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_sex'
      Origin = 'rec_sex'
      FixedChar = True
      Size = 1
    end
    object qryrec_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_dt_birth'
      Origin = 'rec_dt_birth'
    end
    object qryrec_cpf_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cpf_number'
      Origin = 'rec_cpf_number'
      Size = 25
    end
    object qryrec_rg_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_rg_number'
      Origin = 'rec_rg_number'
      Size = 25
    end
    object qryrec_ctps_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_number'
      Origin = 'rec_ctps_number'
      Size = 25
    end
    object qryrec_ctps_serial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_serial'
      Origin = 'rec_ctps_serial'
      Size = 25
    end
    object qryrec_ctps_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_state'
      Origin = 'rec_ctps_state'
      FixedChar = True
      Size = 3
    end
    object qryrec_ctps_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_date'
      Origin = 'rec_ctps_date'
    end
    object qryrec_cam_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cam_number'
      Origin = 'rec_cam_number'
      Size = 25
    end
    object qryrec_cnh_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cnh_number'
      Origin = 'rec_cnh_number'
      Size = 25
    end
    object qryrec_chn_category: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_chn_category'
      Origin = 'rec_chn_category'
      Size = 25
    end
    object qryrec_cnh_dt_expiration: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cnh_dt_expiration'
      Origin = 'rec_cnh_dt_expiration'
    end
    object qryrec_te_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_number'
      Origin = 'rec_te_number'
      Size = 25
    end
    object qryrec_te_zone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_zone'
      Origin = 'rec_te_zone'
      Size = 25
    end
    object qryrec_te_section: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_section'
      Origin = 'rec_te_section'
      Size = 25
    end
    object qryrec_crm_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_crm_number'
      Origin = 'rec_crm_number'
      Size = 25
    end
    object qryrec_status_marital: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_status_marital'
      Origin = 'rec_status_marital'
      Size = 25
    end
    object qryrec_nationality: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nationality'
      Origin = 'rec_nationality'
      Size = 25
    end
    object qryrec_naturalness_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_naturalness_uf'
      Origin = 'rec_naturalness_uf'
      FixedChar = True
      Size = 3
    end
    object qryrec_naturalness_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_naturalness_city'
      Origin = 'rec_naturalness_city'
      Size = 35
    end
    object qryrec_father_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_father_name'
      Origin = 'rec_father_name'
      Size = 50
    end
    object qryrec_mother_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_mother_name'
      Origin = 'rec_mother_name'
      Size = 50
    end
    object qryrec_add_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_zipcode'
      Origin = 'rec_add_zipcode'
      Size = 9
    end
    object qryrec_add_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_address'
      Origin = 'rec_add_address'
      Size = 50
    end
    object qryrec_add_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_number'
      Origin = 'rec_add_number'
      Size = 5
    end
    object qryrec_add_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_street'
      Origin = 'rec_add_street'
      Size = 45
    end
    object qryrec_add_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_complement'
      Origin = 'rec_add_complement'
      Size = 50
    end
    object qryrec_add_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_city'
      Origin = 'rec_add_city'
      Size = 35
    end
    object qryrec_add_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_state'
      Origin = 'rec_add_state'
      FixedChar = True
      Size = 3
    end
    object qryrec_add_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_country'
      Origin = 'rec_add_country'
      Size = 25
    end
    object qryrec_phone1: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 1'
      FieldName = 'rec_phone1'
      Origin = 'rec_phone1'
      Size = 15
    end
    object qryrec_phone2: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 2'
      FieldName = 'rec_phone2'
      Origin = 'rec_phone2'
      Size = 15
    end
    object qryrec_phone3: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 3'
      FieldName = 'rec_phone3'
      Origin = 'rec_phone3'
      Size = 15
    end
    object qryrec_phone4: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tel. 4'
      FieldName = 'rec_phone4'
      Origin = 'rec_phone4'
      Size = 15
    end
    object qryrec_contact: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contato'
      FieldName = 'rec_contact'
      Origin = 'rec_contact'
      Size = 25
    end
    object qryrec_image: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'rec_image'
      Origin = 'rec_image'
    end
    object qryrec_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rec_dt_registration'
      Origin = 'rec_dt_registration'
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
  inherited ACBrCEP_1: TACBrCEP
    OnBuscaEfetuada = ACBrCEP_1BuscaEfetuada
  end
end
