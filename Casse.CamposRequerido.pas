unit Casse.CamposRequerido;

interface

uses
   System.SysUtils, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet, Vcl.ExtCtrls,
   System.Variants, System.Classes, Vcl.Imaging.jpeg;


 type

  TCampoRequerido = class

  private

  public

  class function TratarRequerido(const Dataset: TDataset) :Boolean;

  class procedure RefreshImage(Field : TField; Img : TImage);

  end;


implementation

uses
  ufrm_dm;

{ TCampoRequequido }


{ TCampoRequequido }


 class function TCampoRequerido.TratarRequerido(
  const Dataset: TDataset): Boolean;
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

      if (Campos.Text<>EmptyStr) then
       begin
         Campos.Insert(0, EmptyStr);
         result := false;
       end
       else
       result := true;

    end;
    if Result = false then
     begin
        ShowMessage('Atenção, o(s) campo(s) : ' + Campos.Text + ' São de preenchimento obrigatório ! ');
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
  { Verifica se o campo esta vázio. }
  if not Field.IsNull then
  begin

    { Cria objeto do tipo TJPEG, e objeto do tipo MemoryStream}
    vJpeg   := TJPEGImage.Create;
    vStream := TMemoryStream.Create;

    { Trata o campo como do tipo BLOB e salva o seu conteudo na memória. }
    TBlobField(Field).SaveToStream(vStream);

    { Ajusta a posicao inicial de leitura da memória }
    vStream.Position := 0;

    { Carrega da memoria os dados, para uma estrutura do tipo TJPEG
      (A partir da posicao 0)}
    vJpeg.LoadFromStream(vStream);

    { Exibe o jpg no Timage. }
    Img.Picture.Assign(vJpeg);

    { Libera a memoria utilizada pelos componentes de conversão }
    vJpeg.Free;
    vStream.Free;
  end;
end;


//---------------------------------------------------------------------



end.
