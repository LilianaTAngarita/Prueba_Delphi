object FrmIngresoClientes: TFrmIngresoClientes
  Left = 255
  Top = 172
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ingreso y/o modificaci'#243'n cliente'
  ClientHeight = 249
  ClientWidth = 721
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 721
    Height = 41
    TabOrder = 0
    object Label1: TLabel
      Left = 215
      Top = 12
      Width = 284
      Height = 18
      Caption = 'INGRESO Y/O MODIFICACI'#211'N CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 48
    Width = 721
    Height = 129
    TabOrder = 1
    object Label2: TLabel
      Left = 32
      Top = 16
      Width = 158
      Height = 17
      Caption = 'Documento de identidad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 416
      Top = 16
      Width = 119
      Height = 17
      Caption = 'Nombre Completo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 144
      Top = 63
      Width = 161
      Height = 17
      Caption = 'Direcci'#243'n de residencia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 16
      Top = 35
      Width = 201
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 0
      OnExit = Edit1Exit
      OnKeyPress = Edit1KeyPress
    end
    object BitBtn1: TBitBtn
      Left = 224
      Top = 29
      Width = 31
      Height = 29
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F8F3F1D3B1AFE3CECDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF2E7E69A504A984C478C3631E3CFCDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFFFAFBFEFBFCFFFFFF
        FFFFFFFFFFFFFFFFFFFFEEDEDB8F83977460779A524F8F3B34D4B4B2FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE2E6D8B1AAD08F75
        D38D6FCA846BD09E90E0CBCAFFFFFFF4EAE79281936088B8648BB9794752984A
        44F8F3F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F0F2D1947FDE
        7B42F78C43F7924CE27F45DE7C43E0783BD56D34D07E5B8F5A5F65688B6688B5
        6E5E75947884F2EAE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE2
        E2D28C70F58D44E78A4FD58C66DAA88AD9AF94D8AB8FD09273CF7A51E27B3FC5
        6D4484575D6E4B5F957682EDE0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8F9FBD5947AFB9449D47B4DD8AF95EDD7BDF3E1C4F6E3C5F4E1C3F2DE
        C1E5C8ADC48267E37C3EC6693F8F5557F3ECECFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFD8AC9FF08B45DA7E4CE5D0B9FFF3D3FCECCCFCEBCB
        F6DFC2F9E5C7F3DEC0F6E1C3F7EBCDC58267E27C41CF805CFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFD58158EF8A48D7A589FFF7D7FB
        EACAFFF3D4D8B89CAB9572EACEB2FEEECEF4DEC0F5E1C3E6C8ADCF7B51D56D34
        E0CBCAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7DCE0E37A3AE48F
        59EED6BAFDEECDFFF3D2EABEA98B9D6480CD799B9669FCD9C1FEEECEF3DEC0F2
        DEC1D09273E1783BD19E92FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DABEBAF09153DA956FF6E5CAFFEECEDAB89D899D6482D98188BD757ED87E9A95
        68EDCDB3FBE8C9F5E1C4D8AB8FDF7D42CB856BFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFD7B9B6F2AE84D9A284F8F0E2FFF0D7CDAC8E82AA689FA874
        CBA38993A76E7FD37CA0A474E6C9ADF8E5C8D9AF94E17F44D38D6FFAFCFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDC4C3ECA67BDEA382F6ECDFFFF5E2FC
        E7C6CBA78CE8CCB0FFF0D2DDB59D81A5637AB568BC997BFCEACED9A889F7924C
        CF8F75FCFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1ECEFDE9876E7A7
        82E5C8AFFFF9E5FBEACCFFF2D1FEEECEFBEACAFFF7D7DBB49BBE977DFAE7C8EF
        D9BED58C66F78D43D8B1AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD49D89F3B087D09478FEF8E4FEF8EBFBEACCFAE8C6FAE9C8FBE9C9FEED
        CDFEEBCCFFF4D5D7AE95E7894FDF7B42EAE1E5FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE4CCC9E5A27EEDAA82D0A38DFFFBECFFFFF8FDF3DF
        FCF0D5FBEBCBFCEECDFFF8D7E5D0B9D57C4EF58D44D1947FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFDAB6ADEBAC87ECAA82D0
        9578E6C8AFF6ECDFF8EFE2F5E5CAEED6BAD7A589DA7E4CFB9549D28C6FF4F0F3
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFA
        FBD9B5ADE5A27FF3B187E7A682DDA383DAA283D9956FE48E59EF8A48F08944D5
        957BEDE2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFFFFE4CEC9D49D8ADD9775EDA67DF2AE84F19253E279
        39D58259D8AD9FF8F7F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1ECEEDDC4C3
        D7B9B6DABDBAE7DDE1FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object Edit2: TEdit
      Left = 264
      Top = 35
      Width = 441
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnExit = Edit2Exit
    end
    object Edit3: TEdit
      Left = 16
      Top = 85
      Width = 457
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnExit = Edit3Exit
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 176
    Width = 721
    Height = 73
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 112
      Top = 12
      Width = 121
      Height = 49
      Caption = 'Nuevo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000074120000741200000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3F2D591E19667D96D52D45952D45967
        D96D92E297D3F2D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEECECEC
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9D0E8D168D97038D24138D54238D54238D54238D54238
        D54238D54238D2416ADA71DEF6DFFFFFFFFFFFFFFFFFFFFFFFFFECECECDDDDDD
        DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDE
        DEDEDEDEDEDEDEA6D6A93FD2483AD5433AD5433AD5433AD44340D2493FD2483A
        D5433AD5433AD5433AD54342D449BEEDC0FFFFFFFFFFFFFFFFFFEFEFEFE2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2E2E2B0DBB33DD4463BD6443BD6443BD6443BD644A2E6A6FAFAFAF9FAF98B
        E2903BD6443BD6443BD6443BD6443DD547C6F0C8FFFFFFFFFFFFEFEFEFE2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2D2DFD348D5503CD7463CD7463CD7463CD7463CD746D4F5D6FFFFFFFFFFFFB9
        F0BC3CD7463CD7463CD7463CD7463CD7464BD653EDFAEEFFFFFFEFEFEFE2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E282D8873ED7473ED7473ED7473ED7473ED7473ED747D4F6D6FFFFFFFFFFFFB9
        F0BD3ED7473ED7473ED7473ED7473ED7473ED7478EE594FFFFFFEFEFEFE2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2DBE0
        DB46D64F3FD8483FD8483FD8483FD8483FD8483FD848D5F6D7FFFFFFFFFFFFBA
        F1BD3FD8483FD8483FD8483FD8483FD8483FD84847D851F7FDF7EFEFEFE2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2B3DD
        B640D84A40D84A40D74A4ED65750D65850D65850D658D8F6DAFFFFFFFFFFFFC0
        F0C350D65850D65850D6584DD65540D84A40D84A40D84AC9F3CBEFEFEFE2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E298DC
        9C42D94B42D94BA3E7A7FCFCFCFCFCFCFCFCFCFCFCFCFEFEFEFFFFFFFFFFFFFD
        FDFDFCFCFCFCFCFCFCFCFCFBFBFB8CE39142D94B42D94BA8ECACEFEFEFE2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E28EDD
        9343DA4D43DA4DCAF4CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB2EFB643DA4D43DA4D9CEBA1F0F0F0E2E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E294DE
        9944DA4E44DA4EBCF2BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA5EDA944DA4E44DA4EA3EDA8F0F0F0E3E3E3
        E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3ACE0
        AF46DB4F46DB4F51DD5A81E68782E68982E68982E689E3F9E5FFFFFFFFFFFFD2
        F6D482E68982E68982E6897EE6854BDC5546DB4F46DB4FBEF2C1F1F1F1E4E4E4
        E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4D3E3
        D448DC5247DC5147DC5147DC5147DC5147DC5147DC51D6F7D8FFFFFFFFFFFFBD
        F2C047DC5147DC5147DC5147DC5147DC5147DC5148DB51ECFBEDF1F1F1E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E574DE7B48DC5248DC5248DC5248DC5248DC5248DC52D7F7D9FFFFFFFFFFFFBD
        F2C148DC5248DC5248DC5248DC5248DC5248DC527CE683FFFFFFF2F2F2E5E5E5
        E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5
        E5C4E3C64BDD554ADD534ADD534ADD534ADD534ADD53D7F7D9FFFFFFFFFFFFBE
        F2C14ADD534ADD534ADD534ADD534ADD534BDD55D8F8DAFFFFFFF2F2F2E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E695E29A4BDE554BDE554BDE554BDE554BDE55C5F4C8FFFFFFFFFFFFAE
        F0B24BDE554BDE554BDE554BDE554BDE55A1EDA6FFFFFFFFFFFFF2F2F2E7E7E7
        E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7
        E7E7E7E7E6E7E688E18E4CDE564CDE564CDE564CDE5655E05F7BE7827AE68151
        DF5A4CDE564CDE564CDE564CDE5691EB98FEFFFEFFFFFFFFFFFFF3F3F3E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E7E7E7A5E4A954DF5E4EDF584EDF584EDF584EDF584EDF584E
        DF584EDF584EDF5855E160B2F1B7FFFFFFFFFFFFFFFFFFFFFFFFF3F3F3E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9DAE8DB99E49E66E16E4FDF594FDF594FDF594F
        DF5966E16EA4EFAAEEFCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9
        E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9DFE9E0D0E8D1D0E8D1DF
        E9E0E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4EAEAEA
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
        EAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEAEA
        EAEAEBEBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4EBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
        EBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEB
        EBEBECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5ECECEC
        ECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEC
        ECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECECEC
        ECECEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5EDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F6EEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEBEBEBE5E4E2E5E5E5E6E6E6E7
        E7E7E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7EFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF
        EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFD3BB89C69B43C2973FBE953FBB
        9340DDCCA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0D3AC5ACDA044C99C40C5983CE0
        C99AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
        F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0D4AC5ACDA044C99C40E2CB9CFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1
        F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1D4AC5ACDA044E4CD9EFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2
        F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2D4AC5AE6CFA0FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4EBD9B4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitBtn3: TBitBtn
      Left = 432
      Top = 12
      Width = 121
      Height = 49
      Caption = 'Guardar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000074120000741200000000000000000000FCFAF5E0C793
        D8B773D8B773D8B773D8B773D8B773D8B773D8B773D8B773D8B773D8B773D8B7
        73D8B773D8B773D8B773D8B773D8B773D8B773D8B773D8B773D8B773D0BA739D
        C875D8B773D8B773D8B773D8B773DDC38AFAF5ECFFFFFFFFFFFFDFC080D6A339
        9D9E6C869C80869C80869C80869C80869C80869C80869C80869C80869C80869C
        80869C80869C80869C80869C80869C80869C80869C80869C80869C8064B94836
        CF3F78AD58869C80869C80879C7FD7A439DAB368FFFFFFFFFFFFDBAF53D9A53A
        5E9FB32E9DE32E9DE32E9DE32E9DE32E9DE32E9DE32E9DE32E9DE32E9DE32E9D
        E32E9DE32E9DE32E9DE32E9DE32E9DE32E9DE32E9DE32E9DE329A6AB36D13F37
        D44034CA47299ECC2E9DE3319DE0D9A53AD7A53BFFFFFFFFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF8EA44D04C37D44037
        D44037D33F65D66CFCFEFDFEFDFBD9A53AD8A43AFFFFFFFFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFCFCFCEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDECEDEC6BD67136D33F37D44037
        D44037D44036D23FA0E4A4FEFDFBD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFCFCFCEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED
        EDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDED9AD89E36D23F37D44037D44037
        D44037D44037D4403BD044D8F2D7D9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDF5DE3DD04537D44037D44037D44037
        D44037D44037D44037D44058D35DD4A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFAFAFAE6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
        E6E6E6E6E6E6E6E6E6E6E6E6E6E2E6E25AD26137D44037D44037D44037D44037
        D44037D44037D44037D44036D33F7EB73CD9A53AFFFFFFFFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFDFDFDF4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4
        F4F4F4F4F4F4F4F4F4F4F4F4F48CD99036D33F37D44037D44037D44037D44037
        D44037D44037D44037D44037D44037CF3FAFAC3BFFFFFFFFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCEF0D038D04137D44037D44037D44037D44037D44037
        D44037D44037D44037D44037D44037D44049C73EF3FBF3FFFFFFDDAF52D9A53A
        F4E5C7FFFFFFF9F9F9DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFD6DED74DD05437D44037D44037D44037D44037D44037D44037
        D44037D44037D44037D44037D44037D44036D33F7FDB84FFFFFFDDAF52D9A53A
        F4E5C7FFFFFFFEFEFEFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAFAFA7DD98236D33F37D44037D44037D44037D44037D44037D44037
        D44037D44037D44037D44037D44037D44037D44037D140BDECBFDDAF52D9A53A
        F0DCB2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFEEFAEE58D86056DA5D56DA5D56DA5D3CD54537D44037D44037D44037
        D44037D44037D44037D44039D33F4DCD3F4DCD3F52D95977DE7DDDAF52D9A53A
        DBAA46EACD93EBD19CEBD19CEBD19CEBD19CEBD19CEBD19CEBD19CEBD19CEBD1
        9CEBD19CEBD19CEBD19CEBD19CEBD19CEBD19C58D35137D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A5
        3AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53A55CB3E37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A5
        3AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53A55CB3E37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A5
        3AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53A55CB3E37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A5
        3AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53A55CB3E37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A5
        3AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53A55CB3E37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A5
        3AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53A55CB3E37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53AD9A5
        3AD9A53AD9A53AD9A53AD9A53AD9A53AD9A53A55CB3E37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        D2A038BE9132BC8F32BC8F32BC8F32BC8F32BC8F32BC8F32BC8F32BC8F32BC8F
        32BC8F32BC8F32BC8F32BC8F32BC8F32BC8F3250C73D37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        C09233B58A30B58A30B58A30B58A30B58A30B58A30B58A30B58A30B58A30B58A
        30B58A30B58A30B58A30B58A30B58A30B58A304EC63C37D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53AD9A53AFFFFFFFFFFFFDDAF52D9A53A
        BF9132B58A30C19E54DCCAA4DECCA8DECCA8DECCA8DECCA8DECCA8DECCA8DECC
        A8DECCA8DECCA8DECCA8DECCA8DECCA8DECCA856D25337D44037D44037D44037
        D44037D44037D44037D44046CF3FD9A53ADAA741FFFFFFFFFFFFDDAF52D9A53A
        BF9132B58A30EFE8DBFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA76E07C37D44037D44037D44037
        D44037D44037D44037D4405CC93ED9A53AE1BA68FFFFFFFFFFFFDDAF52D9A53A
        BF9132B58A30F5F2EDFAFAFAD6C091B58A30B58A30B58A30EDE4D4FAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF7F9F8D0C898AD8E30BD9A35CF
        A73ACFA73ACFA73ACFA73AD6A53AD9A53AF0DCB2FFFFFFFFFFFFDDAF52D9A53A
        BF9132B58A30F5F2EDFAFAFAD6C091B58A30B58A30B58A30EDE4D4FAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFADAC79EB58A30C59634D9
        A53AD9A53AD9A53AD9A53AD9A53AE0B763FEFDFCFFFFFFFFFFFFDDAF52D9A53A
        BF9132B58A30F5F2EDFAFAFAD6C091B58A30B58A30B58A30EDE4D4FAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFADAC79EB58A30C59634D9
        A53AD9A53AD9A53AD9A53ADEB153FBF6ECFFFFFFFFFFFFFFFFFFDDAF52D9A53A
        BF9132B58A30F5F2EDFAFAFAD6C091B58A30B58A30B58A30EDE4D4FAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFADAC79EB58A30C59634D9
        A53AD9A53AD9A53ADCAA48F9F1E0FFFFFFFFFFFFFFFFFFFFFFFFDEB053D9A53A
        BF9132B58A30F5F2EDFAFAFAD6C091B58A30B58A30B58A30EDE4D4FAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFADAC79EB58A30C59634D9
        A53AD9A53AD9A83FF6EAD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7C480D9A53A
        BF9132B58A30F5F2EDFAFAFADAC69DBC9646BC9646BC9646EEE7D8FAFAFAFAFA
        FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFADAC79EB58A30C59634D9
        A53ADBAB46F4E5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFAF5EACE93
        D1B26ECAAD6DF8F6F2FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFB
        FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBE4D8BBCAAD6DD7B977EE
        D7A7FCF9F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object QryClientes: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'select*from CLIENTES')
    Left = 128
    Top = 16
    object QryClientesCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Size = 16
    end
    object QryClientesNOMBRE_CLIENTE: TStringField
      FieldName = 'NOMBRE_CLIENTE'
      Size = 90
    end
    object QryClientesDIRECCION: TStringField
      FieldName = 'DIRECCION'
      Size = 100
    end
  end
  object DtsClientes: TDataSource
    DataSet = QryClientes
    Left = 160
    Top = 16
  end
end
