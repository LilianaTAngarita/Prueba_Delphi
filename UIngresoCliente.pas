unit UIngresoCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB;

type
  TFrmIngresoClientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    QryClientes: TADOQuery;
    DtsClientes: TDataSource;
    QryClientesCLIENTE: TStringField;
    QryClientesNOMBRE_CLIENTE: TStringField;
    QryClientesDIRECCION: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIngresoClientes: TFrmIngresoClientes;

implementation

uses
  UDatamodule;

{$R *.dfm}

procedure TFrmIngresoClientes.FormActivate(Sender: TObject);
begin
  Top := 0;
end;

procedure TFrmIngresoClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmIngresoClientes.BitBtn2Click(Sender: TObject);
begin
  FrmIngresoClientes.Close;
  FrmIngresoClientes := TFrmIngresoClientes.Create(Application);
  try
    FrmIngresoClientes.Show;
  except
    FrmIngresoClientes.Free;
  end;
end;

procedure TFrmIngresoClientes.BitBtn1Click(Sender: TObject);
begin
  QryClientes.Close;
  QryClientes.SQL.Clear;
  QryClientes.SQL.Add('SELECT*FROM CLIENTES WHERE CLIENTE = :"CLIENTE"');
  QryClientes.Parameters[0].Value := Trim(Edit1.Text);
  QryClientes.Open;
  IF QryClientes.RecordCount = 1 THEN
  begin
    BitBtn3.Caption := 'Actualizar';
    Edit1.Enabled := False;
    Edit2.Text := QryClientesNOMBRE_CLIENTE.Value;
    Edit3.Text := QryClientesDIRECCION.Value;
  end;
end;

procedure TFrmIngresoClientes.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit1.Text = EmptyStr) or (Edit1.Text = Null) then
  begin
    Application.MessageBox('Por favor ingreso el documento de identidad del cliente','Ingreso y/o modificación cliente',MB_ICONWARNING);
    Edit1.SetFocus;
  end;
end;

procedure TFrmIngresoClientes.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8,'0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TFrmIngresoClientes.Edit2Exit(Sender: TObject);
begin
  if (Edit2.Text = '') or (Edit2.Text = EmptyStr) or (Edit2.Text = Null) then
  begin
    Application.MessageBox('Por favor ingrese el nombre completo del cliente','Ingreso y/o modificación cliente',MB_ICONWARNING);
    Edit2.SetFocus;
  end;
end;

procedure TFrmIngresoClientes.Edit3Exit(Sender: TObject);
begin
   if (Edit3.Text = '') or (Edit3.Text = EmptyStr) or (Edit3.Text = Null) then
   begin
     Application.MessageBox('Por favor ingrese la dirección del cliente','Ingreso y/o modificación cliente',MB_ICONWARNING);
     Edit3.SetFocus;
   end;
end;

procedure TFrmIngresoClientes.BitBtn3Click(Sender: TObject);
begin
  if BitBtn3.Caption = 'Guardar' then
  begin
    if Application.MessageBox('¿Desea ingresar la información del cliente?','Ingreso y/o Modificación cliente',  MB_ICONINFORMATION or MB_YESNO) = 6 then
    begin
      QryClientes.Close;
      QryClientes.SQL.Clear;
      QryClientes.SQL.Add('SELECT * FROM CLIENTES WHERE CLIENTE = :"CLIENTE"');
      QryClientes.Parameters[0].Value := Trim(Edit1.Text);
      QryClientes.Open;
      IF QryClientes.RecordCount = 0 THEN
      begin
        TRY
          DataModule1.ADOConnection1.BeginTrans;
          QryClientes.Insert;
          QryClientesCLIENTE.Value        := Trim(Edit1.Text);
          QryClientesNOMBRE_CLIENTE.Value := Trim(Edit2.Text);
          QryClientesDIRECCION.Value      := Trim(Edit3.Text);
          QryClientes.Post;
          DataModule1.ADOConnection1.CommitTrans;
          Application.MessageBox('La información del cliente se ha ingresado exitosamente','Ingreso y/o modificación cliente',MB_ICONINFORMATION);
          BitBtn2Click(BitBtn2);
        except
          DataModule1.ADOConnection1.CommitTrans;
          Application.MessageBox('No es posible ingresar la información del cliente','Ingreso y/o modificación cliente',MB_ICONERROR);
          Exit;
        end;
      end;
    end;
  end
  else
  begin
    if Application.MessageBox('¿Desea modificar la información del cliente?','Ingreso y/o Modificación cliente',  MB_ICONINFORMATION or MB_YESNO) = 6 then
    begin
      QryClientes.Close;
      QryClientes.SQL.Clear;
      QryClientes.SQL.Add('SELECT * FROM CLIENTES WHERE CLIENTE = :"CLIENTE"');
      QryClientes.Parameters[0].Value := Trim(Edit1.Text);
      QryClientes.Open;
      IF QryClientes.RecordCount = 1 THEN
      begin
        TRY
          DataModule1.ADOConnection1.BeginTrans;
          QryClientes.Edit;
          QryClientesNOMBRE_CLIENTE.Value := Trim(Edit2.Text);
          QryClientesDIRECCION.Value      := Trim(Edit3.Text);
          QryClientes.Post;
          DataModule1.ADOConnection1.CommitTrans;
          Application.MessageBox('La información del cliente se ha actualizado exitosamente','Ingreso y/o modificación cliente',MB_ICONINFORMATION);
          BitBtn2Click(BitBtn2);
        except
          DataModule1.ADOConnection1.CommitTrans;
          Application.MessageBox('No es posible ingresar la información del cliente','Ingreso y/o modificación cliente',MB_ICONERROR);
          Exit;
        end;
      end;
    end;
  end;
end;

end.
