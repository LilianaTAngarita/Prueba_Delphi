unit UModificarFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, DB, ADODB;

type
  TFrmModificarFactura = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    Label12: TLabel;
    Edit10: TEdit;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    QryCabezaFactura: TADOQuery;
    DtsFactura: TDataSource;
    QryCabezaFacturaNUMERO: TStringField;
    QryCabezaFacturaFECHA: TDateTimeField;
    QryCabezaFacturaCLIENTE: TStringField;
    QryCabezaFacturaTOTAL: TBCDField;
    QryCliente: TADOQuery;
    DtsClientes: TDataSource;
    QryClienteCLIENTE: TStringField;
    QryClienteNOMBRE_CLIENTE: TStringField;
    QryClienteDIRECCION: TStringField;
    QryDetalle_Factura: TADOQuery;
    DtsDetalleFactura: TDataSource;
    QryDetalle_FacturaPRODUCTO: TStringField;
    QryDetalle_FacturaNOMBRE_PRODUCTO: TStringField;
    QryDetalle_FacturaCANTIDAD: TIntegerField;
    QryDetalle_FacturaVALORUNITARIO: TBCDField;
    QryDetalle_FacturaVALOR: TBCDField;
    QryProducto: TADOQuery;
    DtsProducto: TDataSource;
    QryProductoPRODUCTO: TStringField;
    QryProductoNOMBRE_PRODUCTO: TStringField;
    QryProductoVALOR: TBCDField;
    QryEliminarProductoFac: TADOQuery;
    DtsEliminarProductoFac: TDataSource;
    QryVerificarProducto: TADOQuery;
    DtsVerificarProducto: TDataSource;
    QryModCabFac: TADOQuery;
    DtsModCabFac: TDataSource;
    QryActProdFac: TADOQuery;
    DtsActualizarProductoFac: TDataSource;
    QryActProdFacNUMERO: TStringField;
    QryActProdFacPRODUCTO: TStringField;
    QryActProdFacCANTIDAD: TIntegerField;
    QryActProdFacVALOR: TBCDField;
    QryVerificarProductoNUMERO: TStringField;
    QryVerificarProductoPRODUCTO: TStringField;
    QryVerificarProductoCANTIDAD: TIntegerField;
    QryVerificarProductoVALOR: TBCDField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmModificarFactura: TFrmModificarFactura;
  totalxproducto : Double;

implementation

uses
  UDatamodule, UFacturaModificada;

{$R *.dfm}

procedure TFrmModificarFactura.FormActivate(Sender: TObject);
begin
  Top := 0;
end;

procedure TFrmModificarFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmModificarFactura.Edit1Exit(Sender: TObject);
begin
  QryCabezaFactura.Close;
  QryCabezaFactura.SQL.Clear;
  QryCabezaFactura.SQL.Add('SELECT*FROM CABEZA_FACTURA WHERE NUMERO = :"NUMERO"');
  QryCabezaFactura.Parameters[0].Value := Trim(Edit1.Text);
  QryCabezaFactura.Open;
  IF QryCabezaFactura.RecordCount = 0 then
  begin
    Application.MessageBox(PAnsiChar('El numero de factura '+Edit1.Text+' no se encuentra en el sistema de información'),'Modificación Factura', MB_ICONWARNING);
    Edit1.SetFocus;
  end
  else
  begin
    DateTimePicker1.Date  := QryCabezaFacturaFECHA.Value;
    Edit2.Text            := FloatToStr(QryCabezaFacturaTOTAL.Value);
    Edit3.Text            := QryCabezaFacturaCLIENTE.Value;
    QryCliente.Close;
    QryCliente.SQL.Clear;
    QryCliente.SQL.Add('SELECT*FROM CLIENTES WHERE CLIENTE = :"CLIENTE"');
    QryCliente.Parameters[0].Value := Edit3.Text;
    QryCliente.Open;
    if QryCliente.RecordCount = 1 then
    begin
      Edit4.Text := QryClienteNOMBRE_CLIENTE.Value;
      Edit5.Text := QryClienteDIRECCION.Value;
    end;
    QryDetalle_Factura.Close;
    QryDetalle_Factura.SQL.Clear;
    QryDetalle_Factura.SQL.Add('select F.PRODUCTO, P.NOMBRE_PRODUCTO, F.CANTIDAD, P.VALOR ''VALOR UNITARIO'', F.VALOR from DETALLE_FACTURA F '+
    'INNER JOIN PRODUCTOS P ON F.PRODUCTO = P.PRODUCTO  WHERE F.NUMERO = :"NUMERO"');
    QryDetalle_Factura.Parameters[0].Value := Trim(Edit1.Text);
    QryDetalle_Factura.Open;
    BitBtn5.Enabled := True;
  end;
end;

