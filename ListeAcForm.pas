unit ListeAcForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  ExtCtrls, Buttons, Menus, cxButtons, ImgList, dxSkinsCore,kadirType,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, SQLMemMain;



type
  TfrmListeAc = class(TForm)
    DataSource1: TDataSource;
    pnlTitle: TPanel;
    pnlOnay: TPanel;
    txtinfo: TLabel;
    ImajListe: TcxImageList;
    Liste: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btnSec1: TcxButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    secimler: TSQLMemTable;
    secimler_DataSource: TDataSource;
    secimList: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    procedure dizaynEt(Fields,FieldsW,FieldsB : TStrings ; filtercol : integer;GrupCol : integer; Grup : Boolean;Biriktir :Boolean = false);
    procedure ListeKeyDown(Sender: TObject; var Key: Word ; Shift: TShiftState);
    procedure KeyPressGridF(Sender: TcxGridDBTableView; var Key: Char ; var arama : string ; colum : integer ; F : Boolean);
    procedure ListeKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bntSecClick(Sender: TObject);
    procedure btnSec1Click(Sender: TObject);
    procedure ListeDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Skin(SkinName : string);

  private
    { Private declarations }
  public
     tus : integer;
     strings : ArrayListeSecimler;
       { Public declarations }
  end;


var
  frmListeAc: TfrmListeAc;
  arama , aramatext : string;
  Fcol,count : integer;
  Btus : integer;
  _Biriktir_ : Boolean;


implementation

{$R *.dfm}
procedure TfrmListeAc.Skin(SkinName : string);
begin
  cxGrid1.LookAndFeel.SkinName := SkinName;
  cxGrid2.LookAndFeel.SkinName := SkinName;
  btnSec1.LookAndFeel.SkinName := SkinName;

end;

procedure TfrmListeAc.dizaynEt(Fields,FieldsW,FieldsB : TStrings ; filtercol : integer;GrupCol : integer ; Grup : Boolean;Biriktir : Boolean = false);
var
  colon : TcxGridDBColumn;
  colonS : TcxGridDBColumn;
  sc : integer;
  x : integer;
  ListeW : integer;
  ListeH : integer;
begin
 //   strings := TStrings.Create;
    secimler.Active := false;
    secimler.EmptyTable;
    secimler.Active := True;

    _Biriktir_ := Biriktir;
    Btus := 27;
    Fcol := filterCol;
    count := Fields.Count;
    ListeW := 0;
    for x := 0 to count - 1 do
    begin
       colon := (Liste as TcxGridDBTableView).CreateColumn;
       if grup = True then
       if colon.Index = GrupCol then colon.GroupIndex := 0;
       colon.DataBinding.FieldName := Fields[x];
       try colon.Width := strtoint(FieldsW[x]) except colon.Width := 50 end;
       try colon.Caption := Fieldsb[x] except colon.Caption := '' end;;
       ListeW := ListeW + colon.Width;
    end;

  if Biriktir then
    for x := 0 to count - 1 do
    begin
       colonS := secimList.CreateColumn;
       colonS.DataBinding.FieldName := secimler.Fields[x].FieldName;
       colonS.Caption := Fieldsb[x];
       colonS.Width := strtoint(FieldsW[x]);
    end
    else
    cxGrid2.Visible := false;


    sc := liste.DataController.RowCount + 5;
    listeH := (sc * 20) + pnlTitle.Height + pnlOnay.Height;
    if ListeH > 500 then ListeH := 500;

    Liste.OptionsView.GroupByBox := Grup;
//    cxGrid1.Width := ListeW + 10;
    Width := ListeW + 30;
    Height := ListeH + 30;

end;

procedure TfrmListeAc.ListeDblClick(Sender: TObject);
var
  i ,r : integer;

begin

      SetLength(strings,1);
      r := Liste.ViewData.DataController.GetFocusedRecordIndex;

      if _Biriktir_ = True then
      begin
        if not secimler.Locate('kolon1',Liste.DataController.GetValue(r ,0),[loCaseInsensitive])
        then begin
          secimler.Append;
          for i := 0 to count - 1 do begin
           secimler.FieldByName(secimler.Fields[i].FieldName).AsString := Liste.DataController.GetValue(r ,i);
          end;
           secimler.Post;
        end;
      end
      else
      begin
         try
           strings[0].kolon1 := Liste.ViewData.DataController.Values[r ,0];
           strings[0].kolon2 := Liste.ViewData.DataController.Values[r ,1];
           if Liste.ColumnCount > 2 then
           strings[0].kolon3 := Liste.ViewData.DataController.Values[r ,2];
           if Liste.ColumnCount > 3 then
           strings[0].kolon4 := Liste.ViewData.DataController.Values[r ,3];
         except
         end;

         aramaText := '';
         arama := '';
         Btus := 0;
         close;

      end;


