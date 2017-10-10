unit FScxGrid;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DB, ADOdb, DBGrids, ExtCtrls,Menus,StrUtils,
  dxSkinsCore, dxSkinsDefaultPainters, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid,cxGridExportLink,
  cxGridStrs,cxFilterConsts,cxFilterControlStrs;


Const
 Eleman = 13;
 MenuItemsList  : array[0..Eleman] of string = ('Tüm Gruplarý Aç',
                                                'Tüm Gruplarý Kapat',
                                                'Filitre Satýrý Göster',
                                                'Filitre Satýrý Gizle',
                                                'Excele Aktar',
                                                'Dip Toplam Göster',
                                                'Dip Toplam Gizle',
                                                'Dip Count Göster',
                                                'Dip Count Gizle',
                                                'Otomatik Dizayn',
                                                'Secilileri Renklendir',
                                                'Secili Renk Ýptal',
                                                'Footer Renklendir',
                                                'Footer Renk Kaldýr');


type
  TFScxGridDBTableView = class(TcxGridDBTableView)
  private
     FSelectedValueSum : Double;
     FSelectedValueAvg : Double;
     FEnBuyukValue : Double;
     procedure DoSelectionChanged;override;
     procedure DoCustomDrawCell(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);override;

     procedure RenkVer;
     procedure T1Click(Sender: TObject);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);
  published
    { Published declarations }
     property SelectedValueSum    : Double read FSelectedValueSum write FSelectedValueSum;
     property SelectedValueAvg    : Double read FSelectedValueAvg write FSelectedValueAvg;
     property EnBuyukValue    : Double read FEnBuyukValue write FEnBuyukValue;
  end;


Type
  TFScxGrid = class(TcxGrid)
  private
    { Private declarations }
    PMenu: TPopupMenu;
    FPopup : TPopupMenu;
    FExportFileName : string;
    FDefaultPopup : Boolean;
    FSelectedValue : Double;
    procedure T1Click(Sender: TObject);
    function MenuCreate : TPopupMenu;