procedure TFrmModificarFactura.BitBtn4Click(Sender: TObject);
begin
  FrmModificarFactura.Close;
  FrmModificarFactura := TFrmModificarFactura.Create(Application);
  try
    FrmModificarFactura.Show;
  except
    FrmModificarFactura.Free;
  end;
end;

procedure TFrmModificarFactura.FormCreate(Sender: TObject);
begin
  GroupBox1.Enabled := False;
  DateTimePicker1.Enabled := False;
  BitBtn5.Enabled := False;

end;

procedure TFrmModificarFactura.Edit9Exit(Sender: TObject);
var valorunitario : Double;
begin
  if Edit9.Text <> '0' then
  begin
    valorunitario := StrToFloat(Edit8.Text);
    totalxproducto := (valorunitario * (StrToFloat(Edit9.Text)));
    Edit10.Text := FloatToStr(totalxproducto);
  end
  else
  begin
    Application.MessageBox('La cantidad no puede ser 0','Modificación de Factura',MB_ICONWARNING);
    Edit9.SetFocus;
  end;
end;

procedure TFrmModificarFactura.DBGrid1DblClick(Sender: TObject);
begin
  Edit6.Text := QryDetalle_FacturaPRODUCTO.Value;
  Edit7.Text := QryDetalle_FacturaNOMBRE_PRODUCTO.Value;
  Edit8.Text := FloatToStr(QryDetalle_FacturaVALORUNITARIO.Value);
  Edit9.Text := FloatToStr(QryDetalle_FacturaCANTIDAD.Value);
  Edit10.Text := FloatToStr(QryDetalle_FacturaVALOR.Value);
  BitBtn2.Enabled := True;
  if QryDetalle_Factura.RecordCount > 1 then
  begin
    BitBtn3.Enabled := True;
  end
  else
  begin
    BitBtn3.Enabled := False;
  end;
end;

procedure TFrmModificarFactura.BitBtn5Click(Sender: TObject);
begin
  FrmFacModificada := TFrmFacModificada.Create(Application);
  try
    FrmFacModificada.QRLabel3.Caption   := Edit1.Text;
    FrmFacModificada.QRLabel5.Caption   := FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
    FrmFacModificada.QRLabel7.Caption   := Edit3.Text;
    FrmFacModificada.QRLabel9.Caption   := Edit4.Text;
    FrmFacModificada.QRLabel11.Caption  := Edit5.Text;
    FrmFacModificada.QRLabel20.Caption  := Edit2.Text;
    FrmFacModificada.QryDetalleFactura.Close;
    FrmFacModificada.QryDetalleFactura.SQL.Clear;
    FrmFacModificada.QryDetalleFactura.SQL.Add('select F.PRODUCTO, P.NOMBRE_PRODUCTO, F.CANTIDAD, P.VALOR ''VALOR UNITARIO'', F.VALOR from DETALLE_FACTURA F '+
    'INNER JOIN PRODUCTOS P ON F.PRODUCTO = P.PRODUCTO WHERE F.NUMERO = :"NUMERO" ');
    FrmFacModificada.QryDetalleFactura.Parameters[0].Value := Edit1.Text;
    FrmFacModificada.QryDetalleFactura.Open;
    FrmFacModificada.QuickRep1.Preview;
  except
    FrmFacModificada.Free;
  end;
end;

