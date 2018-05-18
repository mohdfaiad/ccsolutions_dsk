inherited frm_contract_user: Tfrm_contract_user
  Caption = 'frm_contract_user'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_1: TcxPageControl
    inherited tbsht_1: TcxTabSheet
      inherited pgctrl_2: TcxPageControl
        inherited tbsht_3: TcxTabSheet
          inherited grid_1: TcxGrid
            inherited cxGridDBTableView1: TcxGridDBTableView
              object cxGridDBTableView1Column1: TcxGridDBColumn
                DataBinding.FieldName = 'client_cod'
              end
              object cxGridDBTableView1Column2: TcxGridDBColumn
              end
              object cxGridDBTableView1Column3: TcxGridDBColumn
              end
              object cxGridDBTableView1Column4: TcxGridDBColumn
              end
            end
          end
        end
      end
    end
    inherited tbsht_2: TcxTabSheet
      inherited pgctrl_3: TcxPageControl
        inherited tbsht_5: TcxTabSheet
          inherited cxGroupBox2: TcxGroupBox
            Top = 64
            ExplicitTop = 64
            object edtNome: TcxTextEdit
              Left = 3
              Top = 20
              Properties.CharCase = ecUpperCase
              TabOrder = 0
              Width = 125
            end
            object edtSobrenome: TcxTextEdit
              Left = 134
              Top = 20
              Properties.CharCase = ecUpperCase
              TabOrder = 1
              Width = 125
            end
            object edtUsuario: TcxTextEdit
              Left = 3
              Top = 64
              TabOrder = 3
              Width = 125
            end
            object edtEmail: TcxTextEdit
              Left = 134
              Top = 64
              TabOrder = 4
              Width = 256
            end
            object cxLabel3: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Nome'
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 134
              Top = 3
              Caption = 'Sobrenome'
              Transparent = True
            end
            object cxLabel5: TcxLabel
              Left = 265
              Top = 3
              Caption = 'Dt. Nasc'
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 3
              Top = 47
              Caption = 'Usu'#225'rio'
              Transparent = True
            end
            object cxLabel7: TcxLabel
              Left = 134
              Top = 47
              Caption = 'E-mail'
              Transparent = True
            end
            object edtDtNasc: TcxDateEdit
              Left = 267
              Top = 20
              TabOrder = 2
              Width = 123
            end
            object CheckBoxAdm: TcxCheckBox
              Left = 3
              Top = 112
              Caption = 'Administrador'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              State = cbsGrayed
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  object Button1: TButton [3]
    Left = 448
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 7
    OnClick = Button1Click
  end
  inherited actlist_1: TActionList
    inherited Action_close: TAction
      OnExecute = Action_closeExecute
    end
  end
  inherited ds: TDataSource
    Left = 768
    Top = 64
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
end
