unit ufrm_dm;

interface

uses
  System.Classes,

  uDWAbout,
  uRESTDWPoolerDB;

type
  Tfrm_dm = class(TDataModule)
    database: TRESTDWDataBase;
  private

  public

  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
