object FrmBuscarProducto: TFrmBuscarProducto
  Left = 259
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'FrmBuscarProducto'
  ClientHeight = 249
  ClientWidth = 721
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 73
    TabOrder = 0
    object Label1: TLabel
      Left = 260
      Top = 12
      Width = 201
      Height = 18
      Caption = 'BUSQUEDA DE PRODUCTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 72
      Top = 40
      Width = 113
      Height = 17
      Caption = 'Nombre producto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 200
      Top = 40
      Width = 401
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 80
    Width = 721
    Height = 169
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 719
      Height = 167
      Align = alClient
      DataSource = DtsBuscarProducto
      FixedColor = clSkyBlue
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUCTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOMBRE_PRODUCTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'NOMBRE PRODUCTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 500
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object QryBuscarProducto: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select*from PRODUCTOS')
    Left = 624
    Top = 8
    object QryBuscarProductoPRODUCTO: TStringField
      FieldName = 'PRODUCTO'
      Size = 10
    end
    object QryBuscarProductoNOMBRE_PRODUCTO: TStringField
      FieldName = 'NOMBRE_PRODUCTO'
      Size = 120
    end
    object QryBuscarProductoVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 0
    end
  end
  object DtsBuscarProducto: TDataSource
    DataSet = QryBuscarProducto
    Left = 656
    Top = 8
  end
end
