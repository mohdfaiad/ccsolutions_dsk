object frm_dm_ds: Tfrm_dm_ds
  OldCreateOrder = False
  Height = 297
  Width = 458
  object qry_client: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from client')
    Left = 32
    Top = 16
  end
  object qry_enterprise: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from enterprise')
    Left = 32
    Top = 72
  end
  object qry_stock: TFDQuery
    IndexFieldNames = 'contract_ctr_id'
    MasterFields = 'ctr_id'
    DetailFields = 'contract_ctr_id'
    Connection = frm_dm.connCCS
    SQL.Strings = (
      'select * from stock')
    Left = 32
    Top = 120
  end
end
