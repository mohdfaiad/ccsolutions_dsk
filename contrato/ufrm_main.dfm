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
      object rocarUsurio1: TMenuItem [2]
        Action = Action_logoff
      end
      object N2: TMenuItem [3]
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
      object N3: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object ProdutoseServios1: TMenuItem
        Action = Action_produto
      end
    end
    inherited Relatrios1: TMenuItem
      object Contratos1: TMenuItem
        Action = Action_contrato
      end
    end
  end
  inherited ActionList_1: TActionList
    inherited Action_sair: TAction
      Category = 'Sistema'
    end
    object Action_cliente: TAction
      Category = 'Cadastros'
      Caption = 'Clientes'
      OnExecute = Action_clienteExecute
    end
    object Action_usuario: TAction
      Category = 'Cadastros'
      Caption = 'Dados do Usu'#225'rio'
      Hint = 'Manuten'#231#227'o seus Dados'
      OnExecute = Action_usuarioExecute
    end
    object Action_contrato: TAction
      Category = 'Cadastros'
      Caption = 'Contratos'
      Hint = 'Manuten'#231#227'o - Contratos'
      OnExecute = Action_contratoExecute
    end
    object Action_revenda: TAction
      Category = 'Cadastros'
      Caption = 'Revendas'
      Hint = 'Manuten'#231#227'o - Revendas'
      OnExecute = Action_revendaExecute
    end
    object Action_produto: TAction
      Category = 'Cadastros'
      Caption = 'Produtos e Servi'#231'os'
      Hint = 'Manuten'#231#227'o dos Produtos e Servi'#231'os'
      OnExecute = Action_produtoExecute
    end
    object Action_logoff: TAction
      Category = 'Sistema'
      Caption = 'Logoff'
      Hint = 'Trocar de Usu'#225'rio'
    end
  end
end
