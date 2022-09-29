unit UIngresoFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DB, ADODB, Buttons, Grids;

type
  TFrmIngresoFactura = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    QryCliente: TADOQuery;
    DtsClientes: TDataSource;
    QryClienteCLIENTE: TStringField;
    QryClienteNOMBRE_CLIENTE: TStringField;
    QryClienteDIRECCION: TStringField;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    QryProducto: TADOQuery;
    DtsProducto: TDataSource;
    QryProductoPRODUCTO: TStringField;
    QryProductoNOMBRE_PRODUCTO: TStringField;
    QryProductoVALOR: TBCDField;
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    Ingreso: TTabSheet;
    StringGrid1: TStringGrid;
    QryConsecutivo: TADOQuery;
    DtsConsecutivo: TDataSource;
    QryConsecutivoCODIGO_CONSEC: TStringField;
    QryConsecutivoCONSECUTIVO: TStringField;
    QryConsecutivoPROCESO: TStringField;
    QryCabeza_Factura: TADOQuery;
    DtsCabeza_Factura: TDataSource;
    QryCabeza_FacturaNUMERO: TStringField;
    QryCabeza_FacturaFECHA: TDateTimeField;
    QryCabeza_FacturaCLIENTE: TStringField;
    QryCabeza_FacturaTOTAL: TBCDField;
    Label12: TLabel;
    Edit10: TEdit;
    QryDetalle_Factura: TADOQuery;
    DtsDetalle_Factura: TDataSource;
    QryDetalle_FacturaNUMERO: TStringField;
    QryDetalle_FacturaPRODUCTO: TStringField;
    QryDetalle_FacturaCANTIDAD: TIntegerField;
    QryDetalle_FacturaVALOR: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit8Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIngresoFactura: TFrmIngresoFactura;
  totalxproducto : Double;
  consecutivo : Integer;
  total : Integer;
  fila : Integer;
  fila1 : Integer;
  numero : string;
  codigo : string;
  cantidad : Integer;
  valor : Double;

implementation

uses
  UDatamodule, UBuscarProducto, UFactura;

{$R *.dfm}

procedure TFrmIngresoFactura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmIngresoFactura.FormActivate(Sender: TObject);
begin
  Top := 0;
end;

procedure TFrmIngresoFactura.Edit2Exit(Sender: TObject);
begin
  QryCliente.Close;
  QryCliente.SQL.Clear;
  QryCliente.SQL.Add('SELECT*FROM CLIENTES WHERE CLIENTE = :"CLIENTE"');
  QryCliente.Parameters[0].Value := Trim(Edit2.Text);
  QryCliente.Open;
  IF QryCliente.RecordCount = 0 then
  begin
    Edit3.Text := '';
    Edit4.Text := '';
    Application.MessageBox('El cliente no se encuentra en el sistema de información, por favor realizar el registro','Ingreso y/o modificación Factura',MB_ICONWARNING);
    Edit2.SetFocus;
  end
  else
  begin
    Edit3.Text := QryClienteNOMBRE_CLIENTE.Value;
    Edit4.Text := QryClienteDIRECCION.Value;
  end;

end;

procedure TFrmIngresoFactura.FormCreate(Sender: TObject);
begin
  DateTimePicker1.Date := Now;
  Edit10.Text := IntToStr(total);
  QryConsecutivo.Close;
  QryConsecutivo.SQL.Clear;
  QryConsecutivo.SQL.Add('select*from CONSECUTIVOS WHERE CODIGO_CONSEC = ''FAC'' ');
  QryConsecutivo.Open;
  consecutivo := StrToInt(QryConsecutivoCONSECUTIVO.Value) +1;
  Edit1.Text := IntToStr(consecutivo);
  with StringGrid1 do
  begin
    Cells[0,0] := 'COD. PROD';
    Cells[1,0] := 'PRODUCTO';
    Cells[2,0] := 'VALOR UNIDAD';
    Cells[3,0] := 'CANTIDAD';
    Cells[4,0] := 'VALOR';
  end;