end;

procedure TfrmListeAc.ListeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if not _Biriktir_
  then
  if key = 13
  Then Begin
    // key := 0;
     btnSec1.Click;
     key := 0;
  End;


  if key = 27
  then Btus := 27;

end;



procedure TfrmListeAc.KeyPressGridF(Sender: TcxGridDBTableView; var Key: Char ; var arama : string ; colum : integer ; F : Boolean);
var
  s : string;
begin
 
  if Key  = 'ý' Then Key := 'I';
  if Key  = 'i' Then Key := 'Ý';

  s := AnsiUpperCase(key);

  //S := KEY;
  if s[1] in [#13, #10, #9, #14] Then exit;
  //['A'..'Z', '0'..'9', 'Ç','Þ','Ð','Ö','Ü','Ý']

  if (key in [#27,#13])
  Then Begin
    aramaText := '';
    Caption := aramatext;
    if F = True
    Then Begin
       sender.DataController.Filter.Root.Clear;
     //  sender.DataController.Filter.Active := False;
     //  sender.DataController.Filter.Active := True;
    End;
    Btus := 27;
    exit;
  End;


  Caption := aramatext;
  if (key in [#8])
  Then //begin
         if (Length(aramaText) > 0)
         Then aramaText := Copy(aramaText, 1, Length(aramaText) - 1)
         else aramaText := ''
  else
    aramaText := aramaText + s;

   Caption := aramatext;

   if F = True
   Then Begin
   sender.DataController.Filter.Active := False;
   sender.DataController.Filter.Active := True;
   sender.DataController.Filter.Root.Clear;
 //  sender.DataController.Filter.Options := [fcoCaseInsensitive];
   sender.DataController.Filter.Root.AddItem(sender.Columns[colum],
   foLike, aramaText+'%' , aramaText);
   sender.DataController.Filter.Refresh;
   End;


   s := arama + '*' + ';*' +arama + '*';
   arama := aramatext;


end;


procedure TfrmListeAc.ListeKeyPress(Sender: TObject; var Key: Char);
begin


   KeyPressGridF(Liste,Key,arama,Fcol,True);

end;

procedure TfrmListeAc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = 27
  then Begin
    Btus := 27;
//    Liste.ViewData.DataController.FocusedRecordIndex := -1;
    close;
  End;

  if Key = 13
  Then Begin
    // key := 0;
     btnSec1.Click;
     key := 0;
  End;


end;

procedure TfrmListeAc.FormShow(Sender: TObject);
begin
  cxGrid1.SetFocus;
end;

procedure TfrmListeAc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tus := Btus;
  // frmListeAc := nil;
end;

procedure TfrmListeAc.bntSecClick(Sender: TObject);
begin
  aramaText := '';
  arama := '';
  close;
end;

procedure TfrmListeAc.btnSec1Click(Sender: TObject);
var
  i , c : integer;
begin
   c := Liste.Controller.SelectedRowCount;
   //r := Liste.ViewData.DataController.GetFocusedRecordIndex;
   SetLength(strings,0);
   SetLength(strings,c);

    if _Biriktir_  = False then
       for i := 0 to c - 1 do
       begin
         Application.ProcessMessages;
         try
           strings[i].kolon1 := Liste.DataController.GetValue(
                                          Liste.Controller.SelectedRows[i].RecordIndex,0);
           strings[i].kolon2 := Liste.DataController.GetValue(
                                          Liste.Controller.SelectedRows[i].RecordIndex,1);
           strings[i].kolon3 := Liste.DataController.GetValue(
                                          Liste.Controller.SelectedRows[i].RecordIndex,2);
           strings[i].kolon4 := Liste.DataController.GetValue(
                                          Liste.Controller.SelectedRows[i].RecordIndex,3);
         except
         end;
       end
    else begin
       SetLength(strings,secimler.RecordCount);
       secimler.First;
       i := 0;
       while not secimler.Eof do
       begin
         try
           strings[i].kolon1 := secimler.FieldByName('kolon1').AsString;
           strings[i].kolon2 := secimler.FieldByName('kolon2').AsString;
           strings[i].kolon3 := secimler.FieldByName('kolon3').AsString;
           strings[i].kolon4 := secimler.FieldByName('kolon4').AsString;
         except
         end;
         i := i + 1;
         secimler.Next;
       end;

    end;


   aramaText := '';
   arama := '';
   Btus := 0;
   close;

end;

end.
