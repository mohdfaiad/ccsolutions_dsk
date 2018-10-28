object frm_dm_report: Tfrm_dm_report
  OldCreateOrder = False
  Height = 649
  Width = 630
  object strpContract: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_contract_read'
    Left = 32
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'p_ctr_token'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end>
  end
  object fdsContract: TfrxDBDataset
    UserName = 'Contrato'
    CloseDataSource = False
    DataSet = strpContract
    BCDToCurrency = False
    Left = 32
    Top = 64
  end
  object strpEnterprise: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_enterprise_read'
    Left = 104
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'p_ctr_token'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end>
  end
  object fdsEnterprise: TfrxDBDataset
    UserName = 'Empresas'
    CloseDataSource = False
    DataSet = strpEnterprise
    BCDToCurrency = False
    Left = 104
    Top = 64
  end
  object FDStoredProc2: TFDStoredProc
    Connection = frm_dm.connCCS
    Left = 528
    Top = 472
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'Contrato'
    CloseDataSource = False
    DataSet = FDStoredProc2
    BCDToCurrency = False
    Left = 528
    Top = 520
  end
  object strpClient: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_client_read'
    Left = 168
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'p_ctr_token'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end>
  end
  object fdsClient: TfrxDBDataset
    UserName = 'Clientes'
    CloseDataSource = False
    DataSet = strpClient
    BCDToCurrency = False
    Left = 168
    Top = 64
  end
  object strpClientContract: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_client_contract_read'
    Left = 248
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'p_ctr_token'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end>
  end
  object fdsClientContract: TfrxDBDataset
    UserName = 'Contratos'
    CloseDataSource = False
    DataSet = strpClientContract
    BCDToCurrency = False
    Left = 248
    Top = 64
  end
  object strpClientContractIten: TFDStoredProc
    Connection = frm_dm.connCCS
    StoredProcName = 'ccs.proc_client_contract_iten_read'
    Left = 352
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'p_ctr_token'
        DataType = ftString
        ParamType = ptInput
        Size = 32
      end>
  end
  object fdsClientContractIten: TfrxDBDataset
    UserName = 'Contratos Itens'
    CloseDataSource = False
    DataSet = strpClientContractIten
    BCDToCurrency = False
    Left = 352
    Top = 64
  end
end
