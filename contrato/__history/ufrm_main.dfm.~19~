inherited frm_main: Tfrm_main
  Caption = 'M'#243'dulo de Contratos - CCS.'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited MainMenu_1: TMainMenu
    inherited Sistema1: TMenuItem
      object DadosdoUsurio1: TMenuItem [0]
        Action = Action_usuario
      end
      object N1: TMenuItem [1]
        Caption = '-'
        Enabled = False
      end
    end
    inherited Cotnrato1: TMenuItem
      object Clientes1: TMenuItem
        Action = Action_cliente
      end
      object Revendas1: TMenuItem
        Action = Action_revenda
      end
    end
    inherited Relatrios1: TMenuItem
      object Contratos1: TMenuItem
        Action = Action_contrato
      end
    end
  end
  inherited ActionList_1: TActionList
    object Action_cliente: TAction
      Caption = 'Clientes'
      OnExecute = Action_clienteExecute
    end
    object Action_usuario: TAction
      Caption = 'Dados do Usu'#225'rio'
      Hint = 'Manuten'#231#227'o seus Dados'
      OnExecute = Action_usuarioExecute
    end
    object Action_contrato: TAction
      Caption = 'Contratos'
      Hint = 'Manuten'#231#227'o - Contratos'
      OnExecute = Action_contratoExecute
    end
    object Action_revenda: TAction
      Caption = 'Revendas'
      Hint = 'Manuten'#231#227'o - Revendas'
      OnExecute = Action_revendaExecute
    end
  end
end
