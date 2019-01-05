unit ufrm_dm;

interface

uses
  System.SysUtils,
  System.Classes,

  uDWAbout,
  uRESTDWPoolerDB;

type
  Tfrm_dm = class(TDataModule)
    database: TRESTDWDataBase;
  private

  public
    usuario_usr_token, usuario_usr_codigo: string;

  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
