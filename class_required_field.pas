unit class_required_field;

interface

uses
   System.SysUtils, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
   System.Variants, System.Classes, Vcl.Imaging.jpeg;


 type

  TCampoRequerido = class

  private

  public

  class function TratarRequerido(const Dataset: TDataset):Boolean;

  class function ValidarCampos(const Dataset, DataSet2: TDataset):Boolean;

  class procedure RefreshImage(Field : TField; Img : TImage);

  end;


implementation

uses
  ufrm_dm;

{ TCampoRequequido }


{ TCampoRequequido }


 class function TCampoRequerido.TratarRequerido(
  const Dataset: TDataset):Boolean;
var
  i :Integer;
  Campos :TStrings;

begin

  try
    Campos := TStringList.Create;

    for i:=0 to Dataset.Fields.Count-1 do
    begin
      if (Dataset.Fields[i].Required) and (Dataset.Fields[i].AsString=EmptyStr) then
          Campos.Add(' - ' + Dataset.Fields[i].DisplayName);
     end;


    if Trim(Campos.Text) <> '' then
     begin
        ShowMessage('Aten��o, o(s) campo(s) : '+#13 + Campos.Text + 'S�o de preenchimento obrigat�rio ! ');
        Abort
     end;

    finally

      Campos.Free;

    end;

end;

 class function TCampoRequerido.ValidarCampos(const Dataset, DataSet2: TDataset): Boolean;
var
  i :Integer;
  Campos :TStrings;
begin

  try
    Campos := TStringList.Create;

    for i:=0 to Dataset.Fields.Count-1 do
    begin
      if ((Dataset.Fields[i].FieldKind = fkData) and (Dataset.Fields[i].AsString=EmptyStr)) then
          Campos.Add(' - ' + Dataset.Fields[i].DisplayName);
     end;

    if Trim(Campos.Text) <> '' then
     begin
        ShowMessage('Aten��o, o(s) campo(s) : '+#13 + Campos.Text + 'S�o de preenchimento obrigat�rio ! ');
        DataSet2.Cancel;
        Abort
     end;

    finally

      Campos.Free;

    end;

end;

class procedure TCampoRequerido.RefreshImage(Field : TField; Img : TImage);
var
  vJpeg   : TJPEGImage;
  vStream : TMemoryStream;
begin
  { Verifica se o campo esta v�zio. }
  if not Field.IsNull then
  begin

    { Cria objeto do tipo TJPEG, e objeto do tipo MemoryStream}
    vJpeg   := TJPEGImage.Create;
    vStream := TMemoryStream.Create;

    { Trata o campo como do tipo BLOB e salva o seu conteudo na mem�ria. }
    TBlobField(Field).SaveToStream(vStream);

    { Ajusta a posicao inicial de leitura da mem�ria }
    vStream.Position := 0;

    { Carrega da memoria os dados, para uma estrutura do tipo TJPEG
      (A partir da posicao 0)}
    vJpeg.LoadFromStream(vStream);

    { Exibe o jpg no Timage. }
    Img.Picture.Assign(vJpeg);

    { Libera a memoria utilizada pelos componentes de convers�o }
    vJpeg.Free;
    vStream.Free;
  end;
end;


//---------------------------------------------------------------------



end.
