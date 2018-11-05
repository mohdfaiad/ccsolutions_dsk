unit ufrm_dm_ds;

interface

uses
  System.SysUtils,
  System.Classes,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  Data.DB;

type
  Tfrm_dm_ds = class(TDataModule)
    dsClient: TDataSource;
    memClient: TFDMemTable;
    memClientcli_cod: TStringField;
    memClienttable_price_tbp_cod: TStringField;
    memClientcli_id: TLongWordField;
    memClientcli_type: TStringField;
    memClientcli_first_name: TStringField;
    memClientcli_last_name: TStringField;
    memClientcli_email: TStringField;
    memClientcli_cpfcnpj: TStringField;
    memClientcli_rgie: TStringField;
    memClientcli_im: TStringField;
    memClientcli_suframa: TStringField;
    memClientcli_add_bus_zipcode: TStringField;
    memClientcli_add_bus_address: TStringField;
    memClientcli_add_bus_number: TStringField;
    memClientcli_add_bus_street: TStringField;
    memClientcli_add_bus_complement: TStringField;
    memClientcli_add_bus_city: TStringField;
    memClientcli_add_bus_state: TStringField;
    memClientcli_add_bus_country: TStringField;
    memClientcli_add_bil_zipcode: TStringField;
    memClientcli_add_bil_address: TStringField;
    memClientcli_add_bil_number: TStringField;
    memClientcli_add_bil_street: TStringField;
    memClientcli_add_bil_complement: TStringField;
    memClientcli_add_bil_city: TStringField;
    memClientcli_add_bil_state: TStringField;
    memClientcli_add_bil_country: TStringField;
    memClientcli_add_del_zipcode: TStringField;
    memClientcli_add_del_address: TStringField;
    memClientcli_add_del_number: TStringField;
    memClientcli_add_del_street: TStringField;
    memClientcli_add_del_complement: TStringField;
    memClientcli_add_del_city: TStringField;
    memClientcli_add_del_state: TStringField;
    memClientcli_add_del_country: TStringField;
    memClientcli_phone1: TStringField;
    memClientcli_phone2: TStringField;
    memClientcli_phone3: TStringField;
    memClientcli_phone4: TStringField;
    memClientcli_contact: TStringField;
    memClientcli_day_maturity: TIntegerField;
    memClientcli_dt_birthopen: TDateField;
    memClientcli_weight: TBCDField;
    memClientcli_height: TBCDField;
    memClientcli_blood_type: TStringField;
    memClientcli_rh_factor: TStringField;
    memClientcli_du_factor: TStringField;
    memClientcli_cns: TStringField;
    memClientcli_gender: TStringField;
    memClientcli_skin_color: TStringField;
    memClientcli_status: TShortintField;
    memClientcli_image1: TBlobField;
    memClientcli_deleted_at: TDateTimeField;
    memClientcli_dt_registration: TDateTimeField;
    dsProduct: TDataSource;
    memProduct: TFDMemTable;
    memProductpro_cod: TStringField;
    memProductmaterial_mat_cod: TStringField;
    memProductsupplier_sup_cod: TStringField;
    memProductproduct_class_prc_cod: TStringField;
    memProductproduct_class_sub_prs_cod: TStringField;
    memProductmanufacturer_man_cod: TStringField;
    memProductbrand_bra_cod: TStringField;
    memProductncm_ncm_cod: TStringField;
    memProductproduct_unit_pru_cod: TStringField;
    memProductpro_id: TLongWordField;
    memProductpro_type: TStringField;
    memProductpro_name: TStringField;
    memProductpro_initials: TStringField;
    memProductpro_tag: TStringField;
    memProductpro_description: TMemoField;
    memProductpro_gender: TStringField;
    memProductpro_annotation: TMemoField;
    memProductpro_barcod: TStringField;
    memProductpro_barcod_manufacturer: TStringField;
    memProductpro_height: TBCDField;
    memProductpro_width: TBCDField;
    memProductpro_length: TBCDField;
    memProductpro_weight: TBCDField;
    memProductpro_liter: TBCDField;
    memProductpro_delivery_term: TIntegerField;
    memProductpro_status: TShortintField;
    memProductpro_deleted_at: TDateTimeField;
    memProductpro_dt_registration: TDateTimeField;
    dsReseller: TDataSource;
    memReseller: TFDMemTable;
    memResellerres_cod: TStringField;
    memResellerres_id: TLongWordField;
    memResellerres_type: TStringField;
    memResellerres_first_name: TStringField;
    memResellerres_last_name: TStringField;
    memResellerres_email: TStringField;
    memResellerres_cpfcnpj: TStringField;
    memResellerres_rgie: TStringField;
    memResellerres_im: TStringField;
    memResellerres_suframa: TStringField;
    memResellerres_add_bus_zipcode: TStringField;
    memResellerres_add_bus_address: TStringField;
    memResellerres_add_bus_number: TStringField;
    memResellerres_add_bus_street: TStringField;
    memResellerres_add_bus_complement: TStringField;
    memResellerres_add_bus_city: TStringField;
    memResellerres_add_bus_state: TStringField;
    memResellerres_add_bus_country: TStringField;
    memResellerres_phone1: TStringField;
    memResellerres_phone2: TStringField;
    memResellerres_phone3: TStringField;
    memResellerres_phone4: TStringField;
    memResellerres_contact: TStringField;
    memResellerres_dt_birthopen: TDateField;
    memResellerres_status: TShortintField;
    memResellerres_deleted_at: TDateTimeField;
    memResellerres_dt_registration: TDateTimeField;
    memProposalContract: TFDMemTable;
    dsProposalContract: TDataSource;
    memProposalContractreq_cod: TStringField;
    memProposalContractclient_cli_cod: TStringField;
    memProposalContractreq_id: TLongWordField;
    memProposalContractreq_deleted_at: TDateTimeField;
    memProposalContractreq_dt_registration: TDateTimeField;
    memMaterial: TFDMemTable;
    memMaterialmat_cod: TStringField;
    memMaterialmat_id: TLongWordField;
    memMaterialmat_name: TStringField;
    memMaterialmat_status: TShortintField;
    memMaterialmat_deleted_at: TDateTimeField;
    memMaterialmat_dt_registration: TDateTimeField;
    dsMaterial: TDataSource;
    memProvider: TFDMemTable;
    memProviderprv_cod: TStringField;
    memProviderprv_id: TLongWordField;
    memProviderprv_name: TStringField;
    memProviderprv_deleted_at: TDateTimeField;
    memProviderprv_dt_registration: TDateTimeField;
    dsProvider: TDataSource;
    dsDID: TDataSource;
    memDID: TFDMemTable;
    memDIDdid_cod: TStringField;
    memDIDdid_id: TLongWordField;
    memDIDdid_number: TStringField;
    memDIDdid_deleted_at: TDateTimeField;
    memDIDdid_dt_registration: TDateTimeField;
    memDIDprovider_prv_cod: TStringField;
    memTicketPriority: TFDMemTable;
    dsTicketPriority: TDataSource;
    memTicketType: TFDMemTable;
    dsTicketType: TDataSource;
    memTicketCategory: TFDMemTable;
    dsTicketCategory: TDataSource;
    memTicketCategorySub: TFDMemTable;
    dsTicketCategorySub: TDataSource;
    memContractUser: TFDMemTable;
    dsContractUser: TDataSource;
    memEnterprise: TFDMemTable;
    dsEnterprise: TDataSource;
    memEnterpriseent_cod: TStringField;
    memEnterpriseent_id: TLongWordField;
    memEnterpriseent_type: TStringField;
    memEnterpriseent_first_name: TStringField;
    memEnterpriseent_last_name: TStringField;
    memEnterpriseent_nickname: TStringField;
    memEnterpriseent_email: TStringField;
    memEnterpriseent_cnpj: TStringField;
    memEnterpriseent_ie: TStringField;
    memEnterpriseent_im: TStringField;
    memEnterpriseent_suframa: TStringField;
    memEnterpriseent_add_bus_zipcode: TStringField;
    memEnterpriseent_add_bus_address: TStringField;
    memEnterpriseent_add_bus_number: TStringField;
    memEnterpriseent_add_bus_street: TStringField;
    memEnterpriseent_add_bus_complement: TStringField;
    memEnterpriseent_add_bus_city: TStringField;
    memEnterpriseent_add_bus_state: TStringField;
    memEnterpriseent_add_bus_country: TStringField;
    memEnterpriseent_phone1: TStringField;
    memEnterpriseent_phone2: TStringField;
    memEnterpriseent_phone3: TStringField;
    memEnterpriseent_phone4: TStringField;
    memEnterpriseent_contact: TStringField;
    memEnterpriseent_dt_open: TDateField;
    memEnterpriseent_status: TShortintField;
    memEnterpriseent_image1: TBlobField;
    memEnterpriseent_deleted_at: TDateTimeField;
    memEnterpriseent_dt_registration: TDateTimeField;
    memTicketCategorytkc_cod: TStringField;
    memTicketCategorytkc_id: TLongWordField;
    memTicketCategorytkc_name: TStringField;
    memTicketCategorytkc_status: TShortintField;
    memTicketCategorytkc_deleted_at: TDateTimeField;
    memTicketCategorytkc_dt_registration: TDateTimeField;
    memTicketCategorySubtks_cod: TStringField;
    memTicketCategorySubticket_category_tkc_cod: TStringField;
    memTicketCategorySubtks_name: TStringField;
    memTicketCategorySubtks_status: TShortintField;
    memTicketCategorySubtks_deleted_at: TDateTimeField;
    memTicketCategorySubtks_dt_registration: TDateTimeField;
    memTicketPrioritytkp_cod: TStringField;
    memTicketPrioritytkp_id: TLongWordField;
    memTicketPrioritytkp_name: TStringField;
    memTicketPrioritytkp_status: TShortintField;
    memTicketPrioritytkp_deleted_at: TDateTimeField;
    memTicketPrioritytkp_dt_registration: TDateTimeField;
    memTicketTypetky_cod: TStringField;
    memTicketTypetky_id: TLongWordField;
    memTicketTypetky_name: TStringField;
    memTicketTypetky_status: TShortintField;
    memTicketTypetky_deleted_at: TDateTimeField;
    memTicketTypetky_dt_registration: TDateTimeField;
    memContractUserctr_usr_cod: TStringField;
    memContractUserctr_usr_id: TLongWordField;
    memContractUserctr_usr_first_name: TStringField;
    memContractUserctr_usr_last_name: TStringField;
    memContractUserctr_usr_username: TStringField;
    memContractUserctr_usr_email: TStringField;
    memContractUserctr_usr_dt_birth: TDateField;
    memContractUserctr_usr_status: TShortintField;
    memContractUserctr_usr_deleted_at: TDateTimeField;
    memContractUserctr_usr_dt_registration: TDateTimeField;
    memTicketCategorySubtks_id: TLongWordField;
  private

  public

  end;

var
  frm_dm_ds: Tfrm_dm_ds;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