end;

procedure TFrmIngresoFactura.BitBtn1Click(Sender: TObject);
begin
  FrmIngresoFactura.Close;
  FrmIngresoFactura := TFrmIngresoFactura.Create(Application);
  try
    FrmIngresoFactura.Show;
  except
    FrmIngresoFactura.Free;
  end;
end;

procedure TFrmIngresoFactura.BitBtn4Click(Sender: TObject);
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
      FrmBuscarProducto.Caption := 'Buscar Producto Factura';
      try
        FrmBuscarProducto.ShowModal;
      except
        FrmBuscarProducto.Free;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('No hay productos ingresados en el sistema de información, por favor realizar el ingreso','Ingreso y/o modificación producto',MB_ICONEXCLAMATION);
    Edit5.SetFocus;
    Exit;
  end;
end;

procedure TFrmIngresoFactura.Edit5Exit(Sender: TObject);
begin
  if (Edit5.Text <> '') and (Edit5.Text <> EmptyStr)then
  begin
    QryProducto.Close;
    QryProducto.SQL.Clear;
    QryProducto.SQL.Add('SELECT*FROM PRODUCTOS WHERE PRODUCTO = :"PRODUCTO"');
    QryProducto.Parameters[0].Value := Trim(Edit5.Text);
    QryProducto.Open;
    if QryProducto.RecordCount = 1 then
    begin
      Edit6.Text := QryProductoNOMBRE_PRODUCTO.Value;
      Edit7.Text := FloatToStr(QryProductoVALOR.Value);
      Edit8.SetFocus;
    end
    else
    begin
      Application.MessageBox('El producto buscado no se encuentra en el sistema de información','Ingreso y/o modificación Producto',MB_ICONWARNING);
      Edit5.SetFocus;
    end;
  end;
end;

procedure TFrmIngresoFactura.Edit8Exit(Sender: TObject);
var valorunitario : Double;
begin
  valorunitario := QryProductoVALOR.Value;
  totalxproducto := (valorunitario * (StrToFloat(Edit8.Text)));
  Edit9.Text := FloatToStr(totalxproducto);

end;

procedure TFrmIngresoFactura.BitBtn3Click(Sender: TObject);
begin
  FrmFactura := TFrmFactura.Create(Application);
  try
    FrmFactura.QRLabel3.Caption   := Edit1.Text;
    FrmFactura.QRLabel5.Caption   := FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
    FrmFactura.QRLabel7.Caption   := Edit2.Text;
    FrmFactura.QRLabel9.Caption   := Edit3.Text;
    FrmFactura.QRLabel11.Caption  := Edit4.Text;
    FrmFactura.QRLabel20.Caption  := Edit10.Text;
    FrmFactura.QryDetalleFac.Close;
    FrmFactura.QryDetalleFac.SQL.Clear;
    FrmFactura.QryDetalleFac.SQL.Add('select F.PRODUCTO, P.NOMBRE_PRODUCTO, F.CANTIDAD, P.VALOR ''VALOR UNITARIO'', F.VALOR from DETALLE_FACTURA F '+
    'INNER JOIN PRODUCTOS P ON F.PRODUCTO = P.PRODUCTO WHERE F.NUMERO = :"NUMERO" ');
    FrmFactura.QryDetalleFac.Parameters[0].Value := Edit1.Text;
    FrmFactura.QryDetalleFac.Open;
    FrmFactura.QuickRep1.Preview;
  except
    FrmFactura.Free;
  end;
end;