procedure TFrmModificarFactura.BitBtn3Click(Sender: TObject);
var nuevo_valor_total : Double;
begin
  QryVerificarProducto.Close;
  QryVerificarProducto.SQL.Clear;
  QryVerificarProducto.SQL.Add('SELECT*FROM DETALLE_FACTURA WHERE NUMERO = :"NUMERO"');
  QryVerificarProducto.Parameters[0].Value := Edit1.Text;
  QryVerificarProducto.Open;
  IF QryVerificarProducto.RecordCount > 1 THEN
  begin
    if Application.MessageBox('¿Desea eliminar el producto de la factura?','Modificación de factura',  MB_ICONINFORMATION or MB_YESNO) = 6 then
    begin
      try
        DataModule1.ADOConnection1.BeginTrans;
        QryEliminarProductoFac.Close;
        QryEliminarProductoFac.SQL.Clear;
        QryEliminarProductoFac.SQL.Add('DELETE FROM DETALLE_FACTURA WHERE NUMERO = :"NUMERO" AND PRODUCTO = :"PRODUCTO" AND CANTIDAD = :"CANTIDAD"');
        QryEliminarProductoFac.Parameters[0].Value := Edit1.Text;
        QryEliminarProductoFac.Parameters[1].Value := Edit6.Text;
        QryEliminarProductoFac.Parameters[2].Value := Edit9.Text;
        QryEliminarProductoFac.ExecSQL;

        nuevo_valor_total := StrToFloat(Edit2.Text) - StrToFloat(Edit10.Text);
        Edit2.Text := FloatToStr(nuevo_valor_total);

        QryModCabFac.Close;
        QryModCabFac.SQL.Clear;
        QryModCabFac.SQL.Add('UPDATE CABEZA_FACTURA SET TOTAL = :"TOTAL" WHERE NUMERO = :"NUMERO"');
        QryModCabFac.Parameters[0].Value := nuevo_valor_total;
        QryModCabFac.Parameters[1].Value := Edit1.Text;
        QryModCabFac.ExecSQL;

        DataModule1.ADOConnection1.CommitTrans;
        Edit6.Text := '';
        Edit7.Text := '';
        Edit8.Text := '';
        Edit9.Text := '';
        Edit10.Text := '';
        Application.MessageBox('El producto se ha eliminado de la factura','Modificación de factura',MB_ICONINFORMATION);
        QryDetalle_Factura.Close;
        QryDetalle_Factura.SQL.Clear;
        QryDetalle_Factura.SQL.Add('select F.PRODUCTO, P.NOMBRE_PRODUCTO, F.CANTIDAD, P.VALOR ''VALOR UNITARIO'', F.VALOR from DETALLE_FACTURA F '+
        'INNER JOIN PRODUCTOS P ON F.PRODUCTO = P.PRODUCTO  WHERE F.NUMERO = :""numero');
        QryDetalle_Factura.Parameters[0].Value := Edit1.Text;
        QryDetalle_Factura.Open;
      except
        Application.MessageBox('No es posible realizar la eliminación del producto','Modificación de factura',MB_ICONINFORMATION);
        DataModule1.ADOConnection1.RollbackTrans;
      end;
    end;
  end
  ELSE
  BEGIN
    Application.MessageBox('No es posible eliminar el producto debido a que no quedaria ningún producto enlazado en la factura','Modificación de factura',MB_ICONWARNING);
    Exit;
  end;
end;

procedure TFrmModificarFactura.BitBtn2Click(Sender: TObject);
var nuevo_valor_total : Double;
begin
  QryActProdFac.Close;
  QryActProdFac.SQL.Clear;
  QryActProdFac.SQL.Add('select*from DETALLE_FACTURA WHERE NUMERO = :"NUMERO" AND PRODUCTO = :"PRODUCTO"');
  QryActProdFac.Parameters[0].Value := Edit1.Text;
  QryActProdFac.Parameters[1].Value := Edit6.Text;
  QryActProdFac.Open;
  if QryActProdFac.RecordCount > 0 then
  begin
    if QryActProdFacCANTIDAD.Value <> StrToInt(Edit9.Text)then
    begin
      try
        DataModule1.ADOConnection1.BeginTrans;
        QryActProdFac.Edit;
        QryActProdFacCANTIDAD.Value := StrToInt(Edit9.Text);
        QryVerificarProducto.Close;
        QryVerificarProducto.SQL.Clear;
        QryVerificarProducto.SQL.Add('select*from DETALLE_FACTURA WHERE NUMERO = :"NUMERO" AND PRODUCTO <> :"PRODUCTO"');
        QryVerificarProducto.Parameters[0].Value := Edit1.Text;
        QryVerificarProducto.Parameters[1].Value := Edit6.Text;
        QryVerificarProducto.Open;

        nuevo_valor_total :=  QryVerificarProductoVALOR.Value + StrToFloat(Edit10.Text);
        Edit2.Text := FloatToStr(nuevo_valor_total);
        
        QryActProdFacVALOR.Value    := StrToFloat(Edit10.Text);
        QryActProdFac.Post;

        QryModCabFac.Close;
        QryModCabFac.SQL.Clear;
        QryModCabFac.SQL.Add('UPDATE CABEZA_FACTURA SET TOTAL = :"TOTAL" WHERE NUMERO = :"NUMERO"');
        QryModCabFac.Parameters[0].Value := nuevo_valor_total;
        QryModCabFac.Parameters[1].Value := Edit1.Text;
        QryModCabFac.ExecSQL;
        DataModule1.ADOConnection1.CommitTrans;
        Application.MessageBox('La cantidad de producto de la factura se ha actualizado exitosamente','Modificación de factura',MB_ICONINFORMATION);
        QryDetalle_Factura.Close;
        QryDetalle_Factura.SQL.Clear;
        QryDetalle_Factura.SQL.Add('select F.PRODUCTO, P.NOMBRE_PRODUCTO, F.CANTIDAD, P.VALOR ''VALOR UNITARIO'', F.VALOR from DETALLE_FACTURA F '+
        'INNER JOIN PRODUCTOS P ON F.PRODUCTO = P.PRODUCTO  WHERE F.NUMERO = :""numero');
        QryDetalle_Factura.Parameters[0].Value := Edit1.Text;
        QryDetalle_Factura.Open;
      except
        Application.MessageBox('No es posible actualizar la factura','Modificación de factura',MB_ICONINFORMATION);
        DataModule1.ADOConnection1.CommitTrans;
      end;
    end;
  end;
end;

end.
