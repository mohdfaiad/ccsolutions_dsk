inherited frm_main: Tfrm_main
  Caption = 'M'#243'dulo de Contratos - CCS.'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu_1: TMainMenu
    inherited Cotnrato1: TMenuItem
      object Clientes1: TMenuItem
        Action = Action_cliente
      end
    end
  end
  inherited ActionList_1: TActionList
    object Action_cliente: TAction
      Caption = 'Clientes'
      OnExecute = Action_clienteExecute
    end
  end
end