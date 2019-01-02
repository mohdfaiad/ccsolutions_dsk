inherited frm_scheduling_clinical2: Tfrm_scheduling_clinical2
  Caption = 'frm_scheduling_clinical2'
  ClientHeight = 518
  ClientWidth = 817
  Color = clGradientInactiveCaption
  OnCreate = FormCreate
  ExplicitWidth = 823
  ExplicitHeight = 547
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid_1: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 151
    Width = 811
    Height = 344
    ExplicitTop = 144
    ExplicitWidth = 641
    ExplicitHeight = 189
    inherited cxGrid_1DBTableView1: TcxGridDBTableView
      DataController.DataSource = ds
      object cxGrid_1DBTableView1sch_cod: TcxGridDBColumn
        DataBinding.FieldName = 'sch_cod'
      end
      object cxGrid_1DBTableView1contract_ctr_cod: TcxGridDBColumn
        DataBinding.FieldName = 'contract_ctr_cod'
      end
      object cxGrid_1DBTableView1employee_emp_cod: TcxGridDBColumn
        DataBinding.FieldName = 'employee_emp_cod'
      end
      object cxGrid_1DBTableView1sch_id: TcxGridDBColumn
        DataBinding.FieldName = 'sch_id'
      end
      object cxGrid_1DBTableView1sch_datetime: TcxGridDBColumn
        DataBinding.FieldName = 'sch_datetime'
      end
      object cxGrid_1DBTableView1sch_description: TcxGridDBColumn
        DataBinding.FieldName = 'sch_description'
      end
      object cxGrid_1DBTableView1sch_dt_registration: TcxGridDBColumn
        DataBinding.FieldName = 'sch_dt_registration'
      end
    end
  end
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 817
  end
  inherited dxStatusBar_1: TdxStatusBar
    Top = 498
    Width = 817
    ExplicitTop = 333
    ExplicitWidth = 641
  end
  object AdvPanel1: TAdvPanel [3]
    AlignWithMargins = True
    Left = 3
    Top = 30
    Width = 811
    Height = 115
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientActiveCaption
    TabOrder = 7
    UseDockManager = True
    Version = '2.5.7.3'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    Caption.Indent = 0
    DoubleBuffered = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    Text = ''
    ExplicitLeft = 75
    FullHeight = 200
    object labelDataAgendamento: TLabel
      Left = 16
      Top = 56
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object labelHora: TLabel
      Left = 284
      Top = 56
      Width = 45
      Height = 13
      Caption = 'labelHora'
    end
    object cxLabel1: TcxLabel
      Left = 16
      Top = 8
      Caption = 'M'#233'dico'
    end
    object cxTextEditDoctor: TcxTextEdit
      Left = 16
      Top = 28
      Enabled = False
      TabOrder = 1
      Width = 393
    end
    object cxDate: TcxDateEdit
      Left = 16
      Top = 73
      EditValue = 43449.6394097222d
      Properties.ShowTime = False
      TabOrder = 2
      Width = 125
    end
    object cxTime: TcxTimeEdit
      Left = 284
      Top = 73
      TabOrder = 3
      Width = 125
    end
  end
  inherited dxBarManager_1: TdxBarManager
    Top = 360
    inherited dxBarButton1: TdxBarButton
      ImageIndex = 6
    end
  end
  inherited ActionList_1: TActionList
    Left = 536
    Top = 352
  end
  inherited qry: TFDQuery
    AfterInsert = qryAfterInsert
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from scheduling;')
    Top = 376
    object qrysch_cod: TBytesField
      FieldName = 'sch_cod'
      Origin = 'sch_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryemployee_emp_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'employee_emp_cod'
      Origin = 'employee_emp_cod'
    end
    object qrysch_id: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'sch_id'
      Origin = 'sch_id'
    end
    object qrysch_datetime: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_datetime'
      Origin = 'sch_datetime'
    end
    object qrysch_description: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'sch_description'
      Origin = 'sch_description'
      Size = 500
    end
    object qrysch_dt_registration: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'sch_dt_registration'
      Origin = 'sch_dt_registration'
    end
  end
  inherited ds: TDataSource
    Left = 432
    Top = 360
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 20513238
  end
  inherited PopupMenu1: TPopupMenu
    Left = 327
    Top = 376
  end
end
