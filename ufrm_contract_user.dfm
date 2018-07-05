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
    Properties.ActivePage = tbsht_1
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
              OnCustomDrawCell = grid_1DBTableView1CustomDrawCell
              object grid_1DBTableView1ctr_usr_id: TcxGridDBColumn
                Caption = 'C'#243'd. ID'
                DataBinding.FieldName = 'ctr_usr_id'
                Width = 60
              end
              object grid_1DBTableView1ctr_usr_first_name: TcxGridDBColumn
                Caption = 'Primeiro Nome'
                DataBinding.FieldName = 'ctr_usr_first_name'
                Width = 250
              end
              object grid_1DBTableView1ctr_usr_last_name: TcxGridDBColumn
                Caption = #218'ltimo Nome'
                DataBinding.FieldName = 'ctr_usr_last_name'
                Width = 250
              end
              object grid_1DBTableView1ctr_usr_username: TcxGridDBColumn
                Caption = 'Login'
                DataBinding.FieldName = 'ctr_usr_username'
                Width = 200
              end
              object grid_1DBTableView1ctr_usr_email: TcxGridDBColumn
                Caption = 'email'
                DataBinding.FieldName = 'ctr_usr_email'
                Width = 250
              end
              object grid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn
                Caption = 'Dt. Anivers'#225'rio'
                DataBinding.FieldName = 'ctr_usr_dt_birth'
                Width = 100
              end
              object grid_1DBTableView1ctr_usr_logged: TcxGridDBColumn
                Caption = 'Logado'
                DataBinding.FieldName = 'ctr_usr_logged'
                Width = 45
              end
              object grid_1DBTableView1ctr_usr_admin: TcxGridDBColumn
                Caption = 'Admin.'
                DataBinding.FieldName = 'ctr_usr_admin'
                Width = 50
              end
              object grid_1DBTableView1ctr_usr_status: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'ctr_usr_status'
                Width = 50
              end
              object grid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn
                Caption = 'Dt. Registro'
                DataBinding.FieldName = 'ctr_usr_dt_registration'
                Width = 120
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
              Top = 71
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
              Top = 143
              Caption = 'Senha'
              Transparent = True
            end
            object cxLabel9: TcxLabel
              Left = 134
              Top = 143
              Caption = 'Confirmar Senha'
              Transparent = True
            end
            object CheckBoxAdm: TcxCheckBox
              Left = 134
              Top = 117
              Caption = 'Administrador'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              State = cbsGrayed
              TabOrder = 11
            end
            object cxLabel4: TcxLabel
              Left = 134
              Top = 11
              Caption = 'Sobrenome'
              Transparent = True
            end
            object edt_password: TcxButtonEdit
              Left = 3
              Top = 160
              Properties.Buttons = <
                item
                  Default = True
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000040000000A000000100000001300000015000000140000
                    00110000000C0000000500000001000000000000000000000000000000000000
                    00030000000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C
                    30CE3A2019870704032B00000010000000040000000000000000000000030000
                    0011442C2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BC
                    B5FFB48B7FFF895140F540231B92000000180000000500000001010204145536
                    2D9CC5A398FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAE
                    A7FFEBE2DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D
                    80FFF9F5F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F62
                    51FFC0B0A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1
                    ACFFF6F3F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A3
                    8FFF806658FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C63
                    72FFB2B0B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0
                    A9FF745545FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F
                    9DFA697F9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA498
                    87FF58483FFF5F5C5CFF4E6586FF2F5191FF050B173C00000004000000031221
                    3B685A7FB7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E48
                    56FF627D9EFF789DC9FF3C609FFD0B172E630000000600000000000000000000
                    00030F1B3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AA
                    D3FF5A7EB3FF284B8BF10A152958000000060000000100000000000000000000
                    0000000000020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D01933
                    62B40F1F3D750204081700000003000000000000000000000000000000000000
                    0000000000000000000000000002000000030000000400000005000000050000
                    0004000000020000000100000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Kind = bkGlyph
                end>
              Properties.EchoMode = eemPassword
              Properties.OnButtonClick = edt_passwordPropertiesButtonClick
              TabOrder = 13
              Width = 125
            end
            object edt_password_confirmar: TcxButtonEdit
              Left = 134
              Top = 160
              Properties.Buttons = <
                item
                  Default = True
                  Glyph.Data = {
                    36040000424D3604000000000000360000002800000010000000100000000100
                    2000000000000004000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000040000000A000000100000001300000015000000140000
                    00110000000C0000000500000001000000000000000000000000000000000000
                    00030000000C070404263F271F836E4235CA7A4839DE915644FF774436DE693C
                    30CE3A2019870704032B00000010000000040000000000000000000000030000
                    0011442C2486976253F5BE998EFFD9C5BEFFE0CFCAFFEFE6E3FFDDCAC4FFD3BC
                    B5FFB48B7FFF895140F540231B92000000180000000500000001010204145536
                    2D9CC5A398FFF2E9E7FFF5EFEDFFBCAEA8FF71574CFF593A2DFF755B4EFFBEAE
                    A7FFEBE2DEFFE5D8D3FFB79085FF4E2A21A90101021A000000032F23246BB58D
                    80FFF9F5F4FFF7F3F2FFC1B3ADFF826555FFB19A85FFC2AC97FFB09783FF7F62
                    51FFC0B0A9FFECE3DFFFECE2DFFFA37467FF28191A750000000A5E4F60E1BCB1
                    ACFFF6F3F3FFF8F4F3FF7A5E50FFBEA995FF857162FF3F2A22FF746053FFB8A3
                    8FFF806658FFEEE5E2FFECE2DFFFB1A29CFF503F50E40000000D182C4D885C63
                    72FFB2B0B0FFF1EEEDFF725242FFDDD1B9FF806D5EFF493229FF493228FFCFC0
                    A9FF745545FFEBE3E1FFABA6A3FF505566FF142A55AA0000000A05080F21395F
                    9DFA697F9AFF626160FF55443CFFB2A894FFE4E0C1FF584135FF847466FFA498
                    87FF58483FFF5F5C5CFF4E6586FF2F5191FF050B173C00000004000000031221
                    3B685A7FB7FFA6C5E3FF7990ABFF444D59FF3E4248FF2B2A25FF3C4148FF3E48
                    56FF627D9EFF789DC9FF3C609FFD0B172E630000000600000000000000000000
                    00030F1B3159315593ED6F91C1FF9BB9DCFFB0CDE9FFCBE8FCFFA7C7E6FF87AA
                    D3FF5A7EB3FF284B8BF10A152958000000060000000100000000000000000000
                    0000000000020204071112223E6F1C3765B0213F76D0274C91FC1E3C74D01933
                    62B40F1F3D750204081700000003000000000000000000000000000000000000
                    0000000000000000000000000002000000030000000400000005000000050000
                    0004000000020000000100000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  Kind = bkGlyph
                end>
              Properties.EchoMode = eemPassword
              Properties.OnButtonClick = edt_password_confirmarPropertiesButtonClick
              TabOrder = 14
              Width = 125
            end
            object comboxStatus: TcxComboBox
              Left = 3
              Top = 116
              Properties.Items.Strings = (
                'A - ATIVO'
                'D - DESATIVADO')
              TabOrder = 15
              Width = 125
            end
            object cxLabel1: TcxLabel
              Left = 3
              Top = 98
              Caption = 'Status'
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
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 0
            Top = 249
            Align = alClient
            Caption = 'Acesso ao Sistema'
            Style.Edges = [bLeft, bTop, bRight, bBottom]
            TabOrder = 1
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
              OnClickCheck = cxListMenuClickCheck
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
  inherited barman_1: TdxBarManager
    inherited edt_report: TcxBarEditItem
      Properties.Root.CustomPath = 'C:\ccsolutions_dsk\reports\cadastro\basico\usuario'
    end
  end
  inherited popmenu_1: TPopupMenu
    object BloquearUsurio1: TMenuItem [13]
      Caption = 'Bloquear Usu'#225'rio'
      Visible = False
      OnClick = BloquearUsurio1Click
    end
    object DesbloquearUsurio1: TMenuItem [14]
      Caption = 'Desbloquear Usu'#225'rio'
      Visible = False
      OnClick = DesbloquearUsurio1Click
    end
    object ResetarSenha1: TMenuItem [15]
      Caption = 'Resetar Senha'
      OnClick = ResetarSenha1Click
    end
    object DesconectarUsurio1: TMenuItem [16]
      Caption = 'Desconectar  Usu'#225'rio'
      OnClick = DesconectarUsurio1Click
    end
    object N4: TMenuItem [17]
      Caption = '-'
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
    ReportOptions.CreateDate = 43193.605400104200000000
    ReportOptions.LastChange = 43286.744819780090000000
    Datasets = <
      item
        DataSet = frm_dm.frx_db_enterprise
        DataSetName = 'enterprise'
      end
      item
        DataSet = frx_db_usuario
        DataSetName = 'usuario'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Height = 105.826754570000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 137.338590000000000000
          Top = 7.779530000000000000
          Width = 7.559060000000000000
          Height = 90.708720000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 148.456710000000000000
          Top = 4.559060000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'ent_last_name'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[enterprise."ent_last_name"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 148.456710000000000000
          Top = 24.354360000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:       [enterprise."ent_cnpj"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 148.456710000000000000
          Top = 43.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Endere'#231'o: [enterprise."ent_add_bus_address"], n'#186' [enterprise."en' +
              't_add_bus_number"], [enterprise."ent_add_bus_street"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo15: TfrxMemoView
          Left = 148.456710000000000000
          Top = 63.811070000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'CEP:        [enterprise."ent_add_bus_zipcode"] - [enterprise."en' +
              't_add_bus_city"] - [enterprise."ent_add_bus_state"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo14: TfrxMemoView
          Left = 148.456710000000000000
          Top = 84.488250000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              'Fone:       [enterprise."ent_phone1"] / [enterprise."ent_phone2"' +
              '] - E-mail : [enterprise."ent_email"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Picture1: TfrxPictureView
          Left = 11.456710000000000000
          Top = 10.559060000000000000
          Width = 124.724409450000000000
          Height = 86.929131420000000000
          DataField = 'ent_image1'
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 26.456692913385800000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 427.086890000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Left = 10.559060000000000000
          Top = 2.779530000000000000
          Width = 695.433520000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'Endere'#231'o: [enterprise."ent_add_bus_address"], n'#186' [enterprise."en' +
              't_add_bus_number"] - [enterprise."ent_add_bus_street"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo18: TfrxMemoView
          Left = 10.559060000000000000
          Top = 23.236240000000000000
          Width = 695.433520000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              'CEP: [enterprise."ent_add_bus_zipcode"] - [enterprise."ent_add_b' +
              'us_city"] - [enterprise."ent_add_bus_state"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 170.078850000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Top = 31.574830000000000000
          Width = 718.110700000000000000
          Height = 132.283550000000000000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          IndexTag = 1
          Left = 106.228417240000000000
          Top = 35.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_usr_id'
          DataSet = frx_db_usuario
          DataSetName = 'usuario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[usuario."ctr_usr_id"]')
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          Left = 106.228417240000000000
          Top = 59.811070000000000000
          Width = 498.897960000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_usr_first_name'
          DataSet = frx_db_usuario
          DataSetName = 'usuario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[usuario."ctr_usr_first_name"]')
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          Left = 106.228417240000000000
          Top = 85.047310000000000000
          Width = 495.118430000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_usr_last_name'
          DataSet = frx_db_usuario
          DataSetName = 'usuario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[usuario."ctr_usr_last_name"]')
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          Left = 351.118337240000000000
          Top = 110.299320000000000000
          Width = 343.937230000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_usr_email'
          DataSet = frx_db_usuario
          DataSetName = 'usuario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[usuario."ctr_usr_email"]')
        end
        object Memo32: TfrxMemoView
          IndexTag = 1
          Left = 106.228417240000000000
          Top = 110.299320000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_usr_dt_birth'
          DataSet = frx_db_usuario
          DataSetName = 'usuario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[usuario."ctr_usr_dt_birth"]')
        end
        object Memo33: TfrxMemoView
          IndexTag = 1
          Left = 540.094837240000000000
          Top = 35.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_usr_admin'
          DataSet = frx_db_usuario
          DataSetName = 'usuario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[usuario."ctr_usr_admin"]')
        end
        object Memo34: TfrxMemoView
          IndexTag = 1
          Left = 325.236457240000000000
          Top = 35.913420000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          DataField = 'ctr_usr_status'
          DataSet = frx_db_usuario
          DataSetName = 'usuario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[usuario."ctr_usr_status"]')
        end
        object Memo35: TfrxMemoView
          Left = 1.511811020000000000
          Top = 35.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 1.511811020000000000
          Top = 59.811070000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 1.511811020000000000
          Top = 85.047310000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sobrenome:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 1.511811020000000000
          Top = 137.519790000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Login:')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 283.086797240000000000
          Top = 137.519790000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Senha:')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 1.511811020000000000
          Top = 110.299320000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nascimento:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 283.086797240000000000
          Top = 110.299320000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-mail:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 252.850557240000000000
          Top = 35.913420000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Status:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 415.370347240000000000
          Top = 35.913420000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Adiministrador:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 106.228417240000000000
          Top = 137.519790000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '------------------------------------------------------')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 351.118337240000000000
          Top = 137.519790000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '------------------------------------------------------')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Top = 10.897650000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Dados do Usu'#225'rio')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          IndexTag = 1
          Align = baRight
          Left = 551.811380000000000000
          Top = 11.559060000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataSet = frm_dm.frx_db_enterprise
          DataSetName = 'enterprise'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[enterprise."ent_add_bus_city"] / [enterprise."ent_add_bus_state' +
              '"] - [Date]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  inherited qry: TFDQuery
    Connection = frm_dm.connCCS
    SQL.Strings = (
      '')
    Left = 696
  end
  inherited mem: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'ctr_usr_cod'
        Attributes = [faRequired, faFixed]
        DataType = ftBytes
        Size = 16
      end
      item
        Name = 'contract_ctr_cod'
        Attributes = [faFixed]
        DataType = ftBytes
        Size = 16
      end
      item
        Name = 'ctr_usr_id'
        DataType = ftLongWord
      end
      item
        Name = 'ctr_usr_first_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ctr_usr_last_name'
        DataType = ftString
        Size = 85
      end
      item
        Name = 'ctr_usr_username'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'ctr_usr_password'
        Attributes = [faFixed]
        DataType = ftBytes
        Size = 16
      end
      item
        Name = 'ctr_usr_email'
        DataType = ftString
        Size = 65
      end
      item
        Name = 'ctr_usr_dt_birth'
        DataType = ftDate
      end
      item
        Name = 'ctr_usr_logged'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ctr_usr_admin'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ctr_usr_status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ctr_usr_deleted_at'
        DataType = ftDateTime
      end
      item
        Name = 'ctr_usr_dt_registration'
        DataType = ftDateTime
      end
      item
        Name = 'codUser'
        Attributes = [faReadonly]
        DataType = ftString
        Size = 32
      end>
    StoreDefs = True
    object memcodUser: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUser'
      Origin = 'codUser'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
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
  object memEnterprise: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 816
    Top = 56
    object memEnterpriseCodEmp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodEmp'
      Origin = 'CodEmp'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object memEnterpriseent_cod: TBytesField
      FieldName = 'ent_cod'
      Origin = 'ent_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object memEnterpriseent_first_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ent_first_name'
      Origin = 'ent_first_name'
      Size = 85
    end
    object memEnterprisecte_usr_ent_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'cte_usr_ent_id'
      Origin = 'cte_usr_ent_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object memEnterpriseenterprise_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'enterprise_ent_cod'
      Origin = 'enterprise_ent_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object memEnterprisecodUserEmpresa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUserEmpresa'
      Origin = 'codUserEmpresa'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
    object memEnterprisecontract_user_ctr_usr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_user_ctr_usr_cod'
      Origin = 'contract_user_ctr_usr_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object memEnterprisecte_usr_ent_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'cte_usr_ent_cod'
      Origin = 'cte_usr_ent_cod'
      ProviderFlags = []
      ReadOnly = True
    end
    object memEnterpriseCodContracUser: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodContracUser'
      Origin = 'CodContracUser'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object memSystem_Action: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 848
    Top = 56
    object memSystem_Actionsys_act_subtitle: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sys_act_subtitle'
      Origin = 'sys_act_subtitle'
      Size = 100
    end
    object memSystem_Actionsys_Act_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sys_Act_name'
      Origin = 'sys_act_name'
      Size = 80
    end
  end
  object memAction: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 880
    Top = 56
    object memActioncta_cod: TBytesField
      FieldName = 'cta_cod'
      Origin = 'cta_cod'
      Required = True
    end
    object memActioncontract_user_ctr_usr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_user_ctr_usr_cod'
      Origin = 'contract_user_ctr_usr_cod'
    end
    object memActioncta_action_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cta_action_name'
      Origin = 'cta_action_name'
      Size = 50
    end
    object memActioncta_deleted_at: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cta_deleted_at'
      Origin = 'cta_deleted_at'
    end
    object memActioncta_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'cta_dt_registration'
      Origin = 'cta_dt_registration'
    end
    object memActionCodAction: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodAction'
      Origin = 'CodAction'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  object frx_db_usuario: TfrxDBDataset
    UserName = 'usuario'
    CloseDataSource = False
    DataSet = mem
    BCDToCurrency = False
    Left = 528
    Top = 48
  end
end
