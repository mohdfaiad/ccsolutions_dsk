inherited frm_employee_: Tfrm_employee_
  Caption = 'Cadastro de Funcion'#225'rio'
  ClientHeight = 725
  ClientWidth = 970
  OnClose = FormClose
  ExplicitWidth = 986
  ExplicitHeight = 764
  PixelsPerInch = 96
  TextHeight = 13
  inherited bardck_1: TdxBarDockControl
    Width = 970
    ExplicitWidth = 970
  end
  inherited pgctrl_1: TcxPageControl
    Width = 970
    Height = 635
    Properties.ActivePage = tbsht_2
    ExplicitWidth = 970
    ExplicitHeight = 635
    ClientRectBottom = 629
    ClientRectRight = 964
    inherited tbsht_1: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 962
      ExplicitHeight = 602
      inherited pgctrl_2: TcxPageControl
        Width = 962
        Height = 602
        ExplicitWidth = 962
        ExplicitHeight = 602
        ClientRectBottom = 596
        ClientRectRight = 956
        inherited tbsht_3: TcxTabSheet
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 954
          ExplicitHeight = 569
          inherited grid_1: TcxGrid
            Width = 948
            Height = 563
            ExplicitWidth = 948
            ExplicitHeight = 563
            inherited grid_1DBTableView1: TcxGridDBTableView
              object grid_1DBTableView1emp_id: TcxGridDBColumn
                Caption = 'C'#243'digo ID'
                DataBinding.FieldName = 'emp_id'
                Width = 65
              end
              object grid_1DBTableView1rec_name: TcxGridDBColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'rec_name'
                Width = 250
              end
              object grid_1DBTableView1rec_nickname: TcxGridDBColumn
                Caption = 'Apelido'
                DataBinding.FieldName = 'rec_nickname'
                Width = 140
              end
              object grid_1DBTableView1rec_sex: TcxGridDBColumn
                Caption = 'Sexo'
                DataBinding.FieldName = 'rec_sex'
                Width = 50
              end
              object grid_1DBTableView1rec_dt_birth: TcxGridDBColumn
                Caption = 'Nascimento'
                DataBinding.FieldName = 'rec_dt_birth'
                Width = 100
              end
              object grid_1DBTableView1emp_type: TcxGridDBColumn
                Caption = 'Tipo'
                DataBinding.FieldName = 'emp_type'
                Width = 50
              end
              object grid_1DBTableView1emp_status: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'emp_status'
                Width = 50
              end
              object grid_1DBTableView1rec_cpf_number: TcxGridDBColumn
                Caption = 'CPF'
                DataBinding.FieldName = 'rec_cpf_number'
                Width = 100
              end
              object grid_1DBTableView1rec_rg_number: TcxGridDBColumn
                Caption = 'RG'
                DataBinding.FieldName = 'rec_rg_number'
                Width = 100
              end
              object grid_1DBTableView1rec_ctps_number: TcxGridDBColumn
                Caption = 'N'#186' CTPS'
                DataBinding.FieldName = 'rec_ctps_number'
                Width = 100
              end
              object grid_1DBTableView1rec_ctps_serial: TcxGridDBColumn
                Caption = 'N'#186' S'#233'rie'
                DataBinding.FieldName = 'rec_ctps_serial'
                Width = 100
              end
              object grid_1DBTableView1rec_ctps_state: TcxGridDBColumn
                Caption = 'CTPS UF'
                DataBinding.FieldName = 'rec_ctps_state'
                Width = 50
              end
              object grid_1DBTableView1rec_ctps_date: TcxGridDBColumn
                Caption = 'Dt. Emiss'#227'o'
                DataBinding.FieldName = 'rec_ctps_date'
                Width = 100
              end
              object grid_1DBTableView1rec_cam_number: TcxGridDBColumn
                Caption = 'N'#186' CAM'
                DataBinding.FieldName = 'rec_cam_number'
                Width = 100
              end
              object grid_1DBTableView1rec_cnh_number: TcxGridDBColumn
                Caption = 'CNH'
                DataBinding.FieldName = 'rec_cnh_number'
                Width = 100
              end
              object grid_1DBTableView1rec_chn_category: TcxGridDBColumn
                Caption = 'Categoria CNH'
                DataBinding.FieldName = 'rec_chn_category'
                Width = 100
              end
              object grid_1DBTableView1rec_cnh_dt_expiration: TcxGridDBColumn
                Caption = 'CNH Renova'#231#227'o'
                DataBinding.FieldName = 'rec_cnh_dt_expiration'
                Width = 100
              end
              object grid_1DBTableView1rec_te_number: TcxGridDBColumn
                Caption = 'T'#237'tulo Eleitor'
                DataBinding.FieldName = 'rec_te_number'
                Width = 100
              end
              object grid_1DBTableView1rec_te_zone: TcxGridDBColumn
                Caption = 'Zona'
                DataBinding.FieldName = 'rec_te_zone'
                Width = 100
              end
              object grid_1DBTableView1rec_te_section: TcxGridDBColumn
                Caption = 'Se'#231#227'o'
                DataBinding.FieldName = 'rec_te_section'
              end
              object grid_1DBTableView1rec_crm_number: TcxGridDBColumn
                Caption = 'N'#186' CRM'
                DataBinding.FieldName = 'rec_crm_number'
                Width = 100
              end
              object grid_1DBTableView1rec_status_marital: TcxGridDBColumn
                Caption = 'Estado Civil'
                DataBinding.FieldName = 'rec_status_marital'
              end
              object grid_1DBTableView1rec_nationality: TcxGridDBColumn
                Caption = 'Nacionalidade'
                DataBinding.FieldName = 'rec_nationality'
              end
              object grid_1DBTableView1rec_naturalness_uf: TcxGridDBColumn
                Caption = 'UF Naturalidade'
                DataBinding.FieldName = 'rec_naturalness_uf'
                Width = 100
              end
              object grid_1DBTableView1rec_naturalness_city: TcxGridDBColumn
                Caption = 'Cidade Naturalidade'
                DataBinding.FieldName = 'rec_naturalness_city'
                Width = 150
              end
              object grid_1DBTableView1rec_father_name: TcxGridDBColumn
                Caption = 'Pai'
                DataBinding.FieldName = 'rec_father_name'
                Width = 200
              end
              object grid_1DBTableView1rec_mother_name: TcxGridDBColumn
                Caption = 'M'#227'e'
                DataBinding.FieldName = 'rec_mother_name'
                Width = 200
              end
              object grid_1DBTableView1rec_add_zipcode: TcxGridDBColumn
                Caption = 'CEP'
                DataBinding.FieldName = 'rec_add_zipcode'
              end
              object grid_1DBTableView1rec_add_address: TcxGridDBColumn
                Caption = 'Endere'#231'o'
                DataBinding.FieldName = 'rec_add_address'
                Width = 200
              end
              object grid_1DBTableView1rec_add_number: TcxGridDBColumn
                Caption = 'N'#186' Casa'
                DataBinding.FieldName = 'rec_add_number'
              end
              object grid_1DBTableView1rec_add_street: TcxGridDBColumn
                Caption = 'Bairro'
                DataBinding.FieldName = 'rec_add_street'
                Width = 150
              end
              object grid_1DBTableView1rec_add_complement: TcxGridDBColumn
                Caption = 'Complemento'
                DataBinding.FieldName = 'rec_add_complement'
                Width = 150
              end
              object grid_1DBTableView1rec_add_city: TcxGridDBColumn
                Caption = 'Cidade'
                DataBinding.FieldName = 'rec_add_city'
                Width = 150
              end
              object grid_1DBTableView1rec_add_state: TcxGridDBColumn
                Caption = 'UF'
                DataBinding.FieldName = 'rec_add_state'
              end
              object grid_1DBTableView1rec_add_country: TcxGridDBColumn
                Caption = 'Pa'#237's'
                DataBinding.FieldName = 'rec_add_country'
                Width = 120
              end
              object grid_1DBTableView1rec_phone1: TcxGridDBColumn
                Caption = 'tel 01'
                DataBinding.FieldName = 'rec_phone1'
              end
              object grid_1DBTableView1rec_phone2: TcxGridDBColumn
                Caption = 'Tel 02'
                DataBinding.FieldName = 'rec_phone2'
              end
              object grid_1DBTableView1rec_phone3: TcxGridDBColumn
                Caption = 'Tel 03'
                DataBinding.FieldName = 'rec_phone3'
              end
              object grid_1DBTableView1rec_phone4: TcxGridDBColumn
                Caption = 'Tel 04'
                DataBinding.FieldName = 'rec_phone4'
              end
              object grid_1DBTableView1rec_contact: TcxGridDBColumn
                Caption = 'Contato'
                DataBinding.FieldName = 'rec_contact'
                Width = 150
              end
              object grid_1DBTableView1emp_dt_registration: TcxGridDBColumn
                Caption = 'Dt. Reg'
                DataBinding.FieldName = 'emp_dt_registration'
                Width = 110
              end
            end
            object cxGridDBTableView1: TcxGridDBTableView [1]
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              object cxGridDBTableView1emp_id: TcxGridDBColumn
                DataBinding.FieldName = 'emp_id'
              end
              object cxGridDBTableView1rec_name: TcxGridDBColumn
                DataBinding.FieldName = 'rec_name'
              end
              object cxGridDBTableView1emp_type: TcxGridDBColumn
                DataBinding.FieldName = 'emp_type'
              end
              object cxGridDBTableView1emp_status: TcxGridDBColumn
                DataBinding.FieldName = 'emp_status'
              end
              object cxGridDBTableView1rec_nickname: TcxGridDBColumn
                DataBinding.FieldName = 'rec_nickname'
              end
              object cxGridDBTableView1rec_sex: TcxGridDBColumn
                DataBinding.FieldName = 'rec_sex'
              end
              object cxGridDBTableView1rec_dt_birth: TcxGridDBColumn
                DataBinding.FieldName = 'rec_dt_birth'
              end
              object cxGridDBTableView1rec_cpf_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_cpf_number'
              end
              object cxGridDBTableView1rec_rg_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_rg_number'
              end
              object cxGridDBTableView1rec_ctps_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_ctps_number'
              end
              object cxGridDBTableView1rec_ctps_serial: TcxGridDBColumn
                DataBinding.FieldName = 'rec_ctps_serial'
              end
              object cxGridDBTableView1rec_ctps_state: TcxGridDBColumn
                DataBinding.FieldName = 'rec_ctps_state'
              end
              object cxGridDBTableView1rec_ctps_date: TcxGridDBColumn
                DataBinding.FieldName = 'rec_ctps_date'
              end
              object cxGridDBTableView1rec_cam_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_cam_number'
              end
              object cxGridDBTableView1rec_cnh_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_cnh_number'
              end
              object cxGridDBTableView1rec_chn_category: TcxGridDBColumn
                DataBinding.FieldName = 'rec_chn_category'
              end
              object cxGridDBTableView1rec_cnh_dt_expiration: TcxGridDBColumn
                DataBinding.FieldName = 'rec_cnh_dt_expiration'
              end
              object cxGridDBTableView1rec_te_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_te_number'
              end
              object cxGridDBTableView1rec_te_zone: TcxGridDBColumn
                DataBinding.FieldName = 'rec_te_zone'
              end
              object cxGridDBTableView1rec_te_section: TcxGridDBColumn
                DataBinding.FieldName = 'rec_te_section'
              end
              object cxGridDBTableView1rec_crm_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_crm_number'
              end
              object cxGridDBTableView1rec_status_marital: TcxGridDBColumn
                DataBinding.FieldName = 'rec_status_marital'
              end
              object cxGridDBTableView1rec_nationality: TcxGridDBColumn
                DataBinding.FieldName = 'rec_nationality'
              end
              object cxGridDBTableView1rec_naturalness_uf: TcxGridDBColumn
                DataBinding.FieldName = 'rec_naturalness_uf'
              end
              object cxGridDBTableView1rec_naturalness_city: TcxGridDBColumn
                DataBinding.FieldName = 'rec_naturalness_city'
              end
              object cxGridDBTableView1rec_father_name: TcxGridDBColumn
                DataBinding.FieldName = 'rec_father_name'
              end
              object cxGridDBTableView1rec_mother_name: TcxGridDBColumn
                DataBinding.FieldName = 'rec_mother_name'
              end
              object cxGridDBTableView1rec_add_zipcode: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_zipcode'
              end
              object cxGridDBTableView1rec_add_address: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_address'
              end
              object cxGridDBTableView1rec_add_number: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_number'
              end
              object cxGridDBTableView1rec_add_street: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_street'
              end
              object cxGridDBTableView1rec_add_complement: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_complement'
              end
              object cxGridDBTableView1rec_add_city: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_city'
              end
              object cxGridDBTableView1rec_add_state: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_state'
              end
              object cxGridDBTableView1rec_add_country: TcxGridDBColumn
                DataBinding.FieldName = 'rec_add_country'
              end
              object cxGridDBTableView1rec_phone1: TcxGridDBColumn
                DataBinding.FieldName = 'rec_phone1'
              end
              object cxGridDBTableView1rec_phone2: TcxGridDBColumn
                DataBinding.FieldName = 'rec_phone2'
              end
              object cxGridDBTableView1rec_phone3: TcxGridDBColumn
                DataBinding.FieldName = 'rec_phone3'
              end
              object cxGridDBTableView1rec_phone4: TcxGridDBColumn
                DataBinding.FieldName = 'rec_phone4'
              end
              object cxGridDBTableView1rec_contact: TcxGridDBColumn
                DataBinding.FieldName = 'rec_contact'
              end
              object cxGridDBTableView1emp_dt_registration: TcxGridDBColumn
                DataBinding.FieldName = 'emp_dt_registration'
              end
            end
          end
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 962
      ExplicitHeight = 602
      inherited pgctrl_3: TcxPageControl
        Width = 962
        Height = 602
        ExplicitWidth = 962
        ExplicitHeight = 602
        ClientRectBottom = 596
        ClientRectRight = 956
        inherited tbsht_5: TcxTabSheet
          ExplicitWidth = 954
          ExplicitHeight = 569
          inherited grb_top: TcxGroupBox
            ExplicitWidth = 948
            Width = 948
          end
          inherited grb_bottton: TcxGroupBox
            ExplicitWidth = 948
            ExplicitHeight = 503
            Height = 503
            Width = 948
            object edtNaturUF: TcxTextEdit
              Left = 3
              Top = 323
              Properties.CharCase = ecUpperCase
              TabOrder = 0
              Width = 173
            end
            object cxLabel12: TcxLabel
              Left = 3
              Top = 305
              Caption = 'Natur. UF'
              Transparent = True
            end
            object edtNacionalidade: TcxTextEdit
              Left = 3
              Top = 281
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 173
            end
            object edtNaturCidade: TcxTextEdit
              Left = 185
              Top = 281
              Properties.CharCase = ecUpperCase
              TabOrder = 3
              Width = 160
            end
            object cxLabel11: TcxLabel
              Left = 185
              Top = 263
              Caption = 'Natur. Cidade'
              Transparent = True
            end
            object cxLabel10: TcxLabel
              Left = 3
              Top = 263
              Caption = 'Nacionalidade'
              Transparent = True
            end
            object edtMae: TcxTextEdit
              Left = 3
              Top = 239
              Properties.CharCase = ecUpperCase
              TabOrder = 6
              Width = 342
            end
            object cxLabel9: TcxLabel
              Left = 3
              Top = 221
              Caption = 'M'#227'e'
              Transparent = True
            end
            object edtPai: TcxTextEdit
              Left = 3
              Top = 197
              Properties.CharCase = ecUpperCase
              TabOrder = 8
              Width = 342
            end
            object cxLabel8: TcxLabel
              Left = 3
              Top = 180
              Caption = 'Pai'
              Transparent = True
            end
            object cxComboxStatus: TcxComboBox
              Left = 185
              Top = 155
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              TabOrder = 10
              Width = 160
            end
            object cxComboxTipo: TcxComboBox
              Left = 3
              Top = 155
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                'F - FUNCIONARIO'
                'T - TERCEIRIZADO')
              TabOrder = 11
              Width = 173
            end
            object cxLabel41: TcxLabel
              Left = 185
              Top = 138
              Caption = 'Status'
              Transparent = True
            end
            object cxLabel40: TcxLabel
              Left = 3
              Top = 138
              Caption = 'Tipo Proficional'
              Transparent = True
            end
            object cxComboxEstadoCivil: TcxComboBox
              Left = 185
              Top = 113
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                'S - SOLTEIRO '
                'C - CASADO'
                'D - DIVORCIADO')
              TabOrder = 14
              Width = 160
            end
            object cxLabel7: TcxLabel
              Left = 185
              Top = 95
              Caption = 'Estado Civil'
              Transparent = True
            end
            object cxCombxSexo: TcxComboBox
              Left = 3
              Top = 113
              Properties.CharCase = ecUpperCase
              Properties.Items.Strings = (
                'M - MASCULINO'
                'F  - FEMININO')
              TabOrder = 16
              Width = 173
            end
            object cxLabel6: TcxLabel
              Left = 3
              Top = 95
              Caption = 'Sexo'
              Transparent = True
            end
            object edtDataNasc: TcxDateEdit
              Left = 185
              Top = 71
              TabOrder = 18
              Width = 160
            end
            object cxLabel5: TcxLabel
              Left = 185
              Top = 53
              Caption = 'Dt.Nasc.'
              Transparent = True
            end
            object edtApelido: TcxTextEdit
              Left = 3
              Top = 71
              Properties.CharCase = ecUpperCase
              TabOrder = 20
              Width = 173
            end
            object cxLabel4: TcxLabel
              Left = 3
              Top = 53
              Caption = 'Apelido'
              Transparent = True
            end
            object edtNome: TcxTextEdit
              Left = 3
              Top = 29
              Properties.CharCase = ecUpperCase
              TabOrder = 22
              Width = 342
            end
            object cxLabel3: TcxLabel
              Left = 3
              Top = 11
              Caption = 'Nome'
              Transparent = True
            end
          end
        end
        object tbsht_documentos: TcxTabSheet
          Caption = 'Documentos'
          ImageIndex = 1
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = 'Documentos'
            TabOrder = 0
            Height = 569
            Width = 954
            object cxLabel13: TcxLabel
              Left = 7
              Top = 17
              Caption = 'CPF'
              Transparent = True
            end
            object edtCNH_Numero: TcxTextEdit
              Left = 7
              Top = 118
              TabOrder = 6
              Width = 150
            end
            object cxLabel14: TcxLabel
              Left = 165
              Top = 17
              Caption = 'RG'
              Transparent = True
            end
            object edtRG: TcxTextEdit
              Left = 165
              Top = 34
              TabOrder = 1
              Width = 150
            end
            object cxLabel15: TcxLabel
              Left = 323
              Top = 17
              Caption = 'N'#186' Cart. Trabalho'
              Transparent = True
            end
            object edtCart_Trabalho_Numero: TcxTextEdit
              Left = 323
              Top = 34
              TabOrder = 2
              Width = 150
            end
            object cxLabel17: TcxLabel
              Left = 165
              Top = 59
              Caption = 'Dt. Emiss'#227'o'
              Transparent = True
            end
            object edtSecao_Eleitoral: TcxTextEdit
              Left = 7
              Top = 202
              TabOrder = 12
              Width = 150
            end
            object edtCPF: TcxMaskEdit
              Left = 7
              Top = 34
              TabOrder = 0
              Width = 150
            end
            object cxLabel20: TcxLabel
              Left = 7
              Top = 101
              Caption = 'CNH'
              Transparent = True
            end
            object edtCart_Trabalho_Serie: TcxTextEdit
              Left = 7
              Top = 76
              TabOrder = 3
              Width = 150
            end
            object cxLabel16: TcxLabel
              Left = 7
              Top = 59
              Caption = 'S'#233'rie Cart. Trabalho'
              Transparent = True
            end
            object cxLabel18: TcxLabel
              Left = 323
              Top = 59
              Caption = 'Estado UF'
              Transparent = True
            end
            object edtCart_Trabalho_EstadoUF: TcxTextEdit
              Left = 323
              Top = 76
              TabOrder = 5
              Width = 150
            end
            object cxLabel19: TcxLabel
              Left = 165
              Top = 101
              Caption = 'Categoria CNH'
              Transparent = True
            end
            object edtCNH_Categoria: TcxTextEdit
              Left = 165
              Top = 118
              TabOrder = 7
              Width = 150
            end
            object edtTitulo_Eleitor: TcxTextEdit
              Left = 165
              Top = 160
              TabOrder = 10
              Width = 150
            end
            object cxLabel21: TcxLabel
              Left = 323
              Top = 101
              Caption = 'Dt. Exp. CNH'
              Transparent = True
            end
            object edtCAM_Numero: TcxTextEdit
              Left = 7
              Top = 160
              TabOrder = 9
              Width = 150
            end
            object cxLabel22: TcxLabel
              Left = 7
              Top = 143
              Caption = 'N'#186' CAM'
              Transparent = True
            end
            object edtZona_Eleitoral: TcxTextEdit
              Left = 323
              Top = 160
              TabOrder = 11
              Width = 150
            end
            object cxLabel23: TcxLabel
              Left = 323
              Top = 143
              Caption = 'Zona Eleitoral'
              Transparent = True
            end
            object edtCart_Trabalho_Dt_Emissao: TcxDateEdit
              Left = 165
              Top = 76
              TabOrder = 4
              Width = 150
            end
            object edtCNH_Dt_Exp: TcxDateEdit
              Left = 323
              Top = 118
              TabOrder = 8
              Width = 150
            end
            object cxLabel24: TcxLabel
              Left = 165
              Top = 143
              Caption = 'T'#237'tulo de Eleitor'
              Transparent = True
            end
            object cxLabel25: TcxLabel
              Left = 7
              Top = 185
              Caption = 'Se'#231#227'o Eleitoral'
              Transparent = True
            end
            object cxLabel26: TcxLabel
              Left = 165
              Top = 185
              Caption = 'N'#186' CRM'
              Transparent = True
            end
            object edtCRM_Numero: TcxTextEdit
              Left = 165
              Top = 202
              TabOrder = 13
              Width = 150
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Endere'#231'o e Contato'
          ImageIndex = 2
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Endere'#231'o'
            TabOrder = 0
            Height = 149
            Width = 954
            object cxLabel31: TcxLabel
              Left = 8
              Top = 16
              Caption = 'CEP'
              Transparent = True
            end
            object cxLabel32: TcxLabel
              Left = 8
              Top = 58
              Caption = 'Rua'
              Transparent = True
            end
            object edtRua: TcxTextEdit
              Left = 10
              Top = 75
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 273
            end
            object cxLabel33: TcxLabel
              Left = 382
              Top = 58
              Caption = 'Bairro'
              Transparent = True
            end
            object edtBairro: TcxTextEdit
              Left = 382
              Top = 75
              Properties.CharCase = ecUpperCase
              TabOrder = 3
              Width = 190
            end
            object btnEditCEP: TcxButtonEdit
              Left = 8
              Top = 33
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = btnEditCEPPropertiesButtonClick
              TabOrder = 0
              Width = 150
            end
            object edtComplemento: TcxTextEdit
              Left = 8
              Top = 117
              Properties.CharCase = ecUpperCase
              TabOrder = 4
              Width = 150
            end
            object edtCidade: TcxTextEdit
              Left = 167
              Top = 117
              Properties.CharCase = ecUpperCase
              TabOrder = 5
              Width = 207
            end
            object edtUF_End: TcxTextEdit
              Left = 382
              Top = 117
              Properties.CharCase = ecUpperCase
              TabOrder = 6
              Width = 68
            end
            object cxLabel27: TcxLabel
              Left = 289
              Top = 58
              Caption = 'N'#186' Casa'
              Transparent = True
            end
            object cxLabel28: TcxLabel
              Left = 8
              Top = 100
              Caption = 'Complemento'
              Transparent = True
            end
            object cxLabel34: TcxLabel
              Left = 167
              Top = 102
              Caption = 'Cidade'
              Transparent = True
            end
            object cxLabel35: TcxLabel
              Left = 382
              Top = 100
              Caption = 'Estado UF'
              Transparent = True
            end
            object edtPais_End: TcxTextEdit
              Left = 459
              Top = 117
              Properties.CharCase = ecUpperCase
              TabOrder = 7
              Width = 116
            end
            object cxLabel36: TcxLabel
              Left = 459
              Top = 102
              Caption = 'Pa'#237's'
              Transparent = True
            end
            object edtNumero_Casa: TcxTextEdit
              Left = 289
              Top = 75
              TabOrder = 2
              Width = 85
            end
          end
          object cxGroupBox5: TcxGroupBox
            Left = 0
            Top = 149
            Align = alClient
            Caption = 'Contatos'
            TabOrder = 1
            Height = 420
            Width = 954
            object edtContato_Tel: TcxTextEdit
              Left = 8
              Top = 110
              TabOrder = 4
              Width = 309
            end
            object cxLabel29: TcxLabel
              Left = 8
              Top = 9
              Caption = 'Tel. 1'
              Transparent = True
            end
            object cxLabel30: TcxLabel
              Left = 8
              Top = 93
              Caption = 'Contato'
              Transparent = True
            end
            object edtTel_1: TcxMaskEdit
              Left = 8
              Top = 26
              Properties.EditMask = '!\(99\)00000-0000;0;_'
              TabOrder = 0
              Text = '           '
              Width = 150
            end
            object cxLabel37: TcxLabel
              Left = 167
              Top = 9
              Caption = 'Tel. 2'
              Transparent = True
            end
            object edtTel_2: TcxMaskEdit
              Left = 167
              Top = 26
              Properties.EditMask = '!\(99\)00000-0000;0;_'
              TabOrder = 1
              Text = '           '
              Width = 150
            end
            object edtTel_4: TcxMaskEdit
              Left = 167
              Top = 68
              Properties.EditMask = '!\(99\)00000-0000;0;_'
              TabOrder = 3
              Text = '           '
              Width = 150
            end
            object edtTel_3: TcxMaskEdit
              Left = 8
              Top = 68
              Properties.EditMask = '!\(99\)00000-0000;0;_'
              TabOrder = 2
              Text = '           '
              Width = 150
            end
            object cxLabel38: TcxLabel
              Left = 8
              Top = 51
              Caption = 'Tel. 3'
              Transparent = True
            end
            object cxLabel39: TcxLabel
              Left = 167
              Top = 51
              Caption = 'Tel. 4'
              Transparent = True
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Top = 690
    Width = 970
    ExplicitTop = 690
    ExplicitWidth = 970
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      Width = 934
      ExplicitWidth = 934
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 934
        ExplicitHeight = 21
      end
    end
  end
  inherited impw_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yyyy'
    Formats.LongDateFormat = 'dddd, d'#39' de '#39'MMMM'#39' de '#39'yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited expw_1: TQExport4Dialog
    Formats.IntegerFormat = '#,###,##0'
    Formats.FloatFormat = '#,###,##0.00'
    Formats.DateFormat = 'dd/MM/yyyy'
    Formats.TimeFormat = 'hh:mm'
    Formats.DateTimeFormat = 'dd/MM/yyyy hh:mm:ss'
    Formats.CurrencyFormat = 'R$#,###,##0.00'
  end
  inherited imglist_1: TcxImageList
    FormatVersion = 1
  end
  inherited frxReport_1: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited qry: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      
        'select employee.*, record.*,hex(rec_cod) as recCod, hex(emp_cod)' +
        ' as empCod from employee inner  join record on record_rec_cod = ' +
        'rec_cod')
    object qryemp_cod: TBytesField
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryrecord_rec_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'record_rec_cod'
      Origin = 'record_rec_cod'
    end
    object qryemp_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'emp_id'
      Origin = 'emp_id'
    end
    object qryemp_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_type'
      Origin = 'emp_type'
      FixedChar = True
      Size = 1
    end
    object qryemp_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_status'
      Origin = 'emp_status'
      FixedChar = True
      Size = 1
    end
    object qryemp_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'emp_deleted_at'
      Origin = 'emp_deleted_at'
    end
    object qryemp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'emp_dt_registration'
      Origin = 'emp_dt_registration'
    end
    object qryrec_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cod'
      Origin = 'rec_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrycontract_ctr_cod_1: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod_1'
      Origin = 'contract_ctr_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrec_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rec_id'
      Origin = 'rec_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qryrec_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nickname'
      Origin = 'rec_nickname'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryrec_sex: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_sex'
      Origin = 'rec_sex'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qryrec_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_dt_birth'
      Origin = 'rec_dt_birth'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrec_cpf_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cpf_number'
      Origin = 'rec_cpf_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_rg_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_rg_number'
      Origin = 'rec_rg_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_ctps_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_number'
      Origin = 'rec_ctps_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_ctps_serial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_serial'
      Origin = 'rec_ctps_serial'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_ctps_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_state'
      Origin = 'rec_ctps_state'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryrec_ctps_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_date'
      Origin = 'rec_ctps_date'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrec_cam_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cam_number'
      Origin = 'rec_cam_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_cnh_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cnh_number'
      Origin = 'rec_cnh_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_chn_category: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_chn_category'
      Origin = 'rec_chn_category'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_cnh_dt_expiration: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cnh_dt_expiration'
      Origin = 'rec_cnh_dt_expiration'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrec_te_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_number'
      Origin = 'rec_te_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_te_zone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_zone'
      Origin = 'rec_te_zone'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_te_section: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_section'
      Origin = 'rec_te_section'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_crm_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_crm_number'
      Origin = 'rec_crm_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_status_marital: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_status_marital'
      Origin = 'rec_status_marital'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_nationality: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nationality'
      Origin = 'rec_nationality'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_naturalness_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_naturalness_uf'
      Origin = 'rec_naturalness_uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryrec_naturalness_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_naturalness_city'
      Origin = 'rec_naturalness_city'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryrec_father_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_father_name'
      Origin = 'rec_father_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qryrec_mother_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_mother_name'
      Origin = 'rec_mother_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object qryrec_add_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_zipcode'
      Origin = 'rec_add_zipcode'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object qryrec_add_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_address'
      Origin = 'rec_add_address'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryrec_add_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_number'
      Origin = 'rec_add_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object qryrec_add_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_street'
      Origin = 'rec_add_street'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object qryrec_add_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_complement'
      Origin = 'rec_add_complement'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qryrec_add_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_city'
      Origin = 'rec_add_city'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object qryrec_add_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_state'
      Origin = 'rec_add_state'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object qryrec_add_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_country'
      Origin = 'rec_add_country'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone1'
      Origin = 'rec_phone1'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qryrec_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone2'
      Origin = 'rec_phone2'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qryrec_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone3'
      Origin = 'rec_phone3'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qryrec_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone4'
      Origin = 'rec_phone4'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qryrec_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_contact'
      Origin = 'rec_contact'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object qryrec_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rec_deleted_at'
      Origin = 'rec_deleted_at'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrec_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rec_dt_registration'
      Origin = 'rec_dt_registration'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryrecCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'recCod'
      Origin = 'recCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryempCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'empCod'
      Origin = 'empCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  inherited mem: TFDMemTable
    object mememp_cod: TBytesField
      FieldName = 'emp_cod'
      Origin = 'emp_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object memcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object memrecord_rec_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'record_rec_cod'
      Origin = 'record_rec_cod'
    end
    object mememp_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'emp_id'
      Origin = 'emp_id'
    end
    object mememp_type: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_type'
      Origin = 'emp_type'
      FixedChar = True
      Size = 1
    end
    object mememp_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'emp_status'
      Origin = 'emp_status'
      FixedChar = True
      Size = 1
    end
    object mememp_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'emp_deleted_at'
      Origin = 'emp_deleted_at'
    end
    object mememp_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'emp_dt_registration'
      Origin = 'emp_dt_registration'
    end
    object memrec_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cod'
      Origin = 'rec_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object memcontract_ctr_cod_1: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod_1'
      Origin = 'contract_ctr_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object memrec_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'rec_id'
      Origin = 'rec_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object memrec_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_name'
      Origin = 'rec_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object memrec_nickname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nickname'
      Origin = 'rec_nickname'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object memrec_sex: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_sex'
      Origin = 'rec_sex'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object memrec_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_dt_birth'
      Origin = 'rec_dt_birth'
      ProviderFlags = []
      ReadOnly = True
    end
    object memrec_cpf_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cpf_number'
      Origin = 'rec_cpf_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_rg_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_rg_number'
      Origin = 'rec_rg_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_ctps_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_number'
      Origin = 'rec_ctps_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_ctps_serial: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_serial'
      Origin = 'rec_ctps_serial'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_ctps_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_state'
      Origin = 'rec_ctps_state'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object memrec_ctps_date: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_ctps_date'
      Origin = 'rec_ctps_date'
      ProviderFlags = []
      ReadOnly = True
    end
    object memrec_cam_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cam_number'
      Origin = 'rec_cam_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_cnh_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cnh_number'
      Origin = 'rec_cnh_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_chn_category: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_chn_category'
      Origin = 'rec_chn_category'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_cnh_dt_expiration: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'rec_cnh_dt_expiration'
      Origin = 'rec_cnh_dt_expiration'
      ProviderFlags = []
      ReadOnly = True
    end
    object memrec_te_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_number'
      Origin = 'rec_te_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_te_zone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_zone'
      Origin = 'rec_te_zone'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_te_section: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_te_section'
      Origin = 'rec_te_section'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_crm_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_crm_number'
      Origin = 'rec_crm_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_status_marital: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_status_marital'
      Origin = 'rec_status_marital'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_nationality: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_nationality'
      Origin = 'rec_nationality'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_naturalness_uf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_naturalness_uf'
      Origin = 'rec_naturalness_uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object memrec_naturalness_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_naturalness_city'
      Origin = 'rec_naturalness_city'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object memrec_father_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_father_name'
      Origin = 'rec_father_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object memrec_mother_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_mother_name'
      Origin = 'rec_mother_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 85
    end
    object memrec_add_zipcode: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_zipcode'
      Origin = 'rec_add_zipcode'
      ProviderFlags = []
      ReadOnly = True
      Size = 9
    end
    object memrec_add_address: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_address'
      Origin = 'rec_add_address'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object memrec_add_number: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_number'
      Origin = 'rec_add_number'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object memrec_add_street: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_street'
      Origin = 'rec_add_street'
      ProviderFlags = []
      ReadOnly = True
      Size = 45
    end
    object memrec_add_complement: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_complement'
      Origin = 'rec_add_complement'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object memrec_add_city: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_city'
      Origin = 'rec_add_city'
      ProviderFlags = []
      ReadOnly = True
      Size = 35
    end
    object memrec_add_state: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_state'
      Origin = 'rec_add_state'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object memrec_add_country: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_add_country'
      Origin = 'rec_add_country'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_phone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone1'
      Origin = 'rec_phone1'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object memrec_phone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone2'
      Origin = 'rec_phone2'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object memrec_phone3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone3'
      Origin = 'rec_phone3'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object memrec_phone4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_phone4'
      Origin = 'rec_phone4'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object memrec_contact: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rec_contact'
      Origin = 'rec_contact'
      ProviderFlags = []
      ReadOnly = True
      Size = 25
    end
    object memrec_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rec_deleted_at'
      Origin = 'rec_deleted_at'
      ProviderFlags = []
      ReadOnly = True
    end
    object memrec_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'rec_dt_registration'
      Origin = 'rec_dt_registration'
      ProviderFlags = []
      ReadOnly = True
    end
    object memrecCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'recCod'
      Origin = 'recCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object memempCod: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'empCod'
      Origin = 'empCod'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  inherited ACBrCEP1: TACBrCEP
    WebService = wsRepublicaVirtual
    OnBuscaEfetuada = ACBrCEP_1BuscaEfetuada
  end
end
