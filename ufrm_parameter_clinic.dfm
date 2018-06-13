inherited frm_parameter_clinic: Tfrm_parameter_clinic
  Caption = 'Tempo de Atendimento'
  ClientWidth = 470
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid_1: TcxGrid
    Left = 56
    Top = 200
    Width = 345
    Height = 111
    Align = alNone
    ExplicitLeft = 56
    ExplicitTop = 200
    ExplicitWidth = 345
    ExplicitHeight = 111
  end
  inherited dxBarDockControl1: TdxBarDockControl
    Width = 470
    ExplicitLeft = -16
    ExplicitWidth = 704
  end
  inherited dxStatusBar_1: TdxStatusBar
    Width = 470
  end
  object dxLayoutControl1: TdxLayoutControl [3]
    AlignWithMargins = True
    Left = 3
    Top = 30
    Width = 464
    Height = 300
    Align = alClient
    TabOrder = 7
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    ExplicitLeft = -2
    ExplicitTop = 102
    ExplicitWidth = 698
    object cxGroupBox1: TcxGroupBox
      Left = 10
      Top = 10
      Align = alClient
      Caption = 'Tempo de atendimento'
      ParentBackground = False
      ParentColor = False
      Style.Color = clWhite
      TabOrder = 0
      Height = 271
      Width = 431
      object cxLabel1: TcxLabel
        Left = 24
        Top = 39
        Caption = 'Hora'
        Transparent = True
      end
      object edtTime: TcxTimeEdit
        Left = 24
        Top = 58
        Properties.TimeFormat = tfHourMin
        TabOrder = 1
        Width = 121
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'cxGroupBox1'
      CaptionOptions.Visible = False
      Control = cxGroupBox1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 271
      ControlOptions.OriginalWidth = 431
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  inherited dxBarManager_1: TdxBarManager
    Left = 392
    Top = 16
    inherited dxBarManager_1Bar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'btnSave'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    object btnSave: TdxBarButton
      Action = Action_save
      Category = 0
    end
  end
  inherited ActionList_1: TActionList
    Left = 392
    Top = 64
    inherited Action_select: TAction
      Enabled = False
      Visible = False
    end
    object Action_save: TAction
      Caption = 'Salvar'
      ImageIndex = 6
      OnExecute = Action_saveExecute
    end
  end
  inherited qry: TFDQuery
    Active = True
    IndexFieldNames = 'contract_ctr_cod'
    MasterSource = frm_dm.ds_contract
    MasterFields = 'ctr_cod'
    DetailFields = 'contract_ctr_cod'
    Connection = frm_dm.connCCS
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      
        'select parameter_clinic.*, hex(prc_cod)as CodParameter from para' +
        'meter_clinic'
      'where contract_ctr_cod =:ctr_cod')
    Left = 288
    Top = 16
    ParamData = <
      item
        Name = 'CTR_COD'
        DataType = ftBytes
        ParamType = ptInput
        Size = 34
        Value = Null
      end>
    object qryprc_cod: TBytesField
      FieldName = 'prc_cod'
      Origin = 'prc_cod'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrycontract_ctr_cod: TBytesField
      AutoGenerateValue = arDefault
      FieldName = 'contract_ctr_cod'
      Origin = 'contract_ctr_cod'
    end
    object qryprc_time_service: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'prc_time_service'
      Origin = 'prc_time_service'
    end
    object qryCodParameter: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CodParameter'
      Origin = 'CodParameter'
      ProviderFlags = []
      ReadOnly = True
      Size = 32
    end
  end
  inherited ds: TDataSource
    Left = 320
    Top = 16
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
    DesignInfo = 1048934
  end
  inherited PopupMenu1: TPopupMenu
    Left = 255
    Top = 16
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 224
    Top = 16
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
end
