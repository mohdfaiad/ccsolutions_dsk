inherited frm_main: Tfrm_main
  Caption = 'M'#243'dulo Telefonia - CCS.'
  OnCreate = FormCreate
  ExplicitWidth = 1024
  ExplicitHeight = 788
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
      object N2: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Contratos1: TMenuItem
        Action = Action_contrato
      end
    end
    inherited Relatrios1: TMenuItem
      object Provedores1: TMenuItem
        Action = Action_provedor
      end
    end
  end
  inherited ActionList_1: TActionList
    object Action_usuario: TAction
      Caption = 'Dados do Usu'#225'rio'
      Hint = 'Manuten'#231#227'o do Usu'#225'rio'
      OnExecute = Action_usuarioExecute
    end
    object Action_cliente: TAction
      Caption = 'Clientes'
      Hint = 'Manuten'#231#227'o dos Clientes'
      OnExecute = Action_clienteExecute
    end
    object Action_revenda: TAction
      Caption = 'Revendas'
      Hint = 'Manuten'#231#227'o das Revendas'
      OnExecute = Action_revendaExecute
    end
    object Action_contrato: TAction
      Caption = 'Contratos'
      Hint = 'Manuten'#231#227'o dos Contratos'
      OnExecute = Action_contratoExecute
    end
    object Action_provedor: TAction
      Caption = 'Provedores'
      Hint = 'Manuten'#231#227'o dos Provedores'
      OnExecute = Action_provedorExecute
    end
  end
end
