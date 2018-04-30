unit uthred_logged;

interface

uses
  System.Classes,Vcl.Forms,Winapi.Windows;

type
  TLogado = class(TThread)
  private
    { Private declarations }

  protected
    procedure Execute; override;
  end;

implementation

{
  Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TLogado.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end;

    or

    Synchronize(
      procedure
      begin
        Form1.Caption := 'Updated in thread via an anonymous method'
      end
      )
    );

  where an anonymous method is passed.

  Similarly, the developer can call the Queue method with similar parameters as
  above, instead passing another TThread class as the first parameter, putting
  the calling thread in a queue with the other thread.

}

uses ufrm_dm, ufrm_main_default;

{ TLogado }

procedure TLogado.Execute;
begin
  { Place thread code here }
  Priority:=tpLower;

  frm_dm.qry_logged.Refresh;
  if frm_dm.qry_loggedctr_usr_logged.AsString = 'N' then
    logado:=False;

  if frm_dm.qry_loggedctr_usr_logged.AsString = 'B' then
    bloqueado:=true;
    inherited;
 end;

end.
