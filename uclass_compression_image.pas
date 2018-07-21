unit uclass_compression_image;

interface

uses
  System.Classes, System.SysUtils, Vcl.ExtDlgs, Vcl.Imaging.jpeg, Vcl.Dialogs,
  Vcl.DBCtrls;

Type
  TCompress_image = class(TComponent)
  private
    { private declarations }
    imgJPG: TJPEGImage;
    patchTemp, pathHomeUser, pathCcs, pathCcsTemp: string;
  protected
    { protected declarations }
  public
    { public declarations }
    procedure imgCompress(img_d: TDBImage; open_diag: TOpenPictureDialog);
    procedure img(img_d: TDBImage; open_diag: TOpenPictureDialog);
    constructor Create; virtual;
    destructor Destroy; override;
  published
    { published declarations }
  end;

implementation

{ TCompress_image }

constructor TCompress_image.Create;
begin
  pathHomeUser := ExtractFilePath(GetHomePath);
  pathCcs := '\ccsolutions_dsk\';
  pathCcsTemp := 'temp\';
  patchTemp := pathHomeUser + pathCcs + pathCcsTemp;
end;

destructor TCompress_image.Destroy;
begin
  inherited;
end;

procedure TCompress_image.img(img_d: TDBImage; open_diag: TOpenPictureDialog);
begin
  if open_diag.Execute then
  begin
    try
      imgJPG := TJPEGImage.Create;
      imgJPG.LoadFromFile(open_diag.FileName);

      if imgJPG.CompressionQuality <= 25 then
      begin
        ShowMessage('Imagem compactada!');
        Exit;
      end;

      imgJPG.CompressionQuality := 25;
      imgJPG.Compress;
      imgJPG.SaveToFile(patchTemp + 'image.jpeg');
      img_d.Picture.LoadFromFile(patchTemp + 'image.jpeg');
    except
      on E: Exception do
        ShowMessage('Erro: ' + E.Message);
    end;
  end;
end;

procedure TCompress_image.imgCompress(img_d: TDBImage;
  open_diag: TOpenPictureDialog);
begin
  if not DirectoryExists(patchTemp) then
  begin
    ForceDirectories(patchTemp);
    img(img_d, open_diag);
  end
  else
  begin
    img(img_d, open_diag);
  end;
end;

end.
