unit ufrm_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrm_form_default, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  uDWAbout, uRESTDWPoolerDB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  uDWConstsData, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.ToolWin, ufrm_dm, ACBrBase, ACBrEnterTab;

type
  Tfrm_cliente = class(Tfrm_form_default)
    clientSQLcli_codigo: TStringField;
    clientSQLusuario_usr_codigo: TStringField;
    clientSQLcli_id: TLongWordField;
    clientSQLcli_nome: TStringField;
    clientSQLcli_nome_fantasia: TStringField;
    clientSQLcli_tipo: TStringField;
    clientSQLcli_rgie: TStringField;
    clientSQLcli_cpfcnpj: TStringField;
    clientSQLcli_im: TStringField;
    clientSQLcli_suframa: TStringField;
    clientSQLcli_data: TDateField;
    clientSQLcli_status: TShortintField;
    clientSQLcli_data_deletado: TDateTimeField;
    clientSQLcli_data_registro: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  frm_cliente.Destroy;
  frm_cliente := Nil;
end;

end.