//    procedure GridDizayn(GroupKind,FooterKind : TcxSummaryKind);
    procedure GridCustomDrawCell(
               Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
               AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridStylesGetFooterStyle(
              Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
              AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
    procedure PopupMenuPopup(Sender: TObject);
    procedure setPopup(const value :TPopupMenu);
    procedure setDefaultPopup(const value : Boolean);
  protected
    { Protected declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent);override;
    procedure AfterConstruction; override;
    destructor  Destroy; override;
    procedure GridDizayn(GroupKind,FooterKind : TcxSummaryKind);
    procedure ExceleGonder;
  published
    { Published declarations }
    property Popup    : TPopupMenu read FPopup write setPopup;
    property ExportFileName    : string read FExportFileName write FExportFileName;
    property DefaultPopup    : Boolean read FDefaultPopup write setDefaultPopup;
    property SelectedValue    : Double read FSelectedValue write FSelectedValue;

  end;

var
  Liste : TcxGridDBTableView;
  FooterStyle : TcxStyle;
  SeciliStyle : TcxStyle;
  ColorD : TColorDialog;
  SelectedSum : Double;
  FindText : string;
implementation


procedure TFScxGrid.setDefaultPopup(const value :Boolean);
var
  i : integer;
  it : TMenuItem;
begin
  FDefaultPopup := value;
  if FDefaultPopup then
     PMenu := MenuCreate;
  PopupMenu := PMenu;
end;


procedure TFScxGrid.setPopup(const value :TPopupMenu);
var
  i : integer;
  it : TMenuItem;
begin
  if FDefaultPopup
  Then  PMenu := MenuCreate
  else PMenu := TPopupMenu.Create(self);
  
  FPopup := value;
  if FPopup <> nil
  then Begin
     for i := 0 to FPopup.Items.Count - 1 do
     begin
       it := TMenuItem.Create(nil);
       it.Caption := FPopup.Items[i].Caption;
       it.Tag := FPopup.Items[i].Tag;
       it.OnClick := FPopup.Items[i].OnClick;
       PMenu.Items.Add(it);
     end;
  end;
  PopupMenu := PMenu;
end;


constructor TFScxGridDBTableView.Create(AOwner: TComponent);

begin
  inherited Create(AOwner);

end;


procedure TFScxGridDBTableView.DoCustomDrawCell(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
begin
    if Findtext <> ''
    Then
    if (AViewInfo.Text = FindText)
     Then ACanvas.Brush.Color := clYellow;

  inherited;
end;



procedure TFScxGridDBTableView.RenkVer;
begin
  (*
   for i := 0 to self.Controller.SelectedRowCount - 1 do
   begin
      for y := 0 to self.Controller.SelectedColumnCount - 1 do
      begin
        ri := self.Controller.SelectedRows[i].RecordIndex;
        ci := self.Controller.SelectedColumns[y].Index;

        self.DataController.GridView.Styles.s

        if (self.Controller.SelectedColumns[y].DataBinding.ValueTypeClass = TcxIntegerValueType) or
           (self.Controller.SelectedColumns[y].DataBinding.ValueTypeClass = TcxFloatValueType) or
           (self.Controller.SelectedColumns[y].DataBinding.ValueTypeClass = TcxCurrencyValueType)
        Then begin
         //if TcxGridDBTableView(Sender).DataController.GetValue(ri,ci).asfloat <> null then
           SelectedSum := SelectedSum + self.DataController.GetValue(ri,ci);
           if EnBuyuk < self.DataController.GetValue(ri,ci) Then EnBuyuk := self.DataController.GetValue(ri,ci);
        end;   
      end;
   end;
     *)
end;

constructor TFScxGrid.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
//  PMenu := MenuCreate;
 // PopupMenu := PMenu;
  ColorD := TColorDialog.Create(nil);
  FooterStyle := TcxStyle.Create(nil);
  SeciliStyle := TcxStyle.Create(nil);
  Self.ShowHint := True;
end;

procedure TFScxGrid.AfterConstruction;
begin
  inherited AfterConstruction;

end;

destructor TFScxGrid.Destroy;
begin
  ColorD.free;
  FooterStyle.Free;
  SeciliStyle.Free;
  inherited;
end;

procedure TFScxGrid.PopupMenuPopup(Sender: TObject);
begin

end;

procedure TFScxGrid.GridCustomDrawCell(
               Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
               AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Colindex : Integer;
begin
 // Colindex := TcxGridDBTableView(TFScxGrid(self).ActiveView).Controller.FocusedColumnIndex;
 // if Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 4) = '1' then
 //   ACanvas.Brush.Color := clRed;

   if(AViewInfo.Selected) and (Screen.ActiveControl = Sender.Site)
   then
   begin
//      ACanvas.Brush.Color := clAqua;
    //  ACanvas.Font.Color := clFuchsia;

end;
end;


procedure TFScxGridDBTableView.DoSelectionChanged;
var
  i,y,ci,ri : Integer;
  EnBuyuk : double;
begin
   SelectedSum := 0;
   EnBuyuk := 0;
   for i := 0 to self.Controller.SelectedRowCount - 1 do
   begin
      for y := 0 to self.Controller.SelectedColumnCount - 1 do
      begin
        ri := self.Controller.SelectedRows[i].RecordIndex;
        ci := self.Controller.SelectedColumns[y].Index;
        if (self.Controller.SelectedColumns[y].DataBinding.ValueTypeClass = TcxIntegerValueType) or
           (self.Controller.SelectedColumns[y].DataBinding.ValueTypeClass = TcxFloatValueType) or
           (self.Controller.SelectedColumns[y].DataBinding.ValueTypeClass = TcxCurrencyValueType)
        Then begin
         //if TcxGridDBTableView(Sender).DataController.GetValue(ri,ci).asfloat <> null then
           SelectedSum := SelectedSum + self.DataController.GetValue(ri,ci);
           if EnBuyuk < self.DataController.GetValue(ri,ci) Then EnBuyuk := self.DataController.GetValue(ri,ci);
        end;   
      end;
   end;
  // TFScxGrid(Self ).Hint := formatFloat('#,###.##',SelectedSum);
  // Self.ShowHint := True;
   EnBuyukValue := EnBuyuk;
   SelectedValueSum := SelectedSum;
   if (self.Controller.SelectedRowCount* self.Controller.SelectedColumnCount) > 0
   Then SelectedValueAvg := SelectedValueSum / (self.Controller.SelectedRowCount* self.Controller.SelectedColumnCount);
   inherited;

end;

procedure TFScxGrid.GridStylesGetFooterStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   AStyle := FooterStyle;
end;

procedure TFScxGrid.ExceleGonder;
var
 SD : TSaveDialog;
begin
   SD := TSaveDialog.Create(nil);
   SD.FileName := ifThen(Self.ExportFileName = '',GetParentForm(Self).Name,Self.ExportFileName) + '.XLS';
   SD.Execute;
   ExportGridToExcel(SD.FileName, self);
   SD.Free;
end;
procedure TFScxGrid.GridDizayn(GroupKind,FooterKind : TcxSummaryKind);
var
  ColonIndex : Integer;
  Bw,w : Integer;
begin
   inherited;
   // TcxGridDBTableView(TFScxGrid(self).ActiveView).OnCustomDrawCell := GridCustomDrawCell;
   // TcxGridDBTableView(TFScxGrid(self).ActiveView).OnSelectionChanged :=  SelectionChanged;

    if FooterKind = skNone
    Then begin
     TcxGridDBTableView(TFScxGrid(self).ActiveView).OptionsView.Footer := false;
     TcxGridDBTableView(TFScxGrid(self).ActiveView).OptionsView.GroupFooters := gfInvisible;
    end
    else
    begin
     TcxGridDBTableView(TFScxGrid(self).ActiveView).OptionsView.Footer := True;
     TcxGridDBTableView(TFScxGrid(self).ActiveView).OptionsView.GroupFooters := gfVisibleWhenExpanded;
    end;
    if FooterKind = skNone then Exit;

    for ColonIndex := 0 to TcxGridDBTableView(TFScxGrid(self).ActiveView).VisibleColumnCount - 1 do
    begin
        Bw := TcxGridDBTableView(TFScxGrid(self).ActiveView).Controller.GridView.ViewInfo.HeaderViewInfo[TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].Index].GetBestFitWidth;
        w := TcxGridDBTableView(TFScxGrid(self).ActiveView).Controller.GridView.ViewInfo.HeaderViewInfo[TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].Index].Width;
        if Bw > w Then TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].Width := Bw else TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].ApplyBestFit;
        TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].HeaderAlignmentHorz := taCenter;
        if TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].DataBinding.Field.DataType in [ftInteger,ftFloat,ftCurrency]
        then begin
          TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].Summary.FooterFormat:='#,###.##';
          TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].Summary.FooterKind := FooterKind;
          TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].Summary.GroupFooterKind := FooterKind;
          TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[ColonIndex].Summary.GroupFooterFormat := '#,###.##';
        end;
    end;
