unit Kadirrapor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls,frxDesgn, ADODB,
  frxDBSet,db, DBCtrls, frxExportPDF, frxExportRTF, frxExportXLS,
  frxExportXML, frxExportTXT, frxExportHTML, frxBarcode, frxDCtrl, ExtCtrls,
  frxDMPExport, frxChBox, frxRich, frxChart, frxGradient,frxRes, frxClass;



type
   TDataSetKadir = record
     Dataset1 : TDataSet;
     Dataset2 : TDataSet;
     Dataset3 : TDataSet;
     Dataset4 : TDataSet;
     Dataset5 : TDataSet;
     Dataset6 : TDataSet;
     Dataset7 : TDataSet;
     Dataset8 : TDataSet;
     Dataset9 : TDataSet;
     Dataset10 : TDataSet;
     Dataset11 : TDataSet;
     Dataset12 : TDataSet;

end;


type
  TfrmKadirRapor = class(TForm)
    frxDBDataset1: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    StatusBar1: TStatusBar;
    memo: TDBMemo;
    DataSource1: TDataSource;
    frxReport1: TfrxReport;
    frxXLSExport1: TfrxXLSExport;
    frxRTFExport1: TfrxRTFExport;
    frxPDFExport1: TfrxPDFExport;
    frxHTMLExport1: TfrxHTMLExport;
    frxTXTExport1: TfrxTXTExport;
    frxXMLExport1: TfrxXMLExport;
    frxDBDataset2: TfrxDBDataset;
    frxDBDataset3: TfrxDBDataset;
    frxDBDataset4: TfrxDBDataset;
    frxDBDataset5: TfrxDBDataset;
    frxDBDataset6: TfrxDBDataset;
    frxDBDataset7: TfrxDBDataset;
    frxDBDataset8: TfrxDBDataset;
    frxDBDataset9: TfrxDBDataset;
    frxDBDataset10: TfrxDBDataset;
    frxDBDataset11: TfrxDBDataset;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxDialogControls1: TfrxDialogControls;
    Panel1: TPanel;
    frxChartObject1: TfrxChartObject;
    frxRichObject1: TfrxRichObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxGradientObject1: TfrxGradientObject;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    ADO_RAPORLAR: TADOTable;
    ADO_RAPORLAR1: TADOTable;
    btnSend: TSpeedButton;
    btnYazdir: TSpeedButton;
    btnOnIzle: TSpeedButton;
    procedure raporData(Dataset : TADOQuery ; kod ,dosya ,yazici: string);
    procedure rapor1Data(dataset : TADOQuery ; kod , dosya , yazici : string);
    procedure raporDataset(Dataset : TDataset ; kod ,dosya ,yazici: string);
    procedure rapor1Dataset(Dataset : TDataset ; kod ,dosya ,yazici: string);
    procedure raporData1(dataset : TDataSetKadir ; kod , dosya : string);
    procedure rapor1Data1(dataset : TDataSetKadir ; kod , dosya : string);
    procedure btnSendClick(Sender: TObject);
    function frxDesigner1SaveReport(Report: TfrxReport;
      SaveAs: Boolean): Boolean;
    function frxDesigner1LoadReport(Report: TfrxReport): Boolean;
    procedure btnOnIzleClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnYazdirClick(Sender: TObject);

  private

    { Private declarations }
  public
       topluset : TDataSetKadir;
    { Public declarations }
  end;

var
  frmKadirRapor: TfrmKadirRapor;
  data : Tdataset;
  dosyaName ,d , _printer : string;
  toplu : TDataSetKadir;
implementation
 //uses data_model1;
{$R *.dfm}