procedure TFrmIngresoFactura.BitBtn5Click(Sender: TObject);
begin
   with StringGrid1 do
  begin
    fila := RowCount-1;
    if Cells[0,fila] = '' then
    begin
      total := StrToInt(Edit9.Text);
      Edit10.Text := IntToStr(total);
      Cells[0,fila] := Edit5.Text;
      Cells[1,fila] := Edit6.Text;
      Cells[2,fila] := Edit7.Text;
      Cells[3,fila] := Edit8.Text;
      Cells[4,fila] := Edit9.Text;
      Edit5.Text := '';
      Edit6.Text := '';
      Edit7.Text := '';
      Edit8.Text := '';
      Edit9.Text := '';
      Edit5.SetFocus;
    end
    else
    begin
      RowCount := RowCount+1;
      fila := RowCount-1;
      total := total + StrToInt(Edit9.Text);
      Edit10.Text := IntToStr(total);
      Cells[0,fila] := Edit5.Text;
      Cells[1,fila] := Edit6.Text;
      Cells[2,fila] := Edit7.Text;
      Cells[3,fila] := Edit8.Text;
      Cells[4,fila] := Edit9.Text;
      Edit5.Text := '';
      Edit6.Text := '';
      Edit7.Text := '';
      Edit8.Text := '';
      Edit9.Text := '';
      Edit5.SetFocus;
    end;
  end;
end;

procedure TFrmIngresoFactura.BitBtn2Click(Sender: TObject);
var i : Integer;
begin
  numero := Edit1.Text;
  QryCabeza_Factura.Close;
  QryCabeza_Factura.SQL.Clear;
  QryCabeza_Factura.SQL.Add('SELECT*FROM CABEZA_FACTURA WHERE NUMERO = :"NUMERO"');
  QryCabeza_Factura.Parameters[0].Value := Trim(Edit1.Text);
  QryCabeza_Factura.Open;

  QryDetalle_Factura.Close;
  QryDetalle_Factura.SQL.Clear;
  QryDetalle_Factura.SQL.Add('SELECT*FROM DETALLE_FACTURA WHERE NUMERO = :"NUMERO"');
  QryDetalle_Factura.Parameters[0].Value := Trim(Edit1.Text);
  QryDetalle_Factura.Open;
  IF QryCabeza_Factura.RecordCount = 0 then
  begin
    TRY
      DataModule1.ADOConnection1.BeginTrans;
      QryCabeza_Factura.Insert;
      QryCabeza_FacturaNUMERO.Value   := Edit1.Text;
      QryCabeza_FacturaFECHA.Value    := DateTimePicker1.Date;
      QryCabeza_FacturaCLIENTE.Value  := Trim(Edit2.Text);
      QryCabeza_FacturaTOTAL.Value    := StrToFloat(Edit10.Text);
      QryCabeza_Factura.Post;
      for i := 1 to fila do
      begin
        if StringGrid1.Cells[0,i]<> '' then
        begin
          codigo := StringGrid1.Cells[0,i];
          cantidad := StrToInt(StringGrid1.Cells[3,i]);
          valor := StrToFloat(StringGrid1.Cells[4,i]);
          QryDetalle_Factura.Insert;
          QryDetalle_FacturaNUMERO.Value := numero;
          QryDetalle_FacturaPRODUCTO.Value := codigo;
          QryDetalle_FacturaCANTIDAD.Value := cantidad;
          QryDetalle_FacturaVALOR.Value := valor;
          QryDetalle_Factura.Post;
        end;
      end;

      QryConsecutivo.Edit;
      QryConsecutivoCONSECUTIVO.Value := IntToStr(consecutivo);
      QryConsecutivo.Post;
      DataModule1.ADOConnection1.CommitTrans;
      BitBtn3.Enabled := True;
      Edit5.Enabled := False;
      Edit7.Enabled := False;
      Edit8.Enabled := False;
      Edit9.Enabled := False;
      BitBtn4.Enabled := False;
      Application.MessageBox('La factura se ha ingresado exitosamente','Ingreso factura',MB_ICONINFORMATION);
    except
      Application.MessageBox('No es posible ingresar la factura','Ingreso factura',MB_ICONERROR);
      DataModule1.ADOConnection1.RollbackTrans;
    end;
  end;
end;

end.