end;

function TFScxGrid.MenuCreate : TPopupMenu;
var
  i : Integer;
  MenuItem : TMenuItem;
  PMenu_ : TPopupMenu;
begin
  PMenu_ := TPopupMenu.Create(self);
  for i := 0 to Eleman do
  begin
    MenuItem := TMenuItem.Create(PMenu_);
    MenuItem.Caption := MenuItemsList[i];
    MenuItem.Tag := i;
    if i in [6,8,13] then MenuItem.Visible := False;
    MenuItem.OnClick := T1Click;
    PMenu_.Items.Add(MenuItem);
  end;
  Result := PMenu_;
end;


procedure TFScxGridDBTableView.T1Click(Sender: TObject);
var
  SD : TSaveDialog;
  Kind : TcxSummaryKind;
  colonindex,GroupCount,_index : Integer;
begin
  inherited;


end;

procedure TFScxGrid.T1Click(Sender: TObject);
var
  SD : TSaveDialog;
  Kind : TcxSummaryKind;
  colonindex,GroupCount,_index : Integer;
begin
  inherited;
 colonindex := TcxGridDBTableView(TFScxGrid(self).ActiveView).Controller.FocusedColumnIndex;
 GroupCount := TcxGridDBTableView(TFScxGrid(self).ActiveView).GroupedColumnCount;
 _index := GroupCount + colonindex;

  case TMenuItem(Sender).Tag of
  0 : TcxGridDBTableView(TFScxGrid(self).ActiveView).DataController.Groups.FullExpand;
  1 : TcxGridDBTableView(TFScxGrid(self).ActiveView).DataController.Groups.FullCollapse;
  2 : TcxGridDBTableView(TFScxGrid(self).ActiveView).FilterRow.Visible := True;
  3 : TcxGridDBTableView(TFScxGrid(self).ActiveView).FilterRow.Visible := False;
  4 : begin
         SD := TSaveDialog.Create(nil);
         SD.FileName := ifThen(Self.ExportFileName = '',GetParentForm(Self).Name,Self.ExportFileName) + '.XLS';
         SD.Execute;
         ExportGridToExcel(SD.FileName, self);
      end;
  5 : begin
        Kind := skSum;
        GridDizayn(skNone,Kind);
        TPopupMenu(PMenu).Items[TMenuItem(Sender).Tag].Visible := false;
        TPopupMenu(PMenu).Items[6].Visible := True;
      end;
  6 : begin
        Kind := skNone;
        GridDizayn(skNone,Kind);
        TPopupMenu(PMenu).Items[TMenuItem(Sender).Tag].Visible := false;
        TPopupMenu(PMenu).Items[5].Visible := True;
      end;
  7,8 : begin
            if TMenuItem(Sender).Tag = 7 then
            begin
              Kind := skCount;
              TPopupMenu(PMenu).Items[TMenuItem(Sender).Tag].Visible := false;
              TPopupMenu(PMenu).Items[8].Visible := True;
            end
            else
            begin
              Kind := skNone;
              TPopupMenu(PMenu).Items[TMenuItem(Sender).Tag].Visible := false;
              TPopupMenu(PMenu).Items[7].Visible := True;
            end;

            TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[_index].Summary.GroupFooterKind := Kind;
            TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[_index].Summary.FooterKind := Kind;
            TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[_index].Summary.GroupFooterFormat := '# Kayýt';
            TcxGridDBTableView(TFScxGrid(self).ActiveView).Columns[_index].Summary.FooterFormat := '# Kayýt';
      end;
  9 : begin
        GridDizayn(skSum,skSum);
      end;
  10 : begin
            FindText := InputBox('Ara','Aranacak Metin','');
            SeciliStyle.Color := clYellow;
            TFScxGridDBTableView(TFScxGrid(self).ActiveView).DataController.Refresh;

        //  TcxGridDBTableView(TFScxGrid(self).ActiveView).OnCustomDrawCell := GridCustomDrawCell;
         // TcxGridDBTableView(TFScxGrid(self).ActiveView).OnSelectionChanged := SelectionChanged;
      end;
  11 : begin
         // TcxGridDBTableView(TFScxGrid(self).ActiveView).OnCustomDrawCell := nil;
      end;
  12,13 :
      begin
            if TMenuItem(Sender).Tag = 12 then
            begin
              TPopupMenu(PMenu).Items[TMenuItem(Sender).Tag].Visible := false;
              TPopupMenu(PMenu).Items[13].Visible := True;
              ColorD.Execute;
              FooterStyle.Color := ColorD.Color;
              TcxGridDBTableView(TFScxGrid(self).ActiveView).Styles.Footer := FooterStyle;
            end
            else
            begin
              TPopupMenu(PMenu).Items[TMenuItem(Sender).Tag].Visible := false;
              TPopupMenu(PMenu).Items[12].Visible := True;
              TcxGridDBTableView(TFScxGrid(self).ActiveView).Styles.Footer.RestoreDefaults; //OnGetFooterStyle := nil;
            end;

      end;


end;

end;

end.
