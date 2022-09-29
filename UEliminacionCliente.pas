unit UEliminacionCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB;

type
  TFrmEliminacionCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    QryEliminacionCliente: TADOQuery;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DtsEliminacionCliente: TDataSource;
    QryEliminacionClienteCLIENTE: TStringField;
    QryEliminacionClienteNOMBRE_CLIENTE: TStringField;
    QryEliminacionClienteDIRECCION: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEliminacionCliente: TFrmEliminacionCliente;

implementation

uses
  UDatamodule;

{$R *.dfm}

procedure TFrmEliminacionCliente.FormActivate(Sender: TObject);
begin
Top := 0;
end;

procedure TFrmEliminacionCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmEliminacionCliente.BitBtn1Click(Sender: TObject);
begin
  FrmEliminacionCliente.Close;
  FrmEliminacionCliente := TFrmEliminacionCliente.Create(Application);
  try
    FrmEliminacionCliente.Show;
  except
    FrmEliminacionCliente.Free;
  end;
end;

procedure TFrmEliminacionCliente.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit1.Text <> EmptyStr) then
  begin
    QryEliminacionCliente.Close;
    QryEliminacionCliente.SQL.Clear;
    QryEliminacionCliente.SQL.Add('select*from CLIENTES where CLIENTE = :"CLIENTE"');
    QryEliminacionCliente.Parameters[0].Value := Trim(Edit1.Text);
    QryEliminacionCliente.Open;
    if QryEliminacionCliente.RecordCount = 1 then
    begin
      Edit2.Text := QryEliminacionClienteNOMBRE_CLIENTE.Value;
      Edit3.Text := QryEliminacionClienteDIRECCION.Value;
    end
    else
    begin
      Application.MessageBox('El cliente no se encuentra registrado en el sistema de información','Eliminación cliente',MB_ICONEXCLAMATION);
      Edit1.SetFocus;
    end;
  end
  else
  begin
    Application.MessageBox('Por favor ingrese el documento de identidad del cliente','Eliminación cliente',MB_ICONEXCLAMATION);
    Edit1.SetFocus;
  end;
end;

procedure TFrmEliminacionCliente.BitBtn2Click(Sender: TObject);
begin
  if Application.MessageBox('¿Desea eliminar el cliente?','Eliminación cliente',  MB_ICONINFORMATION or MB_YESNO) = 6 then
  begin
    try
      DataModule1.ADOConnection1.BeginTrans;
      QryEliminacionCliente.Close;
      QryEliminacionCliente.SQL.Clear;
      QryEliminacionCliente.SQL.Add('DELETE FROM CLIENTES WHERE CLIENTE = :"CLIENTE"');
      QryEliminacionCliente.Parameters[0].Value := Trim(Edit1.Text);
      QryEliminacionCliente.ExecSQL;
      DataModule1.ADOConnection1.CommitTrans;
      Application.MessageBox('El cliente se ha eliminado exitosamente','Eliminación Cliente',MB_ICONINFORMATION);
      BitBtn1Click(BitBtn1);
    except
      DataModule1.ADOConnection1.RollbackTrans;
      Application.MessageBox('No es posible eliminar la información del cliente','Eliminación cliente',MB_ICONERROR);
    end;
  end;
end;

end.
