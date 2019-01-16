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
      object N3: TMenuItem [1]
        Caption = '-'
      end
      object DadosdoUsurio2: TMenuItem [2]
        Action = Action_logoff
      end
      object N1: TMenuItem [3]
        Caption = '-'
        Enabled = False
      end
    end
    inherited Cotnrato1: TMenuItem
      object Clientes1: TMenuItem
        Action = Action_cliente
      end
      object Fornecedores1: TMenuItem
        Action = Action_fornecedor
      end
      object Revendas1: TMenuItem
        Action = Action_revenda
      end
      object N2: TMenuItem
        Caption = '-'
        Enabled = False
      end
      object Servidores1: TMenuItem
        Action = Action_servidor
      end
      object Contratos1: TMenuItem
        Action = Action_contrato
      end
      object ProdutoseServios1: TMenuItem
        Action = Action_produto
      end
    end
    inherited Relatrios1: TMenuItem
      object Provedores1: TMenuItem
        Action = Action_provedor
      end
      object NmerosDIDs2: TMenuItem
        Caption = 'N'#250'meros DIDs'
        object NmerosDIDs1: TMenuItem
          Action = Action_numero
        end
        object AtrelarNmero1: TMenuItem
          Action = Action_numero_cliente
        end
      end
    end
    object ickets1: TMenuItem [3]
      Caption = 'Tickets'
      object ickets2: TMenuItem
        Action = Action_ticket
      end
    end
  end
  inherited ActionList_1: TActionList
    inherited Action_sair: TAction
      Category = 'Sistema'
    end
    object Action_numero_cliente: TAction
      Category = 'Modulo'
      Caption = 'Configurar DIDs'
      Hint = 'Manuten'#231#227'o dos N'#250'meros dos Clientes'
      OnExecute = Action_numero_clienteExecute
    end
    object Action_usuario: TAction
      Category = 'Sistema'
      Caption = 'Dados do Usu'#225'rio'
      Hint = 'Manuten'#231#227'o do Usu'#225'rio'
      OnExecute = Action_usuarioExecute
    end
    object Action_cliente: TAction
      Category = 'Cadastros'
      Caption = 'Clientes'
      Hint = 'Manuten'#231#227'o dos Clientes'
      OnExecute = Action_clienteExecute
    end
    object Action_revenda: TAction
      Category = 'Cadastros'
      Caption = 'Revendas'
      Hint = 'Manuten'#231#227'o das Revendas'
      OnExecute = Action_revendaExecute
    end
    object Action_contrato: TAction
      Category = 'Cadastros'
      Caption = 'Contratos'
      Hint = 'Manuten'#231#227'o dos Contratos'
      OnExecute = Action_contratoExecute
    end
    object Action_provedor: TAction
      Category = 'Cadastros'
      Caption = 'Provedores'
      Hint = 'Manuten'#231#227'o dos Provedores'
      OnExecute = Action_provedorExecute
    end
    object Action_numero: TAction
      Category = 'Modulo'
      Caption = 'Gerenciar DIDs'
      Hint = 'Manuten'#231#227'o dos N'#250'meros'
      OnExecute = Action_numeroExecute
    end
    object Action_produto: TAction
      Category = 'Modulo'
      Caption = 'Produtos e Servi'#231'os'
      Hint = 'Manuten'#231#227'o dos Produtos e Servi'#231'os'
      OnExecute = Action_produtoExecute
    end
    object Action_fornecedor: TAction
      Category = 'Cadastros'
      Caption = 'Fornecedores'
      Hint = 'Manuten'#231#227'o Fornecedores'
      OnExecute = Action_fornecedorExecute
    end
    object Action_logoff: TAction
      Category = 'Sistema'
      Caption = 'Logoff'
      Hint = 'Trocar de Usu'#225'rio'
    end
    object Action_ticket: TAction
      Category = 'Tickets'
      Caption = 'Tickets'
      Hint = 'Manuten'#231#227'o dos Tickets'
      OnExecute = Action_ticketExecute
    end
    object Action_servidor: TAction
      Category = 'Cadastros'
      Caption = 'Servidores'
      Hint = 'Manuten'#231#227'o dos Servidores'
      OnExecute = Action_servidorExecute
    end
  end
end
