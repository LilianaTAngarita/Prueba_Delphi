unit UBuscarProducto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TFrmBuscarProducto = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    QryBuscarProducto: TADOQuery;
    DtsBuscarProducto: TDataSource;
    QryBuscarProductoPRODUCTO: TStringField;
    QryBuscarProductoNOMBRE_PRODUCTO: TStringField;
    QryBuscarProductoVALOR: TBCDField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBuscarProducto: TFrmBuscarProducto;

implementation

uses
  UDatamodule, UIngresoProducto, UIngresoFactura;

{$R *.dfm}

procedure TFrmBuscarProducto.FormActivate(Sender: TObject);
begin
  Top := 10;
end;

procedure TFrmBuscarProducto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmBuscarProducto.Edit1Change(Sender: TObject);
begin
  IF FrmBuscarProducto.Caption = 'Buscar producto' then
  begin
    QryBuscarProducto.Close;
    QryBuscarProducto.SQL.Clear;
    QryBuscarProducto.SQL.Add('SELECT*FROM PRODUCTOS WHERE NOMBRE_PRODUCTO LIKE :"NOM_PRODUCTO"');
    QryBuscarProducto.Parameters[0].Value := '%'+Edit1.Text+'%';
    QryBuscarProducto.Open;
  end;
  IF FrmBuscarProducto.Caption = 'Buscar Producto Factura' then
  begin
    QryBuscarProducto.Close;
    QryBuscarProducto.SQL.Clear;
    QryBuscarProducto.SQL.Add('SELECT*FROM PRODUCTOS WHERE NOMBRE_PRODUCTO LIKE :"NOM_PRODUCTO"');
    QryBuscarProducto.Parameters[0].Value := '%'+Edit1.Text+'%';
    QryBuscarProducto.Open;
  end;
end;

procedure TFrmBuscarProducto.FormCreate(Sender: TObject);
begin
  QryBuscarProducto.Close;
  QryBuscarProducto.SQL.Clear;
  QryBuscarProducto.SQL.Add('SELECT*FROM PRODUCTOS');
  QryBuscarProducto.Open;
end;

procedure TFrmBuscarProducto.DBGrid1DblClick(Sender: TObject);
begin
  if FrmBuscarProducto.Caption = 'Buscar Producto' then
  begin
    FrmIngresoProductos.Edit1.Text := QryBuscarProductoPRODUCTO.Value;
    FrmIngresoProductos.Edit1Exit(FrmIngresoProductos.Edit1);
    FrmBuscarProducto.Close;
  end;
  if FrmBuscarProducto.Caption = 'Buscar Producto Factura' then
  begin
    FrmIngresoFactura.Edit5.Text := QryBuscarProductoPRODUCTO.Value;
    FrmIngresoFactura.Edit5Exit(FrmIngresoFactura.Edit5);
    FrmBuscarProducto.Close;
  end;
end;

end.
