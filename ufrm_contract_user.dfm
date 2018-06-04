inherited frm_contract_user: Tfrm_contract_user
  Caption = 'Cadastro de Usu'#225'rio'
  ClientWidth = 1129
  OnClose = FormClose
  ExplicitWidth = 1145
  PixelsPerInch = 96
  TextHeight = 13
  inherited bardck_1: TdxBarDockControl
    Width = 1129
    ExplicitWidth = 1129
  end
  inherited pgctrl_1: TcxPageControl
    Width = 1129
    ExplicitWidth = 1129
    ClientRectRight = 1123
    inherited tbsht_1: TcxTabSheet
      ExplicitWidth = 1121
      inherited pgctrl_2: TcxPageControl
        Width = 1121
        ExplicitWidth = 1121
        ClientRectRight = 1115
        inherited tbsht_3: TcxTabSheet
          ExplicitWidth = 1113
          inherited grid_1: TcxGrid
            Width = 1107
            ExplicitWidth = 1107
            inherited grid_1DBTableView1: TcxGridDBTableView
              object grid_1DBTableView1ctr_usr_id: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_id'
              end
              object grid_1DBTableView1ctr_usr_first_name: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_first_name'
              end
              object grid_1DBTableView1ctr_usr_last_name: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_last_name'
              end
              object grid_1DBTableView1ctr_usr_username: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_username'
              end
              object grid_1DBTableView1ctr_usr_email: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_email'
              end
              object grid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_dt_birth'
              end
              object grid_1DBTableView1ctr_usr_logged: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_logged'
              end
              object grid_1DBTableView1ctr_usr_admin: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_admin'
              end
              object grid_1DBTableView1ctr_usr_status: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_status'
              end
              object grid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn
                DataBinding.FieldName = 'ctr_usr_dt_registration'
              end
            end
            object cxGridDBTableView1: TcxGridDBTableView [1]
              Navigator.Buttons.CustomButtons = <>
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              object cxGridDBTable_ctr_usr_id: TcxGridDBColumn
                Caption = 'C'#243'digo ID'
                DataBinding.FieldName = 'ctr_usr_id'
                Width = 60
              end
              object cxGridDBTable_ctr_usr_first_name: TcxGridDBColumn
                Caption = 'Nome'
                DataBinding.FieldName = 'ctr_usr_first_name'
                Width = 200
              end
              object cxGridDBTable_ctr_usr_last_name: TcxGridDBColumn
                Caption = 'Sobrenome'
                DataBinding.FieldName = 'ctr_usr_last_name'
                Width = 200
              end
              object cxGridDBTable_ctr_usr_dt_birth: TcxGridDBColumn
                Caption = 'Nascimento'
                DataBinding.FieldName = 'ctr_usr_dt_birth'
                Width = 110
              end
              object cxGridDBTable_ctr_usr_username: TcxGridDBColumn
                Caption = 'Usu'#225'rio'
                DataBinding.FieldName = 'ctr_usr_username'
                Width = 150
              end
              object cxGridDBTable_ctr_usr_email: TcxGridDBColumn
                Caption = 'Email'
                DataBinding.FieldName = 'ctr_usr_email'
                Width = 150
              end
              object cxGridDBTable_ctr_usr_admin: TcxGridDBColumn
                Caption = 'Administrador'
                DataBinding.FieldName = 'ctr_usr_admin'
                Width = 80
              end
              object cxGridDBTable_ctr_usr_status: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'ctr_usr_status'
                Width = 60
              end
              object cxGridDBTable_ctr_usr_logged: TcxGridDBColumn
                Caption = 'Logado'
                DataBinding.FieldName = 'ctr_usr_logged'
                Width = 60
              end
              object cxGridDBTable_ctr_usr_dt_registration: TcxGridDBColumn
                Caption = 'Dt. Reg.'
                DataBinding.FieldName = 'ctr_usr_dt_registration'
                Width = 110
              end
            end
          end
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      OnShow = tbsht_2Show
      ExplicitWidth = 1121
      inherited pgctrl_3: TcxPageControl
        Width = 1121
        Properties.ActivePage = tbsht_6
        ExplicitWidth = 1121
        ClientRectRight = 1115
        inherited tbsht_5: TcxTabSheet
          ExplicitWidth = 1113
          inherited grb_top: TcxGroupBox
            ExplicitWidth = 1107
            Width = 1107
          end
          inherited grb_bottton: TcxGroupBox
            ExplicitWidth = 1107
            Width = 1107
            object cxLabel3: TcxLabel
              Left = 3
              Top = 11
              Caption = 'Nome'
              Transparent = True
            end
            object edtNome: TcxTextEdit
              Left = 3
              Top = 28
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 125
            end
            object edtSobrenome: TcxTextEdit
              Left = 134
              Top = 28
              Properties.CharCase = ecUpperCase
              TabOrder = 2
              Width = 125
            end
            object cxLabel5: TcxLabel
              Left = 267
              Top = 11
              Caption = 'Dt. Nasc'
              Transparent = True
            end
            object edtDtNasc: TcxDateEdit
              Left = 267
              Top = 28
              TabOrder = 4
              Width = 123
            end
            object cxLabel6: TcxLabel
              Left = 3
              Top = 55
              Caption = 'Usu'#225'rio'
              Transparent = True
            end
            object edtUsuario: TcxTextEdit
              Left = 3
              Top = 72
              TabOrder = 6
              Width = 125
            end
            object cxLabel7: TcxLabel
              Left = 134
              Top = 55
              Caption = 'E-mail'
              Transparent = True
            end
            object edtEmail: TcxTextEdit
              Left = 134
              Top = 72
              TabOrder = 8
              Width = 256
            end
            object cxLabel8: TcxLabel
              Left = 3
              Top = 103
              Caption = 'Senha'
              Transparent = True
            end
            object edtSenha: TcxTextEdit
              Left = 3
              Top = 120
              Properties.PasswordChar = '*'
              TabOrder = 10
              Width = 125
            end
            object cxLabel9: TcxLabel
              Left = 134
              Top = 103
              Caption = 'Confirmar Senha'
              Transparent = True
            end
            object edtConf_Senha: TcxTextEdit
              Left = 134
              Top = 120
              ParentShowHint = False
              Properties.PasswordChar = '*'
              ShowHint = True
              TabOrder = 12
              Width = 125
            end
            object CheckBoxAdm: TcxCheckBox
              Left = 302
              Top = 122
              Caption = 'Administrador'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              State = cbsGrayed
              TabOrder = 13
            end
            object cxLabel4: TcxLabel
              Left = 134
              Top = 11
              Caption = 'Sobrenome'
              Transparent = True
            end
          end
        end
        object tbsht_6: TcxTabSheet
          Caption = 'Controle'
          ImageIndex = 1
          OnShow = tbsht_6Show
          object cxGroupBox3: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            Caption = 'Lista de Empresas'
            TabOrder = 0
            Height = 249
            Width = 1113
            object cxListEmps: TcxCheckListBox
              Left = 3
              Top = 15
              Width = 638
              Height = 227
              Align = alLeft
              Items = <>
              TabOrder = 0
              OnClick = cxListEmpsClick
              OnClickCheck = cxListEmpsClickCheck
              ExplicitTop = 12
            end
            object DBGrid1: TDBGrid
              Left = 640
              Top = 88
              Width = 450
              Height = 120
              DataSource = dts_Contract_User_Enterprise
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CodEmp'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ent_cod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ent_first_name'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'cte_usr_ent_id'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'enterprise_ent_cod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'contract_user_ctr_usr_cod'
                  Visible = True
                end>
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 249
            Align = alClient
            Caption = 'Acesso ao Sistema'
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            TabOrder = 1
            ExplicitTop = 252
            Height = 256
            Width = 1113
            object AdvOfficeTabSet1: TAdvOfficeTabSet
              Left = 3
              Top = 222
              Width = 1107
              Height = 27
              AdvOfficeTabs = <
                item
                  Caption = 'AdvOfficeTabSet11'
                  Name = 'TOfficeTabCollectionItem1'
                  TabAppearance.BorderColor = clNone
                  TabAppearance.BorderColorHot = 15383705
                  TabAppearance.BorderColorSelected = 14922381
                  TabAppearance.BorderColorSelectedHot = 6343929
                  TabAppearance.BorderColorDisabled = clNone
                  TabAppearance.BorderColorDown = clNone
                  TabAppearance.Color = clBtnFace
                  TabAppearance.ColorTo = clWhite
                  TabAppearance.ColorSelected = 16709360
                  TabAppearance.ColorSelectedTo = 16445929
                  TabAppearance.ColorDisabled = clWhite
                  TabAppearance.ColorDisabledTo = clSilver
                  TabAppearance.ColorHot = 14542308
                  TabAppearance.ColorHotTo = 16768709
                  TabAppearance.ColorMirror = clWhite
                  TabAppearance.ColorMirrorTo = clWhite
                  TabAppearance.ColorMirrorHot = 14016477
                  TabAppearance.ColorMirrorHotTo = 10736609
                  TabAppearance.ColorMirrorSelected = 16445929
                  TabAppearance.ColorMirrorSelectedTo = 16181984
                  TabAppearance.ColorMirrorDisabled = clWhite
                  TabAppearance.ColorMirrorDisabledTo = clSilver
                  TabAppearance.Font.Charset = DEFAULT_CHARSET
                  TabAppearance.Font.Color = clWindowText
                  TabAppearance.Font.Height = -11
                  TabAppearance.Font.Name = 'Tahoma'
                  TabAppearance.Font.Style = []
                  TabAppearance.Gradient = ggVertical
                  TabAppearance.GradientMirror = ggVertical
                  TabAppearance.GradientHot = ggRadial
                  TabAppearance.GradientMirrorHot = ggVertical
                  TabAppearance.GradientSelected = ggVertical
                  TabAppearance.GradientMirrorSelected = ggVertical
                  TabAppearance.GradientDisabled = ggVertical
                  TabAppearance.GradientMirrorDisabled = ggVertical
                  TabAppearance.TextColor = 9126421
                  TabAppearance.TextColorHot = 9126421
                  TabAppearance.TextColorSelected = 9126421
                  TabAppearance.TextColorDisabled = clGray
                  TabAppearance.ShadowColor = 15255470
                  TabAppearance.HighLightColorSelected = 16775871
                  TabAppearance.HighLightColorHot = 16643309
                  TabAppearance.HighLightColorSelectedHot = 12451839
                  TabAppearance.HighLightColorDown = 16776144
                  TabAppearance.BackGround.Color = 16767935
                  TabAppearance.BackGround.ColorTo = clNone
                  TabAppearance.BackGround.Direction = gdHorizontal
                end
                item
                  Caption = 'AdvOfficeTabSet12'
                  Name = 'TOfficeTabCollectionItem2'
                  TabAppearance.BorderColor = clNone
                  TabAppearance.BorderColorHot = 15383705
                  TabAppearance.BorderColorSelected = 14922381
                  TabAppearance.BorderColorSelectedHot = 6343929
                  TabAppearance.BorderColorDisabled = clNone
                  TabAppearance.BorderColorDown = clNone
                  TabAppearance.Color = clBtnFace
                  TabAppearance.ColorTo = clWhite
                  TabAppearance.ColorSelected = 16709360
                  TabAppearance.ColorSelectedTo = 16445929
                  TabAppearance.ColorDisabled = clWhite
                  TabAppearance.ColorDisabledTo = clSilver
                  TabAppearance.ColorHot = 14542308
                  TabAppearance.ColorHotTo = 16768709
                  TabAppearance.ColorMirror = clWhite
                  TabAppearance.ColorMirrorTo = clWhite
                  TabAppearance.ColorMirrorHot = 14016477
                  TabAppearance.ColorMirrorHotTo = 10736609
                  TabAppearance.ColorMirrorSelected = 16445929
                  TabAppearance.ColorMirrorSelectedTo = 16181984
                  TabAppearance.ColorMirrorDisabled = clWhite
                  TabAppearance.ColorMirrorDisabledTo = clSilver
                  TabAppearance.Font.Charset = DEFAULT_CHARSET
                  TabAppearance.Font.Color = clWindowText
                  TabAppearance.Font.Height = -11
                  TabAppearance.Font.Name = 'Tahoma'
                  TabAppearance.Font.Style = []
                  TabAppearance.Gradient = ggVertical
                  TabAppearance.GradientMirror = ggVertical
                  TabAppearance.GradientHot = ggRadial
                  TabAppearance.GradientMirrorHot = ggVertical
                  TabAppearance.GradientSelected = ggVertical
                  TabAppearance.GradientMirrorSelected = ggVertical
                  TabAppearance.GradientDisabled = ggVertical
                  TabAppearance.GradientMirrorDisabled = ggVertical
                  TabAppearance.TextColor = 9126421
                  TabAppearance.TextColorHot = 9126421
                  TabAppearance.TextColorSelected = 9126421
                  TabAppearance.TextColorDisabled = clGray
                  TabAppearance.ShadowColor = 15255470
                  TabAppearance.HighLightColorSelected = 16775871
                  TabAppearance.HighLightColorHot = 16643309
                  TabAppearance.HighLightColorSelectedHot = 12451839
                  TabAppearance.HighLightColorDown = 16776144
                  TabAppearance.BackGround.Color = 16767935
                  TabAppearance.BackGround.ColorTo = clNone
                  TabAppearance.BackGround.Direction = gdHorizontal
                end
                item
                  Caption = 'AdvOfficeTabSet13'
                  Name = 'TOfficeTabCollectionItem3'
                  TabAppearance.BorderColor = clNone
                  TabAppearance.BorderColorHot = 15383705
                  TabAppearance.BorderColorSelected = 14922381
                  TabAppearance.BorderColorSelectedHot = 6343929
                  TabAppearance.BorderColorDisabled = clNone
                  TabAppearance.BorderColorDown = clNone
                  TabAppearance.Color = clBtnFace
                  TabAppearance.ColorTo = clWhite
                  TabAppearance.ColorSelected = 16709360
                  TabAppearance.ColorSelectedTo = 16445929
                  TabAppearance.ColorDisabled = clWhite
                  TabAppearance.ColorDisabledTo = clSilver
                  TabAppearance.ColorHot = 14542308
                  TabAppearance.ColorHotTo = 16768709
                  TabAppearance.ColorMirror = clWhite
                  TabAppearance.ColorMirrorTo = clWhite
                  TabAppearance.ColorMirrorHot = 14016477
                  TabAppearance.ColorMirrorHotTo = 10736609
                  TabAppearance.ColorMirrorSelected = 16445929
                  TabAppearance.ColorMirrorSelectedTo = 16181984
                  TabAppearance.ColorMirrorDisabled = clWhite
                  TabAppearance.ColorMirrorDisabledTo = clSilver
                  TabAppearance.Font.Charset = DEFAULT_CHARSET
                  TabAppearance.Font.Color = clWindowText
                  TabAppearance.Font.Height = -11
                  TabAppearance.Font.Name = 'Tahoma'
                  TabAppearance.Font.Style = []
                  TabAppearance.Gradient = ggVertical
                  TabAppearance.GradientMirror = ggVertical
                  TabAppearance.GradientHot = ggRadial
                  TabAppearance.GradientMirrorHot = ggVertical
                  TabAppearance.GradientSelected = ggVertical
                  TabAppearance.GradientMirrorSelected = ggVertical
                  TabAppearance.GradientDisabled = ggVertical
                  TabAppearance.GradientMirrorDisabled = ggVertical
                  TabAppearance.TextColor = 9126421
                  TabAppearance.TextColorHot = 9126421
                  TabAppearance.TextColorSelected = 9126421
                  TabAppearance.TextColorDisabled = clGray
                  TabAppearance.ShadowColor = 15255470
                  TabAppearance.HighLightColorSelected = 16775871
                  TabAppearance.HighLightColorHot = 16643309
                  TabAppearance.HighLightColorSelectedHot = 12451839
                  TabAppearance.HighLightColorDown = 16776144
                  TabAppearance.BackGround.Color = 16767935
                  TabAppearance.BackGround.ColorTo = clNone
                  TabAppearance.BackGround.Direction = gdHorizontal
                end>
              Align = alBottom
              ActiveTabIndex = 0
              ButtonSettings.CloseButtonPicture.Data = {
                424DA20400000000000036040000280000000900000009000000010008000000
                00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001000001010100000100
                0000000202000100020200000000000202020002020200000000010002020202
                0200010000000101000202020001010000000100020202020200010000000002
                0202000202020000000000020200010002020000000001000001010100000100
                0000}
              ButtonSettings.ClosedListButtonPicture.Data = {
                424DA20400000000000036040000280000000900000009000000010008000000
                00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
                0000010101000200010101000000010100020202000101000000010002020202
                0200010000000002020200020202000000000002020001000202000000000100
                0001010100000100000001010101010101010100000001010101010101010100
                0000}
              ButtonSettings.TabListButtonPicture.Data = {
                424DA20400000000000036040000280000000900000009000000010008000000
                00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000101010100
                0000010101000200010101000000010100020202000101000000010002020202
                0200010000000002020200020202000000000002020001000202000000000100
                0001010100000100000001010101010101010100000001010101010101010100
                0000}
              ButtonSettings.ScrollButtonPrevPicture.Data = {
                424DA20400000000000036040000280000000900000009000000010008000000
                00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010101000001010100
                0000010101000202000101000000010100020202000101000000010002020200
                0101010000000002020200010101010000000100020202000101010000000101
                0002020200010100000001010100020200010100000001010101000001010100
                0000}
              ButtonSettings.ScrollButtonNextPicture.Data = {
                424DA20400000000000036040000280000000900000009000000010008000000
                00006C000000C30E0000C30E00000001000000010000427B8400DEEFEF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001010000010101010100
                0000010002020001010101000000010002020200010101000000010100020202
                0001010000000101010002020200010000000101000202020001010000000100
                0202020001010100000001000202000101010100000001010000010101010100
                0000}
              ButtonSettings.ScrollButtonFirstPicture.Data = {
                424DC60400000000000036040000280000001000000009000000010008000000
                000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
                FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF01010101010000010101
                0101000001010101010100020200010101000202000101010100020202000101
                0002020200010101000202020001010002020200010101000202020001010002
                0202000101010101000202020001010002020200010101010100020202000101
                0002020200010101010100020200010101000202000101010101010000010101
                010100000101}
              ButtonSettings.ScrollButtonLastPicture.Data = {
                424DC60400000000000036040000280000001000000009000000010008000000
                000000000000C40E0000C40E00000001000000010000427B84FFDEEFEFFFFFFF
                FFFF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
                00FF000000FF000000FF000000FF000000FF000000FF01010000010101010100
                0001010101010100020200010101000202000101010101000202020001010002
                0202000101010101000202020001010002020200010101010100020202000101
                0002020200010101000202020001010002020200010101000202020001010002
                0202000101010100020200010101000202000101010101010000010101010100
                000101010101}
              ButtonSettings.CloseButtonHint = 'Close'
              ButtonSettings.InsertButtonHint = 'Insert new item'
              ButtonSettings.TabListButtonHint = 'TabList'
              ButtonSettings.ClosedListButtonHint = 'Closed Pages'
              ButtonSettings.ScrollButtonNextHint = 'Next'
              ButtonSettings.ScrollButtonPrevHint = 'Previous'
              ButtonSettings.ScrollButtonFirstHint = 'First'
              ButtonSettings.ScrollButtonLastHint = 'Last'
              OnChange = AdvOfficeTabSet1Change
            end
            object cxListMenu: TcxCheckListBox
              Left = 3
              Top = 15
              Width = 638
              Height = 207
              Align = alLeft
              Items = <>
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited stsbar_1: TdxStatusBar
    Width = 1129
    ExplicitWidth = 1129
    inherited stsbar_deleted_at: TdxStatusBarContainerControl
      Width = 1093
      ExplicitWidth = 1093
      inherited chkbox_1: TcxCheckBox
        ExplicitWidth = 1093
      end
    end
  end
  inherited ds: TDataSource
    Left = 728
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
      
        'select hex(a.ent_cod)as CodEmp, a.ent_cod, a.ent_first_name, b.c' +
        'te_usr_ent_id, b.enterprise_ent_cod,'#10'b.contract_user_ctr_usr_cod' +
        ' from enterprise a '#10
      
        'left join contract_user_enterprise b on a.ent_cod=b.enterprise_e' +
        'nt_cod')
    Left = 696
    object qryCodEmp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEmp'
      Origin = 'CodEmp'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object qryent_cod: TBytesField
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object qrycte_usr_ent_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cte_usr_ent_id'
      Origin = 'cte_usr_ent_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrycontract_user_ctr_usr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_user_ctr_usr_cod'
      Origin = 'contract_user_ctr_usr_cod'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited mem: TFDMemTable
    object memctr_usr_cod: TBytesField
      FieldName = 'ctr_usr_cod'
      Origin = 'ctr_usr_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object memcontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object memctr_usr_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
    end
    object memctr_usr_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 85
    end
    object memctr_usr_last_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_last_name'
      Origin = 'ctr_usr_last_name'
      Size = 85
    end
    object memctr_usr_username: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 65
    end
    object memctr_usr_password: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
    end
    object memctr_usr_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      Size = 65
    end
    object memctr_usr_dt_birth: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
    end
    object memctr_usr_logged: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_logged'
      Origin = 'ctr_usr_logged'
      FixedChar = True
      Size = 1
    end
    object memctr_usr_admin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_admin'
      Origin = 'ctr_usr_admin'
      FixedChar = True
      Size = 1
    end
    object memctr_usr_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_status'
      Origin = 'ctr_usr_status'
      FixedChar = True
      Size = 1
    end
    object memctr_usr_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_deleted_at'
      Origin = 'ctr_usr_deleted_at'
    end
    object memctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
  end
  object dts_Contract_User_Enterprise: TDataSource
    DataSet = memEnterprise_User
    Left = 984
    Top = 128
  end
  object memEnterprise_User: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 792
    Top = 144
    object memEnterprise_UserCodEmp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEmp'
      Origin = 'CodEmp'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object memEnterprise_Userent_cod: TBytesField
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object memEnterprise_Userent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object memEnterprise_Usercte_usr_ent_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cte_usr_ent_id'
      Origin = 'cte_usr_ent_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object memEnterprise_Userenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object memEnterprise_Usercontract_user_ctr_usr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_user_ctr_usr_cod'
      Origin = 'contract_user_ctr_usr_cod'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
