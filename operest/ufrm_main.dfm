inherited frm_main: Tfrm_main
  Caption = 'M'#243'dulo OperEST - CCS Protheus.'
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    inherited dxRibbon1Tab_1: TdxRibbonTab
      Index = 0
    end
    inherited dxRibbon1Tab_2: TdxRibbonTab
      Index = 1
    end
    inherited dxRibbon1Tab_3: TdxRibbonTab
      Index = 2
    end
    inherited dxRibbon1Tab_4: TdxRibbonTab
      Index = 3
    end
    inherited dxRibbon1Tab_5: TdxRibbonTab
      Index = 4
    end
  end
  inherited dxRibbonBackstageView1: TdxRibbonBackstageView
    inherited dxRibbonBackstageViewTabSheet1: TdxRibbonBackstageViewTabSheet
      inherited cxLabel1: TcxLabel
        Style.IsFontAssigned = True
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxBarManager_1Bar1: TdxBar
      FloatClientWidth = 79
      FloatClientHeight = 210
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  inherited ActionList_1: TActionList
    object Action_contract: TAction
      Caption = 'Contrato'
      Hint = 'Manuten'#231#227'o Contrato'
    end
    object Action_contract_user: TAction
      Caption = 'Usu'#225'rios'
      Hint = 'Manuten'#231#227'o Usu'#225'rios'
    end
    object Action_enterprise: TAction
      Caption = 'Empresas'
      Hint = 'Manuten'#231#227'o Empresas'
    end
    object Action_client: TAction
      Caption = 'Clientes'
      Hint = 'Manuten'#231#227'o Clientes'
    end
    object Action5: TAction
      Caption = 'Action5'
    end
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
end
