unit UIngresoProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, ADODB;

type
  TFrmIngresoProductos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    QryProducto: TADOQuery;
    DtsProducto: TDataSource;
    QryConsecutivo: TADOQuery;
    DtsConsecutivo: TDataSource;
    QryConsecutivoCODIGO_CONSEC: TStringField;
    QryConsecutivoCONSECUTIVO: TStringField;
    QryConsecutivoPROCESO: TStringField;
    QryProductoPRODUCTO: TStringField;
    QryProductoNOMBRE_PRODUCTO: TStringField;
    QryProductoVALOR: TBCDField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIngresoProductos: TFrmIngresoProductos;
  consecutivo : Integer;

implementation

uses
  UDatamodule, Math, UBuscarProducto;

{$R *.dfm}

procedure TFrmIngresoProductos.FormActivate(Sender: TObject);
begin
  Top := 0;
end;

procedure TFrmIngresoProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmIngresoProductos.BitBtn2Click(Sender: TObject);
begin
  FrmIngresoProductos.Close;
  FrmIngresoProductos := TFrmIngresoProductos.Create(Application);
  try
    FrmIngresoProductos.Show;
  except
    FrmIngresoProductos.Free;
  end;
end;

procedure TFrmIngresoProductos.FormCreate(Sender: TObject);
begin
  QryConsecutivo.Close;
  QryConsecutivo.SQL.Clear;
  QryConsecutivo.SQL.Add('select*from CONSECUTIVOS WHERE CODIGO_CONSEC = ''PRD'' ');
  QryConsecutivo.Open;
  consecutivo := StrToInt(QryConsecutivoCONSECUTIVO.Value) +1;
  Edit1.Text := IntToStr(consecutivo);
end;

procedure TFrmIngresoProductos.BitBtn1Click(Sender: TObject);
begin
  QryProducto.Close;
  QryProducto.SQL.Clear;
  QryProducto.SQL.Add('select top 1 * from PRODUCTOS');
  QryProducto.Open;
  if QryProducto.RecordCount = 1 then
  begin
    if Application.MessageBox('¿Desea buscar por nombre de producto?','Ingreso y/o Modificación producto',  MB_ICONINFORMATION or MB_YESNO) = 6 then
    begin
      FrmBuscarProducto := TFrmBuscarProducto.Create(Application);
      FrmBuscarProducto.Caption := 'Buscar producto';
      try
        FrmBuscarProducto.ShowModal;
      except
        FrmBuscarProducto.Free;
      end;
    end
    else
    begin
      Edit1.Text := IntToStr(consecutivo);
      Edit2.SetFocus;
    end;
  end
  else
  begin
    Application.MessageBox('No hay productos ingresados en el sistema de información','Ingreso y/o modificación producto',MB_ICONEXCLAMATION);
    Edit1.Text := IntToStr(consecutivo);
    Edit2.SetFocus;
  end;
end;

procedure TFrmIngresoProductos.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8,'0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TFrmIngresoProductos.Edit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in [#8,'0'..'9']) then
  begin
    Key := #0;
  end;
end;

procedure TFrmIngresoProductos.BitBtn3Click(Sender: TObject);
begin
  IF BitBtn3.Caption = 'Guardar' then
  begin
    if Application.MessageBox('¿Desea ingresar la información del producto?','Ingreso y/o Modificación producto',  MB_ICONINFORMATION or MB_YESNO) = 6 then
    begin
      try
        DataModule1.ADOConnection1.BeginTrans;
        QryProducto.Close;
        QryProducto.SQL.Clear;
        QryProducto.SQL.Add('SELECT*FROM PRODUCTOS WHERE PRODUCTO = :"PRODUCTO"');
        QryProducto.Parameters[0].Value := Trim(Edit1.Text);
        QryProducto.Open;
        if QryProducto.RecordCount = 0 then
        begin
          QryProducto.Insert;
          QryProductoPRODUCTO.Value := Trim(Edit1.Text);
          QryProductoNOMBRE_PRODUCTO.Value := Trim(Edit2.Text);
          QryProductoVALOR.Value := StrToFloat(Edit3.Text);
          QryProducto.Post;

          QryConsecutivo.Edit;
          QryConsecutivoCONSECUTIVO.Value := IntToStr(consecutivo);
          QryConsecutivo.Post;
        end;
        DataModule1.ADOConnection1.CommitTrans;
        Application.MessageBox('El producto se ha ingresado exitosamente','Ingreso y/o modificación producto',MB_ICONINFORMATION);
        BitBtn2Click(BitBtn2);
      except
        Application.MessageBox('No es posible el ingreso del producto','Ingreso y/o modificación producto',MB_ICONERROR);
        DataModule1.ADOConnection1.RollbackTrans;
      end;
    end;
  end;
  if BitBtn3.Caption = 'Actualizar' then
  begin
    if Application.MessageBox('¿Desea modificar la información del producto?','Ingreso y/o Modificación producto',  MB_ICONINFORMATION or MB_YESNO) = 6 then
    begin
      try
        DataModule1.ADOConnection1.BeginTrans;
        QryProducto.Close;
        QryProducto.SQL.Clear;
        QryProducto.SQL.Add('SELECT*FROM PRODUCTOS WHERE PRODUCTO = :"PRODUCTO"');
        QryProducto.Parameters[0].Value := Trim(Edit1.Text);
        QryProducto.Open;
        if QryProducto.RecordCount = 1 then
        begin
          QryProducto.Edit;
          QryProductoNOMBRE_PRODUCTO.Value  := Trim(Edit2.Text);
          QryProductoVALOR.Value            := StrToFloat(Edit3.Text);
          QryProducto.Post;
        end;
        DataModule1.ADOConnection1.CommitTrans;
        Application.MessageBox('El producto se ha actualizado exitosamente','Ingreso y/o modificación producto',MB_ICONINFORMATION);
        BitBtn2Click(BitBtn2);
      except
        Application.MessageBox('No es posible la actualización del producto','Ingreso y/o modificación producto',MB_ICONERROR);
        DataModule1.ADOConnection1.RollbackTrans;
      end;
    end;
  end;
end;

procedure TFrmIngresoProductos.Edit1Exit(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit1.Text <> EmptyStr)then
  begin
    if (StrToInt(Edit1.Text) = consecutivo) or (StrToInt(Edit1.Text) <> consecutivo) then
    begin
      QryProducto.Close;
      QryProducto.SQL.Clear;
      QryProducto.SQL.Add('select*from PRODUCTOS WHERE PRODUCTO = :"PRODUCTO"');
      QryProducto.Parameters[0].Value := Trim(Edit1.Text);
      QryProducto.Open;
      if QryProducto.RecordCount = 1 then
      begin
        BitBtn3.Caption := 'Actualizar';
        Edit2.Text := QryProductoNOMBRE_PRODUCTO.Value;
        Edit3.Text := FloatToStr(QryProductoVALOR.Value);
      end
      else
      begin
        Application.MessageBox('El producto buscado no se encuentra en el sistema de información','Ingreso y/o modificación Producto',MB_ICONWARNING);
        Edit1.Text := IntToStr(consecutivo);
        Edit2.SetFocus;
      end;
    end;
  end;

end;

end.
