inherited frm_import_astpp: Tfrm_import_astpp
  Caption = 'frm_import_astpp'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgctrl_import: TcxPageControl
    inherited tbsht_data: TcxTabSheet
      inherited grid_data: TcxGrid
        Height = 631
      end
    end
  end
  inherited dxBarManager_1: TdxBarManager
    PixelsPerInch = 96
  end
  inherited cxImageList_1: TcxImageList
    FormatVersion = 1
  end
  inherited QImport3Wizard_1: TQImport3Wizard
    Formats.ShortDateFormat = 'dd/MM/yy'
    Formats.LongDateFormat = 'd MMMM yyyy'
    Formats.ShortTimeFormat = 'hh:mm'
    Formats.LongTimeFormat = 'hh:mm:ss'
  end
  inherited popup_1: TdxRibbonPopupMenu
    PixelsPerInch = 96
  end
end
