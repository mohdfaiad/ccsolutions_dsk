unit Contract_User_Enterprise.Model;

interface
  type
    TContract_User_Enterprise_Model = class

     private
      Fcte_usr_ent_cod: string;
      Fcontract_user_ctr_usr_cod: string;
      Fenterprise_ent_cod: string;
      Fcte_usr_ent_id: Integer;
      Fcte_deleted_at: TDate;



     public
      property cte_usr_ent_cod: string read Fcte_usr_ent_cod write Fcte_usr_ent_cod;
      property contract_user_ctr_usr_cod: string read Fcontract_user_ctr_usr_cod write Fcontract_user_ctr_usr_cod;
      property enterprise_ent_cod: string read Fenterprise_ent_cod write Fenterprise_ent_cod;
      property cte_usr_ent_id: Integer read Fcte_usr_ent_id write Fcte_usr_ent_id;
      property cte_deleted_at: TDate read Fcte_deleted_at write Fcte_deleted_at;



    end;

implementation

end.
