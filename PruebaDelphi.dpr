program PruebaDelphi;

uses
  Forms,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDatamodule in 'UDatamodule.pas' {DataModule1: TDataModule},
  UIngresoCliente in 'UIngresoCliente.pas' {FrmIngresoClientes},
  UEliminacionCliente in 'UEliminacionCliente.pas' {FrmEliminacionCliente},
  UIngresoProducto in 'UIngresoProducto.pas' {FrmIngresoProductos},
  UBuscarProducto in 'UBuscarProducto.pas' {FrmBuscarProducto},
  UIngresoFactura in 'UIngresoFactura.pas' {FrmIngresoFactura},
  UFactura in 'UFactura.pas' {FrmFactura},
  UModificarFactura in 'UModificarFactura.pas' {FrmModificarFactura},
  UFacturaModificada in 'UFacturaModificada.pas' {FrmFacModificada};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
