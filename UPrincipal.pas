unit UPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Menus;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Proceso1: TMenuItem;
    Consulta1: TMenuItem;
    Porducto1: TMenuItem;
    Factura2: TMenuItem;
    Image1: TImage;
    Cliente2: TMenuItem;
    IngresoyoModificacinCliente2: TMenuItem;
    EliminacinCLiente2: TMenuItem;
    ModificacinFactura2: TMenuItem;
    procedure Porducto1Click(Sender: TObject);
    procedure IngresoyoModificacinCliente2Click(Sender: TObject);
    procedure EliminacinCLiente2Click(Sender: TObject);
    procedure Factura2Click(Sender: TObject);
    procedure ModificacinFactura2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UIngresoCliente, UEliminacionCliente, UIngresoProducto, UIngresoFactura, UModificarFactura;

{$R *.dfm}

procedure TFrmPrincipal.Porducto1Click(Sender: TObject);
begin
  FrmIngresoProductos := TFrmIngresoProductos.Create(Application);
  try
    FrmIngresoProductos.Show;
  except
    FrmIngresoProductos.Free;
  end;
end;

procedure TFrmPrincipal.IngresoyoModificacinCliente2Click(Sender: TObject);
begin
  FrmIngresoClientes := TFrmIngresoClientes.Create(Application);
  try
    FrmIngresoClientes.Show;
  except
    FrmIngresoClientes.Free;
  end;
end;

procedure TFrmPrincipal.EliminacinCLiente2Click(Sender: TObject);
begin
  FrmEliminacionCliente := TFrmEliminacionCliente.Create(Application);
  try
    FrmEliminacionCliente.Show;
  except
    FrmEliminacionCliente.Free;
  end;
end;

procedure TFrmPrincipal.Factura2Click(Sender: TObject);
begin
  FrmIngresoFactura := TFrmIngresoFactura.Create(Application);
  try
    FrmIngresoFactura.Show;
  except
    FrmIngresoFactura.Free;
  end;
end;

procedure TFrmPrincipal.ModificacinFactura2Click(Sender: TObject);
begin
  FrmModificarFactura := TFrmModificarFactura.Create(Application);
  try
    FrmModificarFactura.Show;
  except
    FrmModificarFactura.Free;
  end;
end;

end.
