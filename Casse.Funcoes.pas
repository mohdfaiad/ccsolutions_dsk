unit Casse.Funcoes;

interface

uses
   System.SysUtils, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet;

 type

  TCampoRequequido = class

  private

  public

  class  function TrataRequired(const Que:TDataSet):Boolean;

  class function Required(Dataset: TDataset): string;
  end;


implementation

uses
  ufrm_dm, System.Variants;

{ TCampoRequequido }


{ TCampoRequequido }

class function TCampoRequequido.TrataRequired(const Que: TDataSet): Boolean;
var j:Byte;
    Msg:String;
begin
   Msg:='';
   Result:=False;
   with Que do
   begin
         for j:=0 to FieldCount -1 do
            if  ((Fields[j].Required = True) and  (Fields[j].Value = Null)) then
            begin
                 if Msg <> '' then
                 Msg:=Msg+' - ';
                 Msg:=Msg+Fields[j].DisplayLabel;
            end;
   end;
   if Msg <> '' then
   begin
       ShowMessage('Atenção, o(s) campo(s) :'+ #13+Msg+#13+'Não pode(m)                                                               ficar sem preenchimento');
       Abort;
   end
   else
     Result:=True;
end;

class function TCampoRequequido.Required(Dataset: TDataset): string;
   var I: integer; FTfield: TFields;
begin
      FTfield := Dataset.Fields;
  for I := 0 to pred(FTfield.Count) do
   begin
     if (( FTfield.Fields[i].Required ) and (Trim(FTfield.Fields[i].Value).IsEmpty))  then
       begin
        ShowMessage(FTfield.Fields[i].Value);
         result:= Result +' - '+ FTfield.Fields[i].DisplayLabel;
         ShowMessage('Atenção, o(s) Campo(s) '+Result+ ' Devem ser Preenchidos');
          Abort;
       end;
   end;
end;

end.
