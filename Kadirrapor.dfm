object frmKadirRapor: TfrmKadirRapor
  Left = 719
  Top = 184
  BorderStyle = bsToolWindow
  Caption = '-'
  ClientHeight = 71
  ClientWidth = 316
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 52
    Width = 316
    Height = 19
    Panels = <>
  end
  object memo: TDBMemo
    Left = 128
    Top = 48
    Width = 185
    Height = 89
    DataField = 'rapor'
    DataSource = DataSource1
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 316
    Height = 52
    Align = alClient
    BevelInner = bvLowered
    TabOrder = 2
    object btnSend: TSpeedButton
      Left = 4
      Top = 3
      Width = 101
      Height = 46
      Caption = 'Dizayn'
      Flat = True
      OnClick = btnSendClick
    end
    object btnYazdir: TSpeedButton
      Left = 108
      Top = 3
      Width = 101
      Height = 46
      Caption = 'Dizayn'
      Flat = True
      OnClick = btnSendClick
    end
    object btnOnIzle: TSpeedButton
      Left = 211
      Top = 3
      Width = 101
      Height = 46
      Caption = 'Dizayn'
      Flat = True
      OnClick = btnSendClick
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    Left = 37
    Top = 48
  end
  object frxReport1: TfrxReport
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 39355.062303159720000000
    ReportOptions.LastChange = 39355.062303159720000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 8
    Top = 48
    Datasets = <>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.009912533333500000
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.009912533333500000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.009912533333500000
        object Memo1: TfrxMemoView
          Left = 642.419312533333400000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.Strings = (
            '[Page#]')
        end
      end
    end
  end
  object frxDesigner1: TfrxDesigner
    Restrictions = []
    OnLoadReport = frxDesigner1LoadReport
    OnSaveReport = frxDesigner1SaveReport
    Left = 145
    Top = 104
  end
  object DataSource1: TDataSource
    Left = 96
    Top = 48
  end
  object frxXLSExport1: TfrxXLSExport
    ShowProgress = True
    Left = 176
    Top = 56
  end
  object frxRTFExport1: TfrxRTFExport
    ShowProgress = True
    Left = 216
    Top = 56
  end
  object frxPDFExport1: TfrxPDFExport
    EmbeddedFonts = True
    Left = 256
    Top = 56
  end
  object frxHTMLExport1: TfrxHTMLExport
    FixedWidth = True
    Left = 224
    Top = 176
  end
  object frxTXTExport1: TfrxTXTExport
    ScaleWidth = 1.000000000000000000
    ScaleHeight = 1.000000000000000000
    Borders = True
    Pseudogrpahic = False
    PageBreaks = True
    OEMCodepage = False
    EmptyLines = True
    LeadSpaces = True
    PrintAfter = False
    PrinterDialog = True
    UseSavedProps = True
    ShowProgress = True
    Left = 400
    Top = 128
  end
  object frxXMLExport1: TfrxXMLExport
    ShowProgress = True
    Left = 400
    Top = 168
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    Left = 104
    Top = 80
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    Left = 56
    Top = 96
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    Left = 88
    Top = 96
  end
  object frxDBDataset5: TfrxDBDataset
    UserName = 'frxDBDataset5'
    Left = 120
    Top = 104
  end
  object frxDBDataset6: TfrxDBDataset
    UserName = 'frxDBDataset6'
    Left = 72
    Top = 48
  end
  object frxDBDataset7: TfrxDBDataset
    UserName = 'frxDBDataset7'
    Left = 216
    Top = 104
  end
  object frxDBDataset8: TfrxDBDataset
    UserName = 'frxDBDataset8'
    Left = 256
    Top = 104
  end
  object frxDBDataset9: TfrxDBDataset
    UserName = 'frxDBDataset9'
    Left = 248
    Top = 200
  end
  object frxDBDataset10: TfrxDBDataset
    UserName = 'frxDBDataset10'
    Left = 328
    Top = 152
  end
  object frxDBDataset11: TfrxDBDataset
    UserName = 'frxDBDataset11'
    Left = 280
    Top = 64
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 160
    Top = 80
  end
  object frxDialogControls1: TfrxDialogControls
    Left = 312
    Top = 112
  end
  object frxChartObject1: TfrxChartObject
    Left = 64
    Top = 160
  end
  object frxRichObject1: TfrxRichObject
    Left = 144
    Top = 48
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 8
    Top = 72
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 72
    Top = 72
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 40
    Top = 72
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 8
    Top = 216
  end
  object PrintDialog1: TPrintDialog
    Left = 8
    Top = 184
  end
  object ADO_RAPORLAR: TADOTable
    CursorType = ctStatic
    TableName = 'raporlar'
    Left = 53
    Top = 192
  end
  object ADO_RAPORLAR1: TADOTable
    CursorType = ctStatic
    TableName = 'raporlar'
    Left = 53
    Top = 224
  end
end