procedure TfrmKadirRapor.raporData(dataset : TADOQuery ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;

     ADO_RAPORLAR.Active := true;
     ADO_RAPORLAR.Locate('raporkodu',kod,[]);
     frmKadirRapor.Caption := dosya;
  //   memo.DataSource := ADO_RAPORLAR;

     d := dosya;
(*     _server := server;
     data := dataset;
     i := pos('\',_server);
     _server := copy(_server,1,i-1);
     yol := '\\' + _server + '\Raporlar' + dosya;
     dosyaName := yol;
     frxReport1.LoadFromFile(yol,true);
     frxDBDataset1.DataSet := dataset;
  *)
   //  server1\medivizyon

  //   yol :=  ADO_RAPORLAR.fieldbyname('raporAdi').AsString;

    template := ADO_RAPORLAR.CreateBlobStream(ADO_RAPORLAR.FieldByName('Rapor'), bmRead);
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end; 

end;


procedure TfrmKadirRapor.rapor1Data(dataset : TADOQuery ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;

     ADO_RAPORLAR1.Active := true;
     ADO_RAPORLAR1.Locate('raporkodu',kod,[]);
          frmKadirRapor.Caption := dosya;
  //   memo.DataSource := ADO_RAPORLAR;

     d := dosya;
(*     _server := server;
     data := dataset;
     i := pos('\',_server);
     _server := copy(_server,1,i-1);
     yol := '\\' + _server + '\Raporlar' + dosya;
     dosyaName := yol;
     frxReport1.LoadFromFile(yol,true);
     frxDBDataset1.DataSet := dataset;
  *)
   //  server1\medivizyon

  //   yol :=  ADO_RAPORLAR.fieldbyname('raporAdi').AsString;

    template := ADO_RAPORLAR1.CreateBlobStream(ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end; 

end;




procedure TfrmKadirRapor.raporDataset(dataset : Tdataset ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;

     frmKadirRapor.Caption := dosya;

     ADO_RAPORLAR.Active := true;
     ADO_RAPORLAR.Locate('raporkodu',kod,[]);

  //   memo.DataSource := ADO_RAPORLAR;

     d := dosya;
(*     _server := server;
     data := dataset;
     i := pos('\',_server);
     _server := copy(_server,1,i-1);
     yol := '\\' + _server + '\Raporlar' + dosya;
     dosyaName := yol;
     frxReport1.LoadFromFile(yol,true);
     frxDBDataset1.DataSet := dataset;
  *)
   //  server1\medivizyon

  //   yol :=  ADO_RAPORLAR.fieldbyname('raporAdi').AsString;

    template := ADO_RAPORLAR.CreateBlobStream(ADO_RAPORLAR.FieldByName('Rapor'), bmRead);
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end;

(*
     template := TMemoryStream.Create;
     template.Position := 0;
     memo.Lines.SaveToFile('x.fr3');
     frxReport1.LoadFromFile('x.fr3');
     frxDBDataset1.DataSet := dataset;
     *)
//try
//    (ADO_RAPORLAR.FieldByName('rapor') as TBlobField).SaveToStream(template);



    //.SaveToStream(template);

   //ADO_RAPORLAR.Post;
//finally

//end;


end;


procedure TfrmKadirRapor.rapor1Dataset(dataset : Tdataset ; kod , dosya , yazici : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin
     _printer := yazici;

     frmKadirRapor.Caption := dosya;

     ADO_RAPORLAR1.Active := true;
     ADO_RAPORLAR1.Locate('raporkodu',kod,[]);

  //   memo.DataSource := ADO_RAPORLAR;

     d := dosya;
(*     _server := server;
     data := dataset;
     i := pos('\',_server);
     _server := copy(_server,1,i-1);
     yol := '\\' + _server + '\Raporlar' + dosya;
     dosyaName := yol;
     frxReport1.LoadFromFile(yol,true);
     frxDBDataset1.DataSet := dataset;
  *)
   //  server1\medivizyon

  //   yol :=  ADO_RAPORLAR.fieldbyname('raporAdi').AsString;

    template := ADO_RAPORLAR1.CreateBlobStream(ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset;
      // frxReport1.ShowReport;
    finally
          template.Free;
    end;

(*
     template := TMemoryStream.Create;
     template.Position := 0;
     memo.Lines.SaveToFile('x.fr3');
     frxReport1.LoadFromFile('x.fr3');
     frxDBDataset1.DataSet := dataset;
     *)
//try
//    (ADO_RAPORLAR.FieldByName('rapor') as TBlobField).SaveToStream(template);



    //.SaveToStream(template);

   //ADO_RAPORLAR.Post;
//finally

//end;


end;


procedure TfrmKadirRapor.raporData1(dataset : TDataSetKadir ; kod , dosya : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin

    frxReport1.Variables.AddVariable('Sabitler','Donem','ÞUBAT');

     ADO_RAPORLAR.Active := true;
     ADO_RAPORLAR.Locate('raporkodu',kod,[]);

  //   memo.DataSource := ADO_RAPORLAR;
         frmKadirRapor.Caption := dosya;
     d := dosya;
(*     _server := server;
     data := dataset;
     i := pos('\',_server);
     _server := copy(_server,1,i-1);
     yol := '\\' + _server + '\Raporlar' + dosya;
     dosyaName := yol;
     frxReport1.LoadFromFile(yol,true);
     frxDBDataset1.DataSet := dataset;
  *)
   //  server1\medivizyon

  //   yol :=  ADO_RAPORLAR.fieldbyname('raporAdi').AsString;

    template := ADO_RAPORLAR.CreateBlobStream(ADO_RAPORLAR.FieldByName('Rapor'), bmRead);
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset.Dataset1;
       frxDBDataset2.DataSet := dataset.Dataset2;
       frxDBDataset3.DataSet := dataset.Dataset3;
       frxDBDataset4.DataSet := dataset.Dataset4;
       frxDBDataset5.DataSet := dataset.Dataset5;
       frxDBDataset6.DataSet := dataset.Dataset6;
       frxDBDataset7.DataSet := dataset.Dataset7;
       frxDBDataset8.DataSet := dataset.Dataset8;
       frxDBDataset9.DataSet := dataset.Dataset9;
       frxDBDataset10.DataSet := dataset.Dataset10;
       frxDBDataset11.DataSet := dataset.Dataset11;

      // frxReport1.ShowReport;
    finally
          template.Free;
    end;



end;

procedure TfrmKadirRapor.rapor1Data1(dataset : TDataSetKadir ; kod , dosya : string);
var
    template : TStream;
    yol ,_server : string;
    i : integer;
begin

    frxReport1.Variables.AddVariable('Sabitler','Donem','ÞUBAT');

     ADO_RAPORLAR1.Active := true;
     ADO_RAPORLAR1.Locate('raporkodu',kod,[]);

  //   memo.DataSource := ADO_RAPORLAR;
         frmKadirRapor.Caption := dosya;
     d := dosya;
(*     _server := server;
     data := dataset;
     i := pos('\',_server);
     _server := copy(_server,1,i-1);
     yol := '\\' + _server + '\Raporlar' + dosya;
     dosyaName := yol;
     frxReport1.LoadFromFile(yol,true);
     frxDBDataset1.DataSet := dataset;
  *)
   //  server1\medivizyon

  //   yol :=  ADO_RAPORLAR.fieldbyname('raporAdi').AsString;

    template := ADO_RAPORLAR1.CreateBlobStream(ADO_RAPORLAR1.FieldByName('Rapor'), bmRead);
    template.Position := 0;
    try
       frxReport1.LoadFromStream(template);
       frxDBDataset1.DataSet := dataset.Dataset1;
       frxDBDataset2.DataSet := dataset.Dataset2;
       frxDBDataset3.DataSet := dataset.Dataset3;
       frxDBDataset4.DataSet := dataset.Dataset4;
       frxDBDataset5.DataSet := dataset.Dataset5;
       frxDBDataset6.DataSet := dataset.Dataset6;
       frxDBDataset7.DataSet := dataset.Dataset7;
       frxDBDataset8.DataSet := dataset.Dataset8;
       frxDBDataset9.DataSet := dataset.Dataset9;
       frxDBDataset10.DataSet := dataset.Dataset10;
       frxDBDataset11.DataSet := dataset.Dataset11;

      // frxReport1.ShowReport;
    finally
          template.Free;
    end;



end;



procedure TfrmKadirRapor.btnSendClick(Sender: TObject);
begin
   //  frxDBDataset1.DataSet := data;
     frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
     frxReport1.PrintOptions.ShowDialog := True;

(*
     if _printer = 'fis'
     Then begin
          frxReport1.PrintOptions.Printer := 'fis';
          frxReport1.SelectPrinter;
     End;
  *)

//     frxResources.
//     Get('Turkish.frc');
//     .LoadFromFile('Turkish.frc');                 
     frxReport1.DesignReport;
     close;


end;

function TfrmKadirRapor.frxDesigner1SaveReport(Report: TfrxReport;
SaveAs: Boolean): Boolean;
var
   template : TStream;
begin
//    showmessage('x','','','info');
 //   Report.SaveToFile(dosyaName);

    template := TMemoryStream.Create;
    template.Position := 0;
    Report.SaveToStream(template);

    if ADO_RAPORLAR.Active = true
    Then Begin

        ADO_RAPORLAR.Edit;
        try
           ADO_RAPORLAR.DisableControls;
           ADO_RAPORLAR.FieldByName('raporAdi').AsString := d;
           (ADO_RAPORLAR.FieldByName('rapor') as TBlobField).LoadFromStream(template);
           ADO_RAPORLAR.Post;
        finally
               ADO_RAPORLAR.EnableControls;
        end;

    End
    Else
    Begin

        ADO_RAPORLAR1.Edit;
        try
           ADO_RAPORLAR1.DisableControls;
           ADO_RAPORLAR1.FieldByName('raporAdi').AsString := d;
           (ADO_RAPORLAR1.FieldByName('rapor') as TBlobField).LoadFromStream(template);
           ADO_RAPORLAR1.Post;
        finally
               ADO_RAPORLAR1.EnableControls;
        end;


    End;


    //       if ADOConnection2.InTransaction
//       then ADOConnection2.CommitTrans;



end;

function TfrmKadirRapor.frxDesigner1LoadReport(Report: TfrxReport): Boolean;
var
   template : TStream;
begin

   // showmessage('y','','','info');

(*
    template := TMemoryStream.Create;
    template.Position := 0;
    Report.SaveToStream(template);
    ADO_RAPORLAR.Edit;
try
   ADO_RAPORLAR.DisableControls;
   (ADO_RAPORLAR.FieldByName('rapor') as TBlobField).LoadFromStream(template);
   ADO_RAPORLAR.Post;
finally
       ADO_RAPORLAR.EnableControls;
end;
*)
end;


procedure TfrmKadirRapor.btnOnIzleClick(Sender: TObject);
begin
    // frxDBDataset1.DataSet := data;
     frxReport1.PreviewOptions.Buttons := [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator];
     frxReport1.PrintOptions.ShowDialog := True;
 (*
     if _printer = 'fis'
     Then begin
          frxReport1.PrintOptions.Printer := 'fis';
          frxReport1.SelectPrinter;
     End;
   *)

     frxReport1.ShowReport;
     close;

end;

procedure TfrmKadirRapor.FormShow(Sender: TObject);
begin
 (*
   if UserRight('RAPORLAR', 'Dizayn Modu') = True
   then begin
          btnSend.Visible := True;
   End Else btnSend.Visible := False;

   if UserRight('RAPORLAR', 'Ön Ýzleme') = True
   then begin
          btnOnIzle.Visible := True;
   End Else btnOnIzle.Visible := False;
   *)

end;

procedure TfrmKadirRapor.btnYazdirClick(Sender: TObject);
var
  durum : boolean;
begin
//     frxReport1.PreviewOptions.Buttons := [pbPrint];

    (*
     if _printer <> ''
     Then begin
          frxReport1.PrintOptions.ShowDialog := false;
          frxReport1.PrintOptions.Printer := _printer;
          frxReport1.SelectPrinter;
//          frxReport1.PrintOptions.Copies := HastaKabulBarkodAdedi(durum);
     End;
      *)

     frxReport1.PrepareReport;
     frxReport1.Print;
     close;



end;

end.
