inherited frm_contract_user: Tfrm_contract_user
  Caption = 'Manuten'#231#227'o: Usu'#225'rios'
  ClientHeight = 673
  ClientWidth = 805
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 821
  ExplicitHeight = 712
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl_1: TcxPageControl
    Width = 805
    Height = 618
    Properties.ActivePage = cxTabSheet_2
    ExplicitWidth = 805
    ExplicitHeight = 618
    ClientRectBottom = 612
    ClientRectRight = 799
    inherited cxTabSheet_1: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 797
      ExplicitHeight = 584
      inherited cxGrid_1: TcxGrid
        Width = 791
        Height = 578
        ExplicitWidth = 791
        ExplicitHeight = 578
        inherited cxGrid_1DBTableView1: TcxGridDBTableView
          OnCustomDrawCell = cxGrid_1DBTableView1CustomDrawCell
          object cxGrid_1DBTableView1ctr_usr_id: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_id'
            Width = 75
          end
          object cxGrid_1DBTableView1ctr_usr_first_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_first_name'
            Width = 125
          end
          object cxGrid_1DBTableView1ctr_usr_last_name: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_last_name'
            Width = 125
          end
          object cxGrid_1DBTableView1ctr_usr_email: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_email'
            Width = 200
          end
          object cxGrid_1DBTableView1ctr_usr_username: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_username'
            Width = 125
          end
          object cxGrid_1DBTableView1ctr_usr_dt_birth: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_dt_birth'
            Width = 100
          end
          object cxGrid_1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Logado'
            DataBinding.FieldName = 'ctr_usr_logged'
            Width = 50
          end
          object cxGrid_1DBTableView1ctr_usr_dt_registration: TcxGridDBColumn
            DataBinding.FieldName = 'ctr_usr_dt_registration'
            Width = 125
          end
        end
      end
    end
    inherited cxTabSheet_2: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 797
      ExplicitHeight = 584
      inherited cxPageControl_2: TcxPageControl
        Width = 791
        Height = 578
        Properties.ActivePage = cxTabSheet1
        ExplicitWidth = 791
        ExplicitHeight = 578
        ClientRectBottom = 572
        ClientRectRight = 785
        inherited cxTabSheet_3: TcxTabSheet
          ExplicitLeft = 2
          ExplicitTop = 28
          ExplicitWidth = 783
          ExplicitHeight = 544
          inherited dxLayoutControl_1: TdxLayoutControl
            Width = 783
            Height = 544
            ExplicitWidth = 783
            ExplicitHeight = 544
            inherited dbedt_id: TcxDBTextEdit
              DataBinding.DataField = 'ctr_usr_id'
            end
            inherited dbedt_dt_registration: TcxDBDateEdit
              Left = 245
              DataBinding.DataField = 'ctr_usr_dt_registration'
              ExplicitLeft = 245
            end
            object cxDBTextEdit1: TcxDBTextEdit [2]
              Left = 59
              Top = 103
              DataBinding.DataField = 'ctr_usr_first_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxDBTextEdit4: TcxDBTextEdit [3]
              Left = 59
              Top = 130
              DataBinding.DataField = 'ctr_usr_username'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 6
              Width = 121
            end
            object cxDBTextEdit2: TcxDBTextEdit [4]
              Left = 245
              Top = 103
              DataBinding.DataField = 'ctr_usr_last_name'
              DataBinding.DataSource = ds
              Properties.CharCase = ecUpperCase
              Style.HotTrack = False
              TabOrder = 4
              Width = 130
            end
            object cxDBTextEdit3: TcxDBTextEdit [5]
              Left = 245
              Top = 130
              DataBinding.DataField = 'ctr_usr_email'
              DataBinding.DataSource = ds
              Properties.CharCase = ecLowerCase
              Style.HotTrack = False
              TabOrder = 7
              Width = 305
            end
            object cxDBCheckBox1: TcxDBCheckBox [6]
              Left = 381
              Top = 38
              AutoSize = False
              Caption = 'Administrador'
              DataBinding.DataField = 'ctr_usr_admin'
              DataBinding.DataSource = ds
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Style.HotTrack = False
              TabOrder = 2
              Transparent = True
              Height = 21
              Width = 132
            end
            object cxDBDateEdit1: TcxDBDateEdit [7]
              Left = 429
              Top = 103
              DataBinding.DataField = 'ctr_usr_dt_birth'
              DataBinding.DataSource = ds
              Style.HotTrack = False
              TabOrder = 5
              Width = 121
            end
            object dxLayoutItem3: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Nome'
              Control = cxDBTextEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem6: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avTop
              CaptionOptions.Text = 'Usu'#225'rio'
              Control = cxDBTextEdit4
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLayoutGroup2
              AlignHorz = ahLeft
              AlignVert = avTop
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLayoutItem4: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Sobrenome'
              Control = cxDBTextEdit2
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 130
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem5: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup1
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'E-mail'
              Control = cxDBTextEdit3
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 305
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLayoutItem7: TdxLayoutItem
              Parent = dxLayoutGroup1
              CaptionOptions.Text = 'cxDBCheckBox1'
              CaptionOptions.Visible = False
              Control = cxDBCheckBox1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 132
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object dxLayoutItem8: TdxLayoutItem
              Parent = dxLayoutAutoCreatedGroup3
              AlignHorz = ahLeft
              AlignVert = avClient
              CaptionOptions.Text = 'Dt. Aniv.'
              Control = cxDBDateEdit1
              ControlOptions.OriginalHeight = 21
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 2
            end
          end
        end
        object cxTabSheet1: TcxTabSheet
          Caption = 'Controle'
          OnShow = cxTabSheet1Show
          object dxLayoutControl1: TdxLayoutControl
            Left = 0
            Top = 0
            Width = 783
            Height = 544
            Align = alClient
            TabOrder = 0
            LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
            OnDblClick = dxLayoutControl_1DblClick
            object cxListEmps: TcxCheckListBox
              Left = 17
              Top = 38
              Width = 729
              Height = 129
              Items = <>
              TabOrder = 0
              OnClick = cxListEmpsClick
              OnClickCheck = cxListEmpsClickCheck
            end
            object cxListMenu: TcxCheckListBox
              Left = 17
              Top = 211
              Width = 729
              Height = 97
              Columns = 2
              Items = <>
              TabOrder = 1
              OnClickCheck = cxListMenuClickCheck
            end
            object AdvOfficeTabSet1: TAdvOfficeTabSet
              Left = 17
              Top = 314
              Width = 729
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
              ActiveTabIndex = 2
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
            object dxLayoutGroup3: TdxLayoutGroup
              AlignHorz = ahLeft
              AlignVert = avTop
              ButtonOptions.Buttons = <>
              Hidden = True
              ItemIndex = 1
              ShowBorder = False
              Index = -1
            end
            object dxLayoutGroup4: TdxLayoutGroup
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'Lista de empresa'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = True
              SizeOptions.SizableVert = True
              SizeOptions.Height = 98
              SizeOptions.Width = 743
              ButtonOptions.Buttons = <>
              Index = 0
            end
            object dxLayoutItem10: TdxLayoutItem
              Parent = dxLayoutGroup4
              Control = cxListEmps
              ControlOptions.OriginalHeight = 129
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutGroup5: TdxLayoutGroup
              Parent = dxLayoutGroup3
              CaptionOptions.Text = 'New Group'
              ButtonOptions.Buttons = <>
              ItemIndex = 1
              Index = 1
            end
            object dxLayoutItem9: TdxLayoutItem
              Parent = dxLayoutGroup5
              Control = cxListMenu
              ControlOptions.OriginalHeight = 97
              ControlOptions.OriginalWidth = 121
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLayoutItem11: TdxLayoutItem
              Parent = dxLayoutGroup5
              Control = AdvOfficeTabSet1
              ControlOptions.OriginalHeight = 27
              ControlOptions.OriginalWidth = 300
              ControlOptions.ShowBorder = False
              Index = 1
            end
          end
        end
      end
    end
  end
  inherited dxBarDockControl_1: TdxBarDockControl
    Width = 805
    ExplicitWidth = 805
  end
  inherited PopupMenu_1: TPopupMenu
    OnPopup = PopupMenu_1Popup
    object N3: TMenuItem
      Caption = '-'
      Enabled = False
    end
    object BloquearUsurio1: TMenuItem
      Caption = 'Bloquear Usu'#225'rio'
      OnClick = BloquearUsurio1Click
    end
    object DesbloquearUsurio1: TMenuItem
      Caption = 'Desbloquear Usu'#225'rio'
      OnClick = DesbloquearUsurio1Click
    end
    object ZeraraSenha1: TMenuItem
      Caption = 'Resetar Senha'
      OnClick = ZeraraSenha1Click
    end
    object DesconectarUsurio1: TMenuItem
      Caption = 'Desconectar  Usu'#225'rio'
      OnClick = DesconectarUsurio1Click
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited qry: TFDQuery
    Active = True
    AfterInsert = qryAfterInsert
    CachedUpdates = True
    IndexFieldNames = 'contract_ctr_id'
    MasterSource = frm_dm.ds_signin
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    SQL.Strings = (
      'select * from contract_user')
    object qryctr_usr_id: TFDAutoIncField
      DisplayLabel = 'C'#243'd. ID'
      FieldName = 'ctr_usr_id'
      Origin = 'ctr_usr_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryctr_usr_first_name: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'ctr_usr_first_name'
      Origin = 'ctr_usr_first_name'
      Size = 50
    end
    object qryctr_usr_last_name: TStringField
      DisplayLabel = 'Sobrenome'
      FieldName = 'ctr_usr_last_name'
      Origin = 'ctr_usr_last_name'
      Size = 50
    end
    object qryctr_usr_email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'ctr_usr_email'
      Origin = 'ctr_usr_email'
      Size = 65
    end
    object qryctr_usr_username: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'ctr_usr_username'
      Origin = 'ctr_usr_username'
      Size = 25
    end
    object qryctr_usr_password: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'ctr_usr_password'
      Origin = 'ctr_usr_password'
      Size = 25
    end
    object qryctr_usr_dt_birth: TDateField
      DisplayLabel = 'Dt. Aniv.'
      FieldName = 'ctr_usr_dt_birth'
      Origin = 'ctr_usr_dt_birth'
    end
    object qryctr_usr_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Dt. Reg.'
      FieldName = 'ctr_usr_dt_registration'
      Origin = 'ctr_usr_dt_registration'
    end
    object qrycontract_ctr_id: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contrato ID'
      FieldName = 'contract_ctr_id'
      Origin = 'contract_ctr_id'
    end
    object qryctr_usr_status: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_status'
      Origin = 'ctr_usr_status'
      FixedChar = True
      Size = 1
    end
    object qryctr_usr_logged: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_logged'
      Origin = 'ctr_usr_logged'
      FixedChar = True
      Size = 1
    end
    object qryctr_usr_admin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ctr_usr_admin'
      Origin = 'ctr_usr_admin'
      FixedChar = True
      Size = 1
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
  object ACBrValidador1: TACBrValidador
    TipoDocto = docEmail
    IgnorarChar = './-'
    OnMsgErro = ACBrValidador1MsgErro
    Left = 712
    Top = 96
  end
  object qry_contract_user_enterprise: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ctr_usr_ent_user_id'
    MasterSource = ds
    MasterFields = 'ctr_usr_id'
    DetailFields = 'ctr_usr_ent_user_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from contract_user_enterprise'
      'where ctr_usr_ent_user_id = :ctr_usr_id')
    Left = 648
    Top = 96
    ParamData = <
      item
        Name = 'CTR_USR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object qry_contract_user_enterprisectr_usr_ent_id: TFDAutoIncField
      FieldName = 'ctr_usr_ent_id'
      ReadOnly = True
    end
    object qry_contract_user_enterprisectr_usr_ent_user_id: TIntegerField
      FieldName = 'ctr_usr_ent_user_id'
    end
    object qry_contract_user_enterprisectr_usr_ent_ent_id: TIntegerField
      FieldName = 'ctr_usr_ent_ent_id'
    end
  end
  object ds_contract_user_enterprise: TDataSource
    DataSet = qry_contract_user_enterprise
    Left = 680
    Top = 96
  end
  object qry_contract_user_action: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'ctr_usr_act_user_id'
    MasterSource = ds
    MasterFields = 'ctr_usr_id'
    DetailFields = 'ctr_usr_act_user_id'
    Connection = frm_dm.connCCS
    SchemaAdapter = FDSchemaAdapter_1
    FetchOptions.AssignedValues = [evDetailCascade]
    FetchOptions.DetailCascade = True
    SQL.Strings = (
      'select * from contract_user_action'#10
      'where ctr_usr_act_user_id = :ctr_usr_id')
    Left = 616
    Top = 96
    ParamData = <
      item
        Name = 'CTR_USR_ID'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object qry_contract_user_actionctr_usr_act_id: TFDAutoIncField
      FieldName = 'ctr_usr_act_id'
      ProviderFlags = [pfInUpdate]
      ReadOnly = True
    end
    object qry_contract_user_actionctr_usr_act_user_id: TIntegerField
      FieldName = 'ctr_usr_act_user_id'
    end
    object qry_contract_user_actionctr_usr_act_action_name: TStringField
      FieldName = 'ctr_usr_act_action_name'
      Size = 80
    end
  end
end
