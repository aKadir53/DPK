unit KadirLabel;

interface

uses
  SysUtils, Classes, Controls, StdCtrls,Dialogs,Messages,cxButtonEdit,
  forms,adodb,ImgList,Para,strUtils,ExtCtrls, Math,db,buttons, Types, kadirType,cxButtons,
  ListeAcForm,registry,dxNavBarBase, dxNavBar,dxNavBarCollns,ActnList,Menus,ActnMan, Vcl.Graphics,
  cxTextEdit,cxCalendar,cxGrid,ComCtrls,KadirMenus,cxGridDBTableView,cxGridDBBandedTableView,
  cxNavigator,cxGridCustomTableView, cxGridLevel,XSBuiltIns,DateUtils,System.Character,
  cxGridCustomView,cxCustomData,cxImageComboBox,FScxGrid,cxFilter,cxGridExportLink,ShellApi,Winapi.Windows,
  cxCheckBox,cxEdit,cxGroupBox,dxLayoutContainer,cxGridStrs, cxFilterConsts,cxCheckGroup,
  cxFilterControlStrs,cxGridPopupMenuConsts,cxClasses,IdHttp,System.Variants;


type
  TRenk = (Yellow, Red);
  TRenkChangeEvent = PROCEDURE(Sender: TObject; Renk: TRenk) OF OBJECT;


  TGoster = (fgEvet,fgHayir);
  TDonusum = (dsRakamToYazi,dsDoktorKodToAdi,dsBransKoduToadi,dsHizmetKoduToAdi,dsTckimlikToHasta,dsTanimToadi);
  TPanelSonuc = (psYan,psDik);
  TTarihValueTip = (tvDate,tvTime,tvString,tvDateTime);
  TShowTip = (stShow,stModal);
  TKarakterTip = (ktNone,ktRakam,ktHarf);
  TLoginInOut = (lgnIn,lgnOut);
  TListeAcTableTip = (tpTable,tpSp);
  TCheckGrupSiralamaTip = (value,display);
  TimageComboKadirFilterSet = (fsEvetHayýr,fsGunler,fsAylar,fsA_Z,fs0_9,fsCinsiyet,
                               fsKanGrubu,fsUyruk,fsMedeniHal,fsOdemeTip,fsParaBirim,
                               fsDoktorlar,fsBranslar,fsHemsireler,fsSirketler,
                               fsVatandasTip,fsAktifPasif,fsDiyalizAktifPasif,fsSgkDurumTip,
                               fsSigortaliTur,fsDevKurum,fsNone);


  THb = class(TPersistent)
  private
   FDosyaNo,FTc : string;
   protected
   public
  published
    property DosyaNo : string read FDosyaNo write FDosyaNo;
    property Tc : string read FTc write FTc;
  end;

  TButtonlar = class(TPersistent)
   private
     FSecButton : string;
     FEditButton: string;
   protected
   public

   published
    property SecButton : string read FSecButton write FSecButton;
    property EditButton : string read FEditButton write FEditButton;
  end;



type
   THastaAdiFont = TFont;
   THastaAdiFontChangeEvent = PROCEDURE(Sender: TObject; HastaAdiFont: THastaAdiFont) OF OBJECT;

  THastaBilgileriGroup = class(TGroupBox)
     HastaAdi : TEdit;
     HastaSoyadi : TEdit;
   private
     //FHastaAdi : TEdit;
     FTcKimlik : string;
     FDosyaNo : string;
     FHb : THb;
     //FHHastaAdiFont : THastaAdiFont;
     FHastaAdiFont : THastaAdiFont;
     FHastaSoyaAdi : THastaAdiFont;
     FOnHastaAdiFontChange : THastaAdiFontChangeEvent;
//     procedure WMFontChange(var Message: TMessage); message WM_FONTCHANGE;

     procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;

   procedure SetHastaAdiFont (const value : Tfont);
   function GetHastaAdiFont : Tfont;
   procedure SetHastaSoyadiFont (const value : Tfont);
   function GetHastaSoyadiFont : Tfont;
   procedure SetHb(const Value: THb);

   protected
   public
     CONSTRUCTOR Create(AOwner: TComponent); override;
  //   destructor Destroy; override;
   published
    property TcKimlik : string read FTcKimlik write FTcKimlik;
    property DosyaNo : string read FDosyaNo write FDosyaNo;
    property Hb : THb read FHb write setHb;
  //  property GHastaAd : TEdit read FHastaAd write setHastaAdi;
    property HHastaAdiFont : THastaAdiFont read GetHastaAdiFont write SetHastaAdiFont;
    property HHastaSoyadiFont : THastaAdiFont read GetHastaSoyadiFont write SetHastaSoyadiFont;

    property OnHastaAdiFontChange: THastaAdiFontChangeEvent read FOnHAstaAdiFontChange write FOnHastaAdiFontChange;
//    property HastaSoyad : TEdit read HastaSoyadi write HastaSoyadi;
  end;

  TdxNavBarKadirItem = class(TdxNavBarItem)
  private
    F_ShowTip_ : integer;
    F_FormId : integer;
   protected
   public
   published
    property _ShowTip_: integer read F_ShowTip_ write F_ShowTip_;
    property _FormId: integer read F_FormId write F_FormId;
  end;




  TMainMenuKadir = class(TdxNavBar)
   private
     FTimerShow : TTimer;
     FTimerGizle : TTimer;
   //  FActionManager : TActionManager;
     FConn : TADOConnection;
     FKullaniciAdi : string;
     FTagC : integer;
     FSlite : integer;
     FpressItem : TdxNavBarItem;
     FtargetGroup : TdxNavBarGroup;
     FProgramTip : string;
     FLisansTip : integer;
     //FOnHastaAdiFontChange : THastaAdiFontChangeEvent;
   protected

   public
      MenuId : integer;
     procedure MenuGetir;
     function MenuClick(_tag_ : integer) : integer;
     procedure LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
     procedure DoLinkMouseDown(Link: TdxNavBarItemLink); override;

     procedure DragOver(Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean); override;
     procedure DoEndDrag(Target: TObject; X, Y: Integer); override;
     procedure DragDrop(Source: TObject; X, Y: Integer); override;
     // LinkPress(Sender: TObject; ALink: TdxNavBarItemLink);

     procedure TimerShowTimer(Sender: TObject);
     procedure TimerGizleTimer(Sender: TObject);
     procedure Gizle;
     procedure Goster;
     function GetTagC : integer;
     procedure setTagC(const value : integer);
     procedure ActionListExecute(Sender: TObject);
     function TusKontrol(Tus : string) : integer;
   published
    property TimerShow: TTimer read FTimerShow write FTimerShow;
    property TimerGizle: TTimer read FTimerGizle write FTimerGizle;
 //   property ActionList : TActionManager read FActionManager write FActionManager;
    property KullaniciAdi : string read FKullaniciAdi write FKullaniciAdi;
    property TagC : integer read GetTagC write setTagC;
    property Slite : integer read FSlite write FSlite;
    property Conn : TADOConnection read FConn write FConn;
    property ProgramTip : string read FProgramTip write FProgramTip;
    property LisansTip : integer read FLisansTip write FLisansTip;

 //   property OnHastaAdiFontChange: THastaAdiFontChangeEvent read FOnHAstaAdiFontChange write FOnHastaAdiFontChange;
//    property HastaSoyad : TEdit read HastaSoyadi write HastaSoyadi;
  end;





  TKadirHastaBilgiPanel = class(TPanel)
    private
      FGiris : string;
      FSonuc : TPanelSonuc;
      FConn : TADOConnection;
      FOnRenkChange: TRenkChangeEvent;
      FOnDonustur : TNotifyEvent;
      //FOnGuncelle : TNotifyEvent;
    protected
  //    function CihazTestKodu_To_LisTestKodu(code : string) : string;
    public
//      CONSTRUCTOR Create(AOwner: TComponent); override;
//      destructor Destroy; override;
      function Donustur : string;


     published
       property Conn : TADOConnection read FConn write FConn;
       property OnDonustur : TNotifyEvent read FOnDonustur write FOnDonustur;
       PROPERTY OnRenkChange: TRenkChangeEvent read FOnRenkChange write FOnRenkChange;
       property Giris : string read FGiris write FGiris;
       property Donusum : TPanelSonuc read FSonuc write FSonuc;
  end;

  TNotifyEventDonustur = procedure(Sender: TObject ; Giris : string) of object;

  TKadirLabel = class(TLabel)
    private
      FGiris : string;
      FDonusum : TDonusum;
      FConn : TADOConnection;
      FOnRenkChange: TRenkChangeEvent;
      FOnDonustur : TNotifyEventDonustur;
      //FOnGuncelle : TNotifyEvent;
    protected
  //    function CihazTestKodu_To_LisTestKodu(code : string) : string;
    public
      CONSTRUCTOR Create(AOwner: TComponent); override;
      destructor Destroy; override;
      function Donustur : string;
      function GetGiris : string;
      procedure setGiris(const value : string);

     published
       property Donusum : TDonusum read FDonusum write FDonusum;
       property Conn : TADOConnection read FConn write FConn;
       property OnDonustur : TNotifyEventDonustur read FOnDonustur write FOnDonustur;
       PROPERTY OnRenkChange: TRenkChangeEvent read FOnRenkChange write FOnRenkChange;
       property Giris : string read getGiris write setGiris;
  end;


    Tlogin = class(TComponent)
      private
       FActive : Boolean;
       FKullanici : string;
       FLogin : TLoginInOut;
       FConnction : TADOConnection;
    //   FAdo : TADOQuery;
       FWIp : string;
      protected
      public
       constructor Create(AOwner: TComponent) ; override;
       destructor Destroy; override;
       function Execute : Boolean;
       procedure setActive(const value : Boolean);
       function getActive : Boolean;

      published
       property Kullanici : string read FKullanici write FKullanici;
       property Login : TLoginInOut read FLogin write FLogin;
       property Connction : TADOConnection read FConnction write FConnction;
       property Active : Boolean read getActive write setActive;
       property WIp : string read FWIp;// write FWIp;
    end;


    TListeAc = class(TComponent)
      btnSecButton: TSpeedButton;
    private
      FListeBaslik : string;
      FColCount : integer;
      //FCols : string;
      FColsW : string;
      //FColbaslik : string;
      FTable : string;
      FWhere : string;
      FConn : TADOConnection;
      //FSQL : TADOQuery;
      Fstrings : ArrayListeSecimler;
      //FstringsWX : TstringList;
      FFiltercol : integer;
      FFilter : string;
      FFilterRowGizle : Boolean;
      FBaslikRenk : tcolor;
      FDipRenk : Tcolor;
      FImajList : TImageList;
      FButtonImajIndex : TImageIndex;
      //FVersiyon : string;
      FRenkler : TButtonlar;
      FLin : TStrings;
      Flin1 : TStrings;
      FCalistir : TGoster;
      FKapatTus : word;
      FBiriktirmeliSecim : Boolean;
      FSiralamaKolonu : string;
      FSkinName : string;
      FGrup : Boolean;
      FGrupCol : integer;
      FKaynakTableTip : TListeAcTableTip;

      procedure SetImageIndex(Value: TImageIndex);

      function GetVersiyon : string;
      procedure setLines(const value : TStrings);
      //function getlines : TStrings;
      procedure setLines1(const value : TStrings);
      //function getlines1 : TStrings;

      procedure setBiriktir(const value : Boolean);
      function getBiriktir : Boolean;

    protected
      procedure QuerySelect (Q: TADOQuery; sql:string);
      procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;

    public
      constructor Create(AOwner: TComponent) ; override;
      destructor Destroy; override;
      function ListeGetir : ArrayListeSecimler;

  published
      property ListeBaslik : string read FListeBaslik write FListeBaslik;
      property TColcount : integer read Fcolcount write Fcolcount;
    //  property TCols : string read Fcols write Fcols;
      property TColsW : string read FcolsW write FcolsW;
      property Table : string read Ftable write Ftable;
      property Where : string read FWhere write FWhere;
    //  property Colbaslik : string read FColbaslik write FColbaslik;
      property Conn : TADOConnection read FConn write FConn;
      property Filtercol : integer read Ffiltercol write Ffiltercol;
      property Filter : string read Ffilter write Ffilter;
      property FilterRowGizle : Boolean read FFilterRowGizle write FFilterRowGizle default false;
      property BaslikRenk : Tcolor read FBaslikRenk write FBaslikRenk;
      property DipRenk : Tcolor read FDipRenk write FDipRenk;
      property ImajList : TImageList read FImajList write FImajList;
      property ButtonImajIndex : TImageIndex read FButtonImajIndex write SetImageIndex default 0;
      property Versiyon : string read GetVersiyon;
      property Renkler : TButtonlar read FRenkler write FRenkler;
      property Kolonlar : TStrings read FLin write setLines;
      property KolonBasliklari : TStrings read FLin1 write setLines1;
      property Calistir : TGoster read FCalistir write FCalistir;
      property KapatTus : word read FKapatTus;
      property BiriktirmeliSecim : Boolean read getBiriktir write setBiriktir;
      property SiralamaKolonu : string read FSiralamaKolonu write FSiralamaKolonu;
      property SkinName : string read FSkinName write FSkinName;
      property Grup : Boolean read FGrup write FGrup;
      property GrupCol : integer read FGrupCol write FGrupCol default -1;
      property KaynakTableTip : TListeAcTableTip read FKaynakTableTip write FKaynakTableTip default tpTable;
  end;


type
  TcxButtonEditKadir = class(TcxButtonEdit)
   private
     FListeAc : TListeAc;
     FindexField : Boolean;
     Ftanim : string;
     FwhereColum : string;
     FListeAcTus : TShortCut;
     FBosOlamaz : Boolean;
     FtanimDeger : string; //kolon2
     FIdentity : Boolean;
     Fkolon3 : string;
     Fkolon4 : string;
     FsirketKod : string;
     //procedure DoEditKeyDown(var Key: Word; Shift: TShiftState);
   protected
   public
       constructor Create(AOwner: TComponent) ; override;
   published
     property ListeAc: TListeAc read FListeAc write FListeAc;
     property indexField : Boolean read FindexField write FindexField;
     property tanim : string read Ftanim write Ftanim;
     property whereColum : string read FwhereColum write FwhereColum;
     property ListeAcTus : TShortCut read FListeAcTus write FListeAcTus;
     property BosOlamaz : Boolean read FBosOlamaz write FBosOlamaz Default false;
     property tanimDeger : string read FtanimDeger write FtanimDeger;
     property Identity : Boolean read FIdentity write FIdentity Default false;
     property kolon3 : string read Fkolon3 write Fkolon3;
     property kolon4 : string read Fkolon4 write Fkolon4;
     property sirketKod : string read FsirketKod write FsirketKod;

end;

Values = Array of Variant;




type
    TcxGridDBTableViewKadir = class;
    TcxGridDBTableViewKadir = class(TcxGridDBTableView)
//    procedure NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);virtual;

    private
      FPopupForm : Boolean;
   protected
   public
      constructor Create(AOwner: TComponent) ; override;
      procedure NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);virtual;

   published

   property PopupForm : Boolean read FPopupForm write FPopupForm;

end;


type
    TcxGridDBTableViewK = class;
    TcxGridDBTableViewK = class(TcxGridDBTableViewKadir)
    private
    protected
    public
      constructor Create(AOwner: TComponent) ; override;
      procedure NavigatorButtonsButtonClick(Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);override;
    published
end;




type
  TcxGridKadir = class(TcxGrid)
    private
      FPMenu : TPopupMenu;
      FExcelFileName : string;
      FExceleGonder : Boolean;
      FDataset : TADOQuery;
      FDataSource : TDataSource;
      FPopupForm : Boolean;

      procedure TClick(sender : TObject);
      procedure cxGridToTr;
      procedure DatasetAfterOpen(DataSet: TDataSet);



   protected
   public
      constructor Create(AOwner: TComponent) ; override;
   //   destructor Destroy; override;
      function SelectedCellValue(ColonFieldName : string ; Row : integer) : Variant; overload;
      function SelectedCellValue(ColonFieldName : string) : Values; overload;
      procedure SelectedCellSetValue(ColonName : string ; Row : integer ; Value : Variant);
  //    procedure ButtonsClick(ButtonIndex : integer);
      procedure ExceleKaydet;

   published
     property ExcelFileName : string read FExcelFileName write FExcelFileName;
     property ExceleGonder : Boolean read FExceleGonder write FExceleGonder;
     property Dataset : TADOQuery read FDataset write FDataset;
     property DataSource : TDataSource read FDataSource write FDataSource;
     property PopupForm : Boolean read FPopupForm write FPopupForm;
  end;




type
  TMenuItemModul = class(TMenuItem)
    private
      FModul : string;
      FIslem : string;
      FFormId : integer;
   protected
   public
   published
     property Modul : string read FModul write FModul;
     property Islem : string read FIslem write FIslem;
     property FormId : integer read FFormId write FFormId;
  end;



type
  TToolButtonKadir = class(TToolButton)
    private
      FModul : string;
      FIslem : string;
   protected
   public
   published
     property Modul : string read FModul write FModul;
     property Islem : string read FIslem write FIslem;
  end;

type
  TcxButtonKadir = class(TcxButton)
   private
     FButtonName : string;
     FNewButtonVisible : Boolean;
   protected
   public
   published
     property ButtonName : string read FButtonName write FButtonName;
     property NewButtonVisible : Boolean read FNewButtonVisible write FNewButtonVisible;
end;

type
  TcxTextEditKadir = class(TcxTextEdit)
   private
     FBosOlamaz : Boolean;
     FKarakterTip : TKarakterTip;
     function getKarakterTip : TKarakterTip;
     procedure setKarakterTip(const value : TKarakterTip);
     procedure KeyPress(Sender: TObject; var Key: Char);
   protected

   public
     constructor Create(AOwner: TComponent) ; override;
     function GetSQLValue : string;

   published
     property BosOlamaz : Boolean read FBosOlamaz write FBosOlamaz Default False;
     property KarakterTip : TKarakterTip read getKarakterTip write setKarakterTip Default ktNone;
end;


type
  TcxCustomDateEditPropertiesKadir = class(TcxDateEditProperties)
   private
   protected
   public
      procedure ValidateDisplayValue(var ADisplayValue: TcxEditValue;
      var AErrorText: TCaption; var AError: Boolean;
      AEdit: TcxCustomEdit);override;
  published
end;

type
  TcxDateEditKadir = class(TcxDateEdit)
   private
     FBosOlamaz : Boolean;
     FValueTip : TTarihValueTip;

    function getValueTip : TTarihValueTip;
    procedure setValueTip(const value : TTarihValueTip);

   protected
   public
     constructor Create(AOwner: TComponent) ; override;
     function GetValue(format : string = 'YYYYMMDD') : string;
     function GetSQLValue(format : string = 'YYYYMMDD') : string;
     function GetTXSDateTime : TXSDateTime;
     class function GetPropertiesClass: TcxCustomEditPropertiesClass; override;
   published
     property BosOlamaz : Boolean read FBosOlamaz write FBosOlamaz;
     property ValueTip : TTarihValueTip read getValueTip write setValueTip;
end;




type
  TcxCheckBoxKadir = class(TcxCheckBox)
   private
     FBosOlamaz : Boolean;
     FSecili : string;
     FSeciliDegil : string;
   protected
   public
     constructor Create(AOwner: TComponent) ; override;
     function GetSQLValue : string;
   published
     property BosOlamaz : Boolean read FBosOlamaz write FBosOlamaz;
     property Secili : string read FSecili write FSecili;
     property SeciliDegil : string read FSeciliDegil write FSeciliDegil;
end;


type

  TBClick = PROCEDURE(Sender: TObject ; ButtonTag : integer) OF OBJECT;
  Buttons = class(TcxButtonKadir);

  TcxTopPanelKadir = class(TcxGroupBox)
   private
     Btn1 : TcxButtonKadir;
     Btn2 : TcxButtonKadir;
     FButon1Goster : Boolean;
     FButon2Goster : Boolean;
     FButon1Caption : string;
     FButon2Caption : string;
     ilkTarih : TcxDateEditKadir;
     sonTarih : TcxDateEditKadir;
     //FKurumTip : Boolean;
     FOnButonClick : TBClick;
     //FButtonTag : integer;
   protected
   public
     constructor Create(AOwner: TComponent) ; override;
    // destructor Destroy; override;
     function GetValue(var tarih2 : string) : string;
   //  function TarihCreate : Boolean;
     function getButon1Goster : Boolean;
     procedure setButon1Goster(const value : Boolean);
     function getButon2Goster : Boolean;
     procedure setButon2Goster(const value : Boolean);
     procedure ButonClick(Sender: TObject);
   published
     property Buton1Caption : string read FButon1Caption write FButon1Caption;
     property Buton2Caption : string read FButon2Caption write FButon2Caption;
     property Buton1Goster : Boolean read getButon1Goster write setButon1Goster;
     property Buton2Goster : Boolean read getButon2Goster write setButon2Goster;
  //   property ilkTarih : Boolean read FilkTarih write TarihCreate;
   //  property sonTarih : Boolean read FsonTarih write TarihCreate;
  //   property Buton1 : TcxButtonKadir read FButon1 write setBtn1;
     property OnButonClick: TBClick read FOnButonClick write FOnButonClick;

end;




type
  TcxDonemComboKadir = class(TcxImageComboBox)
   private
     FItem : TcxImageComboBoxItem;
     FPopupYil : TPopupMenu;
     FBosOlamaz : Boolean;
     FItemList : string;
     FYil : string;
     FilkTarih : TDate;
     FsonTarih : TDate;
     procedure PopupClick(Sender : TObject);
   protected
   public
     constructor Create(AOwner: TComponent) ; override;
 //    destructor Destroy; override;
     procedure AfterConstruction; override;
     function getValueIlkTarih : string;
     function getValueSonTarih : string;
     function getYil : string;
     procedure setYil(const value : string);
     procedure ButonClick1(Sender: TObject);
     procedure DoEditValueChanged;override;
   published
     property BosOlamaz : Boolean read FBosOlamaz write FBosOlamaz;
     property ItemList : string read FItemList write FItemList;
     property Yil : string read getYil write setYil;
     property ilkTarih : TDate read FilkTarih write FilkTarih;
     property sonTarih : TDate read FsonTarih write FsonTarih;
end;


type
  TcxImageComboKadir = class(TcxImageComboBox)
   private
     FItem : TcxImageComboBoxItem;
     FTableName : string;
     FTableTip : TListeAcTableTip;
     FFilter : string;
     FConn : TADOConnection;
     FValueField : string;
     FDisplayField : string;
     FBosOlamaz : Boolean;
     FItemList : string;
     FFilterSet : TimageComboKadirFilterSet;
     procedure setFilter(const value : string);
     function getFilter : string;
     procedure setFilterSet(const value : TimageComboKadirFilterSet);
     function getFilterSet: TimageComboKadirFilterSet;

   protected
   public
     constructor Create(AOwner: TComponent) ; override;
     function getItemString : String;
   published
     property TableName : string read FTableName write FTableName;
     property Filter : string read getFilter write setFilter;
     property Conn : TADOConnection read FConn write FConn;
     property ValueField : string read FValueField write FValueField;
     property DisplayField : string read FDisplayField write FDisplayField;
     property BosOlamaz : Boolean read FBosOlamaz write FBosOlamaz;
     property ItemList : string read FItemList write FItemList;
     property TableTip : TListeAcTableTip read FTableTip write FTableTip Default tpTable;
     property FilterSet : TimageComboKadirFilterSet read getFilterSet write setFilterSet;
end;



type
  TcxCheckGroupKadir = class(TcxCheckGroup)
   private
     FItem : TcxCheckGroupItem;
     FTableName : string;
     FFilter : string;
     FConn : TADOConnection;
     FValueField : string;
     FDisplayField : string;
     FTumuSecili : Boolean;
     FItemList : string;
     FOrderField : TCheckGrupSiralamaTip;
  //   FGetItemList : TStringList;
     procedure setFilter(const value : string);
     function getFilter : string;
   protected
   public
     constructor Create(AOwner: TComponent) ; override;
   //  destructor Destroy; override;
     function getItemString : String;
     function getItemCheckString : String;
     function getItemCheckArrayOfString : ArrayOfString;
     procedure setItemStringCheck(value : string);
     function getItemCheckCount : integer;

   published
     property TableName : string read FTableName write FTableName;
     property Filter : string read getFilter write setFilter;
     property Conn : TADOConnection read FConn write FConn;
     property ValueField : string read FValueField write FValueField;
     property DisplayField : string read FDisplayField write FDisplayField;
     property TumuSecili : Boolean read FTumuSecili write FTumuSecili default True;
     property ItemList : string read FItemList write FItemList;
     property OrderField : TCheckGrupSiralamaTip read FOrderField write FOrderField default display;
end;




    TDoktorComboBox = class(TComboBox)
    private
      FColCount : integer;
      //FCols : string;
      FColsW : string;
      //FColbaslik : string;
      FTable : string;
      FWhere : string;
      FConn : TADOConnection;
      //FSQLC : TADOQuery;
      //Fstrings : TstringList;
      //FstringsW : TstringList;
      //FVersiyon : string;
      FLinC : TStrings;
      FCalistir : TGoster;
//      procedure SetImageIndex(Value: TImageIndex);
//      function GetVersiyon : string;
      procedure setLines(const value : TStrings);
      //function getlines : TStrings;
      procedure dizaynEt(kolonlar : TStrings);

    protected
    public
      constructor Create(AOwner: TComponent) ; override;
      destructor Destroy; override;
      function ListeGetir : string;

  published
      property TColcount : integer read Fcolcount write Fcolcount;
    //  property TCols : string read Fcols write Fcols;
      property TColsW : string read FcolsW write FcolsW;
      property Table : string read Ftable write Ftable;
      property Where : string read FWhere write FWhere;
    //  property Colbaslik : string read FColbaslik write FColbaslik;
      property Conn : TADOConnection read FConn write FConn;
  //    property Versiyon : string read GetVersiyon;
      property Kolonlar : TStrings read FLinC write setLines;
      property Calistir : TGoster read FCalistir write FCalistir;
  end;



  TKadirEdit = class(TEdit)
   private
    FRenkEnter : TColor;
    FRenkCikis : TColor;
    FEnterlaGec : Boolean;
    FListeAc : TListeAc;
    FListeAcTus : TShortCut;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CNKeyDown(var Message: TWMKeyDown); message CN_KEYDOWN;
   protected
   public
      CONSTRUCTOR Create(AOwner: TComponent); override;
 //     destructor Destroy; override;
   published
       property RenkEnter : Tcolor read FRenkEnter write FRenkEnter;
       property RenkCikis : Tcolor read FRenkCikis write FRenkCikis;
       property EnterlaGec : Boolean read FEnterlaGec write FEnterlaGec;
       property ListeAc : TListeAc read FListeAc write FlisteAc;
       property ListeAcTus : TShortCut read FListeAcTus write FListeAcTus;
  End;


type
   TKabulBilgi = record
    dosyaNo : string;
    gelisNo : string;
    detayNo : string;
    code : string;
    grup : string;
    kabulTarihi : string;
    kabulEden : string;
    durum : string;
    Icode : string;
    name : string;
    sira : string;
    yas : string;
    cins : string;
end;



type
   SonucBilgisi = record
    KabulNo : string;
    TestNo : string;
    Sonuc : string;
   end;
   ArraySonucBilgisi = array of SonucBilgisi;


type
  WSonuclar = ArraySonucBilgisi;
  TOnKaydetEvent = PROCEDURE(Sender: TObject; WSonuclar: ArraySonucBilgisi) OF OBJECT;


  TLabIslemleri = class(TComponent)
    private
      Fsonuclar : ArraySonucBilgisi;
      FKabulBilgi : TKabulBilgi;
      FConnectionstring : string;
      FTestAdet : integer;
      FOnKaydet : TOnKaydetEvent;
      FOnGuncelle : TNotifyEvent;
      procedure DiziSet(const value : integer);
    protected
    public
      constructor Create(AOwner: TComponent) ; override;
      destructor Destroy; override;
      function SonucKaydet : string;
      function KabulEt : string;
      function CihazTestKodu_To_LisTestKodu(code : string) : string;

    published
      property  OnKaydet : TOnKaydetEvent read FOnKaydet write FOnKaydet;
      property  OnGuncelle : TNotifyEvent read FOnGuncelle write FOnGuncelle;
    //  property sonuclar : ArraySonucBilgisi read Fsonuclar write Fsonuclar;
      property KabulBilgi : TKabulBilgi read FKabulbilgi write FKabulbilgi;
      property Connectionstring : string read Fconnectionstring write Fconnectionstring;
      property sonuclar : ArraySonucBilgisi read Fsonuclar write Fsonuclar;
      property TestAdet : integer read FTestAdet write Diziset;

  end;



type
  TGirisFormItem = class(TCollectionItem)
  private
    FCaption: string;
    FFieldName: string;
  //  Fparent : TdxLayoutGroup;
    //Fgrup : string;
    Fuzunluk : integer;
    //FZorunlu : Boolean;
    //procedure Setparent(const Value: TdxLayoutGroup);

  public
    constructor Create(Collection: TCollection); override;
    procedure Assign(Source: TPersistent); override;
  published
    property Caption : string read FCaption write FCaption;
    property FieldName: string read FFieldName write FFieldName;
 //   property parent: TdxLayoutGroup read Fparent write Setparent;
    property uzunluk: integer read Fuzunluk write Fuzunluk;
  end;

  TGirisFormItems = class(TOwnedCollection)
  private
    function GetItems(Index: Integer): TGirisFormItem;
    procedure SetItems(Index: Integer; const Value: TGirisFormItem);
  protected
    procedure InternalChanged;
    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create(AOwner: TPersistent);
    function Add: TGirisFormItem;
    property Items[Index: Integer]: TGirisFormItem read GetItems write SetItems; default;
  end;


  TGirisFormCreateControl = class(TComponent)
    private
     FItems : TGirisFormItems;
     constructor Create(AOwner: TPersistent);
     procedure Assign(Source: TPersistent);
     destructor Destroy;
     procedure SetItems(const Value: TGirisFormItems);
    protected
    public
    published
     property Items: TGirisFormItems read FItems write SetItems;
  end;


type
   TMenuGorunum = record
    Kullanici : string;
    Menu : string;
    ID : integer;
    Izin : integer;
    KAYITID : integer;
    MainMenu : string;
    Kapsam : integer;
    imageIndex : integer;
    formId : integer;
    ShowTip : integer;
    Sira : integer;
    LisansTip : integer;
end;


type
  tDirections = (aniForward,aniReverse);
  TAnimationThread = Class;
  TAnimatedIcon = class;
  TAnimatedFormIcon = class;

  TAnimationThread = Class(TThread)
                      Private
                       fAniIcon : TAnimatedIcon;
                       fAniFormIcon : TAnimatedFormIcon;
                       fActFrame : Integer;
                       fFramesDone,
                       fMinFrames : Integer;
                       fShallSuspend : Boolean;
                      Protected
                       Procedure NextFrame;
                      Public
                       Procedure PaintFrame;
                       Procedure Execute;Override;
                       Constructor Initialize(aAniIcon : TComponent);
                      Published
                       Property AniIcon : TAnimatedIcon Read fAniIcon Write fAniIcon;
                       Property AniFormIcon : TAnimatedFormIcon Read fAniFormIcon Write fAniFormIcon;
                       Property MinFrames : Integer Read fMinFrames write fMinFrames;
                       Property FramesDone : Integer Read fFramesDone Write fFramesDone;
                       Property ShallSuspend : Boolean read fShallSuspend write fShallSuspend;
                     End;


  TAnimatedFormIcon = class(TComponent)
  private
    fImageList : TImageList;
    fImageBase : Integer;
    fImageCount : Integer;
    fThread : TAnimationThread;
    FAnimated : Boolean;
    fDelay : Integer;
    fDirection :  tDirections;
    Procedure SetAnimated(aValue : Boolean);
    Procedure SetPriority(aValue :TThreadPriority);
    Function GetPriority:TThreadPriority;
    Procedure SetMinFrames(aValue : Integer);
    Function GetMinFrames:Integer;
    Procedure SetDelay(aValue : Integer);
  protected
   Constructor Create(aOwner : TComponent);override;
   Destructor Destroy;Override;
  public
  published
   Property ImageList : TImageList Read fImageList Write fImageList;
   Property Animated : Boolean Read FAnimated Write SetAnimated;
   Property Delay : Integer read fDelay Write SetDelay default 100;
   Property Priority : TThreadPriority Read GetPriority Write SetPriority default tpLowest;
   Property Direction : tDirections read fDirection write fDirection;
   Property MinFramesToRun : Integer Read GetMinFrames Write SetMinFrames;
  end;


  TAnimatedIcon = class(TCustomPanel)
  private
    fImageList : TImageList;
    fImageBase : Integer;
    fImageCount : Integer;
    fThread : TAnimationThread;
    FAnimated : Boolean;
    fDelay : Integer;
    fDirection :  tDirections;
    Procedure SetAnimated(aValue : Boolean);
    Procedure SetPriority(aValue :TThreadPriority);
    Function GetPriority:TThreadPriority;
    Procedure SetMinFrames(aValue : Integer);
    Function GetMinFrames:Integer;
    Procedure SetDelay(aValue : Integer);
  protected
   Procedure WMEraseBkgnd(Var Msg : TMessage); MEssage WM_EraseBkgnd;
   Procedure Paint;Override;
   Constructor Create(aOwner : TComponent);override;
   Destructor Destroy;Override;
  public
  published
   Property Align;
   Property Color;
   Property ImageList : TImageList Read fImageList Write fImageList;
   Property Animated : Boolean Read FAnimated Write SetAnimated;
   Property Delay : Integer read fDelay Write SetDelay default 100;
   Property Priority : TThreadPriority Read GetPriority Write SetPriority default tpLowest;
   Property Direction : tDirections read fDirection write fDirection;
   Property MinFramesToRun : Integer Read GetMinFrames Write SetMinFrames;
   Property BevelInner;
   Property BevelOuter;
   Property BevelWidth;
  end;

  tAniImageList = Class(TImageList)
                  Public
                   Procedure LoadAniBMPFromResource(Const ResId : Integer;Overlapped : Boolean);
                   Procedure LoadAniIconsFromResource(Const ResId : Integer;aCount : Integer);
                  End;




procedure QuerySelect(var Q: TADOQuery; sql:string);
procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
function tarihFarki(tarih1,tarih2 : Tdate) : string;
function tarihal(t: tdate): string;
function tarihyap(t: string): tdate;
function KurumAdi(_kod : string) : string;

procedure Register;


var
  arama , aramaText : string;
  MenuItem : TMenuItem;
  Liste : TcxGridDBTableView;
  ListeBanded : TcxGridDBBandedTableView;
  v : TcxGridDBTableViewK;
  l : TcxGridLevel;

implementation

uses ComObj, Consts, RTLConsts, Themes;

 {*.RES,*.dres}

procedure Register;
begin

  RegisterComponents('Nokta', [TKadirLabel]);
  RegisterComponents('Nokta', [TKadirEdit]);
  RegisterComponents('Nokta', [TListeAc]);
  RegisterComponents('Nokta', [THastaBilgileriGroup]);
  RegisterComponents('Nokta', [TDoktorComboBox]);
  RegisterComponents('Nokta', [TKadirHastaBilgiPanel]);
  RegisterComponents('Nokta', [TLabIslemleri]);
  RegisterComponents('Nokta', [TMainMenuKadir]);
//  RegisterComponents('Nokta', [TMainMenuKadirItems]);
  RegisterComponents('Nokta', [TcxButtonEditKadir]);
  RegisterComponents('Nokta', [TcxButtonKadir]);
  RegisterComponents('Nokta', [TcxDateEditKadir]);
  RegisterComponents('Nokta', [TcxTextEditKadir]);
  RegisterComponents('Nokta', [TcxGridKadir]);

  RegisterComponents('Nokta', [TMenuItemModul]);
  RegisterComponents('Nokta', [TToolButtonKadir]);
  RegisterComponents('Nokta', [TFScxGrid]);
  RegisterComponents('Nokta', [TcxImageComboKadir]);
  RegisterComponents('Nokta', [TcxCheckGroupKadir]);
  RegisterComponents('Nokta', [TcxCheckBoxKadir]);
  RegisterComponents('Nokta', [TcxTopPanelKadir]);
  RegisterComponents('Nokta', [TcxDonemComboKadir]);
  RegisterComponents('Nokta', [TGirisFormCreateControl]);
  RegisterComponents('Nokta', [TLogin]);

  RegisterComponents('Nokta', [TAnimatedFormIcon]);
  RegisterComponents('Nokta', [TAnimatedIcon]);
  RegisterComponents('Nokta', [TAniImageList]);



end;


Procedure TAniImageList.LoadAniBMPFromResource(Const ResId : Integer;Overlapped : Boolean);
Var tmpBmp,
    Bmp : Vcl.Graphics.TBitmap;
    Ofset,w,h : Integer;
Begin
 Bmp := Vcl.Graphics.TBitmap.Create;
 clear;
 Try
  bmp.Handle:=LoadBitmap(HInstance,MakeIntResource(resId));

  if bmp.handle=0 then Exit;
  w:=bmp.Width;h:=bmp.Height;
  if h=0 then Exit;
  allocBy:=(w div h);
  width:=h;
  Height:=h;
  masked:=False;
  if (W < H) then Exception.Create('Illigal bitmap extends');
  Ofset:=0;
  Repeat
    TmpBmp:=Vcl.Graphics.TBitmap.Create;
    TmpBmp.Palette:=bmp.Palette;
    RealizePalette(Bmp.Canvas.Handle);
    RealizePalette(TmpBmp.Canvas.Handle);
    TmpBmp.width:=h;TmpBmp.Height:=h;
    BitBlt(TmpBmp.Canvas.handle,0,0,h,h,Bmp.Canvas.Handle,Ofset,0,srcCopy);
    Add(TmpBmp,Nil);
    inc(Ofset,h-integer(Overlapped));
  Until ofset >= w -integer(Overlapped);
 Finally
  Bmp.Free;
 End;
End;

Procedure TAniImageList.LoadAniIconsFromResource(Const ResId : Integer;aCount : Integer);
Var Icon : TIcon;
    hIcon : THandle;
    C : Integer;
Begin
 c:=0;
 Width:=32;
 Height:=32;
 masked:=False;
 Repeat
  hIcon:=LoadIcon(hInstance,MakeIntResource(c+resId));
  if hIcon <> 0 then
   Begin
    Icon:=TIcon.Create;
    Icon.Handle:=hIcon;
    AddIcon(Icon);
   End;
  inc(C);
 Until (hIcon=0) or ( (aCount <> -1) and (c > aCount));
End;


Constructor TAnimationThread.Initialize(aAniIcon : TComponent);
BEgin
 inherited Create(false);
 freeOnTerminate:=False;
 fFramesDone:=0;
 if aAniIcon is tAnimatedIcon then
  fAniICon:=tAnimatedIcon (aAniIcon) else fAniIcon:=NIL;
 if aAniIcon is tAnimatedFormIcon then
  fAniFormIcon:=tAnimatedFormIcon(aAniIcon) else fAniFormIcon:=NIL;
 if (fAniIcon = Nil) and (fAniFormIcon = Nil ) then Exception.Create('Ups? Who called me???');
 fActFrame:=0;
 Priority:=tplowest;
 fFramesDone:=0;
 suspend;
End;

Procedure TAnimationThread.PaintFrame;
Var x ,y : Integer;
{    Data : TNotifyIconData;}
Begin
 if assigned (fAniIcon) then
  Begin
   x:=(TAnimatedIcon(fAniIcon).Width div 2) - (TAnimatedIcon(fAniIcon).ImageList.Width div 2);
   y:=(TAnimatedIcon(fAniIcon).Height div 2) - (TAnimatedIcon(fAniIcon).ImageList.Height div 2);
   try
    if Assigned(TAnimatedIcon(fAniIcon).Canvas) then
     TAnimatedIcon(fAniIcon).ImageList.Draw(TAnimatedIcon(fAniIcon).Canvas,x,y,fActFrame);
    Finally
    End;
  end
 else
  Begin
   fAniFormIcon.ImageList.GetIcon(fActFrame,TForm(fAniFormIcon.Owner).Icon);
   if Assigned(Application.MainForm) then
    if TForm(fAniFormIcon.Owner) = Application.MainForm then Application.Icon:=TForm(fAniFormIcon.Owner).Icon;

{ In Future for TrayIcons???
   Data.cbSize:=SizeOf(Data);
   Data.wnd:=TForm(fAniFormIcon.Owner).Handle;
   Data.hIcon:=TForm(fAniFormIcon.Owner).Icon.Handle;
   Data.uFlags:=NIF_Icon;
   Data.uCallbackMessage:=0;
   Shell_NotifyIcon(NIM_Add,@Data);
   Shell_NotifyIcon(NIM_modify,@Data)
}
  End;
End;


Procedure TAnimationThread.NextFrame;
var ImageList : TImageList;
    Direction : TDirections;
Begin
try
 Try
 if assigned (fAniIcon) then
  Begin
   If Not Assigned(fAniIcon.ImageList) then Exit;
   Direction:=fAniIcon.Direction;
   ImageList:=fAniIcon.ImageList;
  end
 else
  Begin
   If Not Assigned(fAniFormIcon.ImageList) then Exit;
   Direction:=fAniFormIcon.Direction;
   ImageList:=fAniFormIcon.ImageList;
  End;
  if ImageList.Count=0 then Exit;

  if Direction=AniReverse then
   Begin
    Dec(fActFrame);
    if fActFrame < 0 then fActFrame:=ImageList.Count-1
   End
  else
   Begin
    inc(fActFrame);
    if fActFrame > ImageList.Count-1 then fActFrame:=0;
   End;

   Inc(fFramesDone);
   if Terminated then Exit;
    synchronize(PaintFrame);
  Finally
   if fShallSuspend and ((fMinFrames = 0) or (fFramesDone >= fMinFrames) ) then
    Begin
     fFramesDone:=0;
     Suspend;
    End;
  End;
 except
  Suspend;
 End;
End;

Procedure TAnimationThread.Execute;
Var Delay : Integer;
Begin
 Repeat
  if assigned (fAniIcon) then
    Delay:=fAniIcon.Delay
  else
   Delay:=fAniFormIcon.Delay;
   if WaitForSingleObject(Handle,Delay) = WAIT_TIMEOUT	then
    NextFrame
   else
    Exit;
  if Terminated then Exit;
 Until false;
End;

Constructor TAnimatedIcon.Create(aOwner : TComponent);
Begin
 Inherited Create(aOwner);
 delay:=100;
 Caption:='';
 FAnimated := false;
 bevelOuter:=bvNone;
 fThread:=TAnimationThread.Initialize(TAnimatedFormIcon(self));
End;

Procedure TAnimatedIcon.WMEraseBkgnd(Var Msg : TMessage);
Begin
 Exit;
End;

Procedure TAnimatedIcon.Paint;
Begin
 Inherited Paint;
  fThread.PaintFrame;
End;


Procedure TAnimatedIcon.SetDelay(aValue : Integer);
Begin
 if aValue < 10 then avalue := 10;
 fDelay:=aValue;
End;


Destructor TAnimatedIcon.Destroy;
Begin
 Inherited Destroy;
End;

Procedure TAnimatedIcon.SetMinFrames(aValue : Integer);
Begin
 fThread.MinFrames:=aValue;
End;

Function TAnimatedIcon.GetMinFrames:Integer;
Begin
 Result:=fThread.MinFrames;
End;

Function TAnimatedIcon.GetPriority:TThreadPriority;
Begin
 Result:=fThread.Priority;
End;

Procedure TAnimatedIcon.SetPriority(aValue :TThreadPriority);
Begin
 fThread.Priority := aValue;
End;

Procedure TAnimatedIcon.SetAnimated;
Begin
 fAnimated:=aValue;
  if fAnimated then
   Begin
    fThread.ShallSUspend:=False;
    if fThread.Suspended then
     fThread.Resume
    End
  else
    if not fThread.Suspended then
      fThread.ShallSUspend:=True;
End;

{ TAnimatedFormIcon }

Constructor TAnimatedFormIcon.Create(aOwner : TComponent);
Begin
 Inherited Create(aOwner);

 if not ((owner is tForm) or
         (Assigned(TForm(Owner).Icon))) then
  Exception.Create('Parent has no default Icon');
 delay:=100;
 FAnimated := false;
 fThread:=TAnimationThread.Initialize(self);
End;

Procedure TAnimatedFormIcon.SetDelay(aValue : Integer);
Begin
 if aValue < 10 then avalue := 10;
 fDelay:=aValue;
End;


Destructor TAnimatedFormIcon.Destroy;
Begin
 Inherited Destroy;
End;

Procedure TAnimatedFormIcon.SetMinFrames(aValue : Integer);
Begin
 fThread.MinFrames:=aValue;
End;

Function TAnimatedFormIcon.GetMinFrames:Integer;
Begin
 Result:=fThread.MinFrames;
End;

Function TAnimatedFormIcon.GetPriority:TThreadPriority;
Begin
 Result:=fThread.Priority;
End;

Procedure TAnimatedFormIcon.SetPriority(aValue :TThreadPriority);
Begin
 fThread.Priority := aValue;
End;

Procedure TAnimatedFormIcon.SetAnimated;
Begin
 fAnimated:=aValue;
 if  (csDesigning in ComponentState) then Exit;
  if fAnimated then
   Begin
    fThread.ShallSUspend:=False;
    if fThread.Suspended then
     fThread.Resume
    End
  else
    if not fThread.Suspended then
      fThread.ShallSUspend:=True;
End;


constructor TGirisFormItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
end;

procedure TGirisFormItem.Assign(Source: TPersistent);
begin
  if Source is TGirisFormItem then
    with TGirisFormItem(Source) do
    begin
      Self.FCaption := Caption;
      Self.FFieldName := FieldName;
   //   Self.Fparent := parent;
      Self.Fuzunluk := uzunluk ;
    end
  else
    inherited Assign(Source);
end;


//procedure TGirisFormItem.Setparent(const Value: TdxLayoutGroup);
//begin
 // if Fparent <> Value then
 // begin
  //  Fparent := Value;
 //   TGirisFormItems(Collection).InternalChanged;
 // end;
//end;


function TGirisFormItems.GetItems(Index: Integer): TGirisFormItem;
begin
  Result := TGirisFormItem(inherited Items[Index]);
end;


procedure TGirisFormItems.SetItems(Index: Integer;
  const Value: TGirisFormItem);
begin
  inherited Items[Index] := Value;
end;

procedure TGirisFormItems.InternalChanged;
begin
  Changed;
end;

procedure TGirisFormItems.Update(Item: TCollectionItem);
begin
  with TGirisFormCreateControl(Owner) do
    Changed;
end;

constructor TGirisFormItems.Create(AOwner: TPersistent);
begin
  inherited Create(AOwner, TGirisFormItem);
end;

function TGirisFormItems.Add: TGirisFormItem;
begin
  Result := TGirisFormItem(inherited Add);
end;


procedure TGirisFormCreateControl.SetItems(
  const Value: TGirisFormItems);
begin
  FItems.Assign(Value);
 // Changed;
end;

constructor TGirisFormCreateControl.Create(AOwner: TPersistent);
begin
  FItems := TGirisFormItems.Create(Self);
end;

destructor TGirisFormCreateControl.Destroy;
begin
  FItems.Free;
  inherited Destroy;
end;

procedure TGirisFormCreateControl.Assign(Source: TPersistent);
begin
  if Source is TGirisFormCreateControl then
  begin
  //  BeginUpdate;
    try
      inherited Assign(Source);
      with TGirisFormCreateControl(Source) do
      begin
        Self.Items.Assign(Items);
      end;
    finally
    //  EndUpdate
    end
  end
  else
    inherited Assign(Source);
end;

procedure QuerySelect(var Q: TADOQuery; sql:string);
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';


    Q.Close;
    Q.SQL.Clear ;
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Q.SQL.Add (sql);
//    Q.Prepare;
    Q.Open;
end;

procedure Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
begin
   Assert(Assigned(Strings)) ;
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
end;


function ayliktarih2(_ay_: string; _yil_: string = ''): Tdate;
var
  s: string;
  sp: Char;
  Tarih: Tdate;
  ay, yil, gun: word;

begin
  if _yil_ = '' Then
    _yil_ := copy(datetostr(date()), 7, 4);

  Tarih := strtodate('01.' + _ay_ + '.'+_yil_);

  sp := FormatSettings.DateSeparator;
  s := '01' + sp + copy(FormatDateTime('YYYYMMDD',Tarih), 5, 2) + sp + copy(FormatDateTime('YYYYMMDD',Tarih), 1, 4);
  ay := strtoint(copy(FormatDateTime('YYYYMMDD',Tarih), 5, 2));

  inc(ay);
  if ay > 12 then
    ay := 1;
  yil := strtoint(copy(FormatDateTime('YYYYMMDD',Tarih), 1, 4));
  gun := 1;
  if (ay = 1) and (gun = 1) then
    inc(yil);
  Result := encodedate(yil, ay, gun) - 1;

end;

function tarihFarki(tarih1,tarih2 : Tdate) : string;
var
   aylik , gunluk  : double;
   fyil ,ay : integer;
   farkGun : double;
begin
  //yil1 := strtoint(copy(tarihal(tarih1),1,4));
  //yil2 := strtoint(copy(tarihal(tarih2),1,4));
  farkGun := (tarih1 - tarih2);

  fyil := floor((tarih1- tarih2) / 365);
  aylik := (floor(farkGun) mod 365);
  ay := floor(aylik /30);
  gunluk := (floor(aylik) mod 30);

  result := floattostr(fyil) + ',' + FloatToStr(ay) + ',' + FloatToStr(floor(gunluk));
end;

function tarihal(t: tdate): string;
var
 s:string;
begin

// s := datetostr(t);
 result := FormatDateTime('YYYYMMDD',t);
 //  copy(s,7,4)+copy(s,4,2)+copy(s,1,2);
end;

function tarihyap(t: string): tdate;
var
ds : char;
y,a,g : string;
begin
    ds := FormatSettings.DateSeparator;
    y := copy(t,1,4);
    a := copy(t,5,2);
    g := copy(t,7,2);

    result := strtodate(g + ds + a + ds + y);

end;

function KurumAdi(_kod : string) : string;
//var
//  sql : string;
//  ado : TADOQuery;
begin
  //sql := 'SELECT * FROM Kurumlar WHERE kurum = ' + _kod;
  //datalar.

end;



 (*
function TMenuItemKadir.GetItem(Index: Integer): TMenuItemKadir;
begin
  if FItems = nil then
    Error({$IFNDEF CLR}@{$ENDIF}SMenuIndexError);
  Result := TMenuItemKadir(FItems[Index]);
end;
   *)


constructor TLogin.Create(AOwner: TComponent);
begin
    inherited Create(AOwner);
    FActive := False;
  //  Fado := TADOQuery.Create(nil);
end;

destructor TLogin.Destroy;
begin
  inherited;
 //   Fado.Free;
end;

function TLogin.getActive : Boolean;
begin
  if FActive = False then FWIp := '';
  Result := FActive;
end;

procedure TLogin.setActive(const value : Boolean);
const
  url : string = 'http://bot.whatismyipaddress.com';
var
  Http1 : TIdHTTP;
begin
  FActive := Value;
  Http1 := TIdHTTP.Create(nil);
  try
    try
      FWIp := HTTP1.Get(url);
    except
      FWIp := '';
    end;
  finally
    Http1.Free;
  end;
end;

function TLogin.Execute : Boolean;
var
  sql : string;
  log : string;
  ado : TADOQuery;
begin
  Result := False;
  ado := TADOQuery.Create(nil);
  try
    if FLogin = lgnIn then log := 'LogIn' else log := 'LogOut';
    try
      Ado.Connection := FConnction;
      sql := 'insert into LoginLog(kullanici,Login,WanIp) values('+ QuotedStr(FKullanici) + ',' +
                                                                    QuotedStr(log) + ',' +
                                                                    QuotedStr(FWIp)
                                                                    +') select @@rowcount';
      QuerySelect(ado,Sql);
      Result := True;
    except
    end;
  finally
    ado.free;
  end;
end;


constructor TcxImageComboKadir.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  self.Properties.ClearKey := VK_DELETE;
  self.EditValue:= Null;
  self.TableTip := tpTable;
  self.Conn := nil;
  self.FilterSet := fsNone;
end;


//function TcxDonemComboKadir.LookupKeyToEditValue(const AKey: TcxEditValue): TcxEditValue;
//begin
 // FilkTarih.EditValue := tarihyap(getValueIlkTarih);
 // FsonTarih.EditValue := tarihyap(getValueSonTarih);
//end;



procedure TcxDonemComboKadir.DoEditValueChanged;
begin
  inherited;
  FilkTarih := tarihyap(getValueIlkTarih);
  FsonTarih := tarihyap(getValueSonTarih);
end;


procedure TcxDonemComboKadir.ButonClick1(Sender : TObject);
begin
 // FilkTarih.EditValue := tarihyap(getValueIlkTarih);
 // FsonTarih.EditValue := tarihyap(getValueSonTarih);
//  if Assigned(OnClick) then OnClick(Self);

end;


function TcxDonemComboKadir.getYil : string;
begin
    Result := Fyil;
end;

procedure TcxDonemComboKadir.setYil(const value : string);
var
 I : integer;
begin
  Fyil := value;
  if (Fyil <> '') and (Properties.Items.Count < 12)
  Then begin
    Properties.Items.Clear;
    FItem := Properties.Items.Add;
    FItem.Value := '01';FItem.Description := 'OCAK';
    FItem := Properties.Items.Add;
    FItem.Value := '02';FItem.Description := 'ÞUBAT';
    FItem := Properties.Items.Add;
    FItem.Value := '03';FItem.Description := 'MART';
    FItem := Properties.Items.Add;
    FItem.Value := '04';FItem.Description := 'NÝSAN';
    FItem := Properties.Items.Add;
    FItem.Value := '05';FItem.Description := 'MAYIS';
    FItem := Properties.Items.Add;
    FItem.Value := '06';FItem.Description := 'HAZÝRAN';
    FItem := Properties.Items.Add;
    FItem.Value := '07';FItem.Description := 'TEMMUZ';
    FItem := Properties.Items.Add;
    FItem.Value := '08';FItem.Description := 'AÐUSTOS';
    FItem := Properties.Items.Add;
    FItem.Value := '09';FItem.Description := 'EYLÜL';
    FItem := Properties.Items.Add;
    FItem.Value := '10';FItem.Description := 'EKÝM';
    FItem := Properties.Items.Add;
    FItem.Value := '11';FItem.Description := 'KASIM';
    FItem := Properties.Items.Add;
    FItem.Value := '12';FItem.Description := 'ARALIK';
  end;

  for I := 1 to 10 do
  begin
    if FYil = trim(stringReplace(FpopupYil.Items[I-1].Caption,'&','',[rfReplaceAll]))
    then
     FpopupYil.Items[I-1].Checked := True;
  end;
end;

function TcxDonemComboKadir.getValueIlkTarih : string;
begin
    getValueIlkTarih :=  FYil + EditingValue + '01';
end;

function TcxDonemComboKadir.getValueSonTarih : string;
begin
 getValueSonTarih := FormatDateTime('YYYYMMDD', ayliktarih2(EditingValue,FYil));

end;
procedure TcxDonemComboKadir.PopupClick(Sender : TObject);
var
  I : integer;
begin
  FYil := trim(stringReplace(TMenuItem(sender).Caption,'&','',[rfReplaceAll]));
  for I := 1 to 10 do
  begin
   FpopupYil.Items[I-1].Checked := False;
  end;
  TMenuItem(sender).Checked := True;
  DoEditValueChanged;
  self.Properties.OnChange(self);
end;

procedure TcxDonemComboKadir.AfterConstruction;
begin

end;


constructor TcxDonemComboKadir.Create(AOwner: TComponent);
var
  I ,yil : integer;
  item : TMenuItem;
begin
  inherited Create(AOwner);

  FPopupYil := TPopupMenu.Create(self);
  Self.PopupMenu := FPopupYil;

  yil := strtoint(copy(datetostr(date),7,4))+1;
  inc(yil);
 // Fyil := inttostr(yil);
//--  popupYil.Items.Clear;
  for I := 1 to 10 do
  begin
   yil := yil - 1;
   if FpopupYil.items.Find(inttostr(yil)) = nil
   Then Begin
     item := TMenuItem.Create(self);
     item.Caption := inttostr(yil);
    // item.Name := protokol + '-' + hasta;
     item.onClick := PopupClick;
     FpopupYil.Items.Insert(FpopupYil.Items.Count  , item);
   End;
  end;

end;

function TcxImageComboKadir.getFilter;
begin
  result := FFilter;
end;



function TcxImageComboKadir.getFilterSet: TimageComboKadirFilterSet;
begin
  result := FFilterSet;
end;

function TcxImageComboKadir.getItemString : String;
var
  I : integer;
  ss : string;
begin
  for I := 0 to TcxImageComboKadir(self).Properties.Items.Count - 1 do
  begin
    ss := ss + ',' + TcxImageComboKadir(self).Properties.Items[I].Value;
  end;
  getItemString := copy(ss,2,500);
end;

procedure TcxImageComboKadir.setFilter(const value : string);
const
  harflerK = 'abcçdefgðhýijklmnoöpqrsþtuüvwxyz';
  harflerB = 'ABCÇDEFGÐHIÝJKLMNOÖPQRSÞTUÜVWXYZXW';
  rakamlar = '0123456789';
var
  ado : TADOQuery;
  Tlist : TstringList;
  i , startIndex , endIndex : integer;
  chr : string;
begin
  FFilter := value;

  if FConn <> nil
  then begin
    if FTableName = '' then exit;
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := FConn;
      try

        if FTableTip = tpTable then
        begin
         ado.SQL.Text := 'select distinct ' + FValueField + ',' + FDisplayField + ' from ' + FTableName +
         ifthen(FFilter = '','',' where ' + FFilter ) + ' ORDER BY ' + FDisplayField;
        end;
        if FTableTip = tpSp then
        begin
         ado.SQL.Text := FTableName;
        end;

        ado.Open;


      except
      end;

      Properties.Items.Clear;

      while not ado.Eof do
      begin
        FItem := Properties.Items.add;
        FItem.Value := ado.FieldByName(FValueField).AsString;
        FItem.Description := ado.FieldByName(
        stringReplace(stringReplace(FDisplayField,'[','',[rfReplaceAll]),']','',[rfReplaceAll])
        ).AsString;
        ado.Next;
      end;
      (*
      if FBosOlamaz = False  then
      begin
          FItem := Properties.Items.add;
          FItem.Value := Null;
          FItem.Description := 'Atanmamýþ';
      end; *)

      (*
      if FItemList <> ''
      Then Begin
            chr := ';';
            TList := TStringList.Create;
            try
              ExtractStrings([','],[],PChar(ItemList),Tlist);
              for I := 0 to Tlist.Count - 1 do
              begin
                Tlist[I] := StringReplace(Tlist[I],'|',chr,[rfReplaceAll]);
                FItem := Properties.Items.add;
                FItem.Value := copy(Tlist[I],1,pos(chr,Tlist[I])-1);
                FItem.Description := copy(Tlist[I],pos(chr,Tlist[I])+1,200);
              end;
            finally
              TList.Free;
            end;

      End;
        *)
    finally
      ado.Free;
    end;
  end
  else
  begin

        if pos('..',FItemList) > 0
        then begin
           Properties.Items.Clear;
           if pos(copy(FItemList,1,1),rakamlar) > 0
           then begin
              try
               startIndex := strToint(copy(FItemList,1, pos('.',FItemList)-1));
               endIndex := strToint(copy(FItemList,pos('..',FItemList)+2,10));
              except
                startIndex := 0;
                endIndex := 0;
              end;

              Properties.Items.Clear;

              for I := startIndex to endIndex do
              begin
                FItem := Properties.Items.add;
                FItem.Value := intToStr(I);
                FItem.Description := intToStr(I);
              end;
           end
           else
           if pos(copy(FItemList,1,1),harflerK) > 0
           then begin
              startIndex := pos(copy(FItemList,1,1),harflerK);
              endIndex := pos(copy(FItemList,4,1),harflerK);


              for I := startIndex to endIndex do
              begin
                FItem := Properties.Items.add;
                FItem.Value := harflerK[I];
                FItem.Description := harflerK[I];
              end;
           end
           else
           if pos(copy(FItemList,1,1),harflerB) > 0
           then begin
              startIndex := pos(copy(FItemList,1,1),harflerB);
              endIndex := pos(copy(FItemList,4,1),harflerB);
              for I := startIndex to endIndex do
              begin
                FItem := Properties.Items.add;
                FItem.Value := harflerB[I];
                FItem.Description := harflerB[I];
              end;
           end;
        end
        else
        begin
            TList := TStringList.Create;
            try
              ExtractStrings([','],[],PChar(ItemList),Tlist);
          //    Split(',',ItemList,TList);
              for I := 0 to Tlist.Count - 1 do
              begin
                FItem := Properties.Items.add;
                FItem.Value := copy(Tlist[I],1,pos(';',Tlist[I])-1);
                FItem.Description := copy(Tlist[I],pos(';',Tlist[I])+1,200);
              end;
            finally
              TList.Free;
            end;
        end;
  end;
//  ItemIndex := 0;
end;


procedure TcxImageComboKadir.setFilterSet(const value: TimageComboKadirFilterSet);
begin

        FFilterSet := value;
        self.Properties.Items.Clear;
 //       FItemList := '';

        if FFilterSet = fsDoktorlar
        then begin
           FTableName := 'DoktorlarT';
           FValueField := 'kod';
           FDisplayField := 'tanimi';
           FFilter := ' Aktif = 1';
        end
        else
        if FFilterSet = fsSirketler
        then begin
           FTableName := 'SIRKETLER_TNM';
           FValueField := 'kod';
           FDisplayField := 'tanimi';
           FFilter := ' Aktif = 1';
        end
        else
        if FFilterSet = fsVatandasTip
        then begin
           FTableName := 'SKRS_HASTATIPI';
           FValueField := 'Kodu';
           FDisplayField := 'ADI';
           FFilter := ' AKTIF = 1';
        end
        else
        if FFilterSet = fsSigortaliTur
        then begin
           FTableName := 'Medula_SigortaliTurleri';
           FValueField := 'Kod';
           FDisplayField := 'tanimi';
           FFilter := '';
        end
        else
        if FFilterSet = fsDevKurum
        then begin
           FTableName := 'Medula_DevredilenKurumlar';
           FValueField := 'Kod';
           FDisplayField := 'tanimi';
           FFilter := '';
        end
        else
        begin
            FConn := nil;

            if FFilterSet = fsSgkDurumTip
            then begin
               FItemList := '1;Çalýþan,2;Emekli,3;SSK Kurum Personeli,4;Diðer';
            end
            else

            if FFilterSet = fsParaBirim
            then begin
               FItemList := '1;TL,2;ABD(Dolarý),3;Euro';
            end
            else
            if FFilterSet = fsOdemeTip
            then begin
               FItemList := '1;Nakit,2;Kredi Kart,3;Çek,4;Senet';
            end
            else
            if FFilterSet = fsMedeniHal
            then begin
               FItemList := '0;Evli,1;Bekar,2;Boþanmýþ,3;Dul';
            end
            else
            if FFilterSet = fsKanGrubu
            then begin
               FItemList := '1;A Rh(+),2;A Rh(-),3;B Rh(+),4;B Rh(-),5;AB Rh(+),6;AB Rh(-),7;0 Rh(+),8;0 Rh(-)';
            end
            else
            if FFilterSet = fsCinsiyet
            then begin
               FItemList := '0;Bay,1;Bayan';
            end
            else
            if FFilterSet = fs0_9
            then begin
               FItemList := '0..9';
            end
            else
            if FFilterSet = fsA_Z
            then begin
               FItemList := 'A..Z';
            end
            else
            if FFilterSet = fsEvetHayýr
            then begin
               FItemList := '1;Evet,0;Hayýr';
             end
            else
            if FFilterSet = fsAktifPasif
            then begin
               FItemList := '1;Aktif,0;Pasif,2;Yeni,-1;Tümü,4;Ayrýldý,3;Kara Liste';
             end
             else
            if FFilterSet = fsDiyalizAktifPasif
            then begin
               FItemList := '1;Aktif,0;Pasif,2;Misafir,;Tümü';
             end
            else
            if FFilterSet = fsGunler
            then begin
               FItemList := '0;PAZAR,1;PAZARTESÝ,2;SALI,3;ÇARÞAMBA,4;PERÞEMBE,5;CUMA,6;CUMARTESÝ';
            end
            else
            if FFilterSet = fsAylar
            then begin
               FItemList := '01;OCAK,02;ÞUBAT,03;MART,04;NÝSAN,05;MAYIS,06;HAZÝRAN,07;TEMMUZ,08;AÐUSTOS,09;EYLÜL,10;EKÝM,11;KASIM,12;ARALIK';
            end
            else
            begin
            end;
            Filter := '';

        end;
end;

constructor TcxCheckGroupKadir.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  self.Properties.ClearKey := VK_DELETE;
 // FGetItemList := TStringList.Create;
  //  self.EditValue:= Null;
end;

(*
destructor TcxCheckGroupKadir.Destroy;
begin
//  FGetItemList.free;
end;
*)

procedure TcxCheckGroupKadir.setFilter(const value : string);
var
  ado : TADOQuery;
  Tlist : TstringList;
  i : integer;
  s : string;
begin
  FFilter := value;
  Properties.Items.Clear;

  if FConn <> nil
  then begin
    if FTableName = '' then exit;
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := FConn;
      try
        ado.SQL.Text := 'select distinct ' + FValueField + ',' + FDisplayField + ' from ' + FTableName +
        ifthen(FFilter = '','',' where ' + FFilter ) +
        ' ORDER BY ' + ifThen(FOrderField=display,FDisplayField, FValueField);
        ado.Open;

        Height := (ado.RecordCount * 21) + 21;

      except
      end;

  //    EditValue := '';
      while not ado.Eof do
      begin
        FItem := Properties.Items.add;
        FItem.Tag := ado.Fields[0].AsInteger;
        FItem.Caption := ado.Fields[1].AsString;
        ado.Next;
      end;
       // FillChar(s , ado.RecordCount, '1');
       if FTumuSecili then
         EditValue := StringOfChar('1', ado.RecordCount)
        else
         EditValue := StringOfChar('0', ado.RecordCount);

      (*
      if FBosOlamaz = False  then
      begin
          FItem := Properties.Items.add;
          FItem.Value := Null;
          FItem.Description := 'Atanmamýþ';
      end; *)

      if FItemList <> ''
      Then Begin
        TList := TStringList.Create;
        try
          ExtractStrings([','],[],PChar(ItemList),Tlist);
          for I := 0 to Tlist.Count - 1 do
          begin
            FItem := Properties.Items.add;
            FItem.Tag := strtoint(copy(Tlist[I],1,pos(';',Tlist[I])-1));
            FItem.Caption := copy(Tlist[I],pos(';',Tlist[I])+1,200);
          end;
        finally
          TList.Free;
        end;
      End;
    finally
      ado.Free;
    end;
  end
  else
  begin
    TList := TStringList.Create;
    try
      ExtractStrings([','],[],PChar(ItemList),Tlist);
  //    Split(',',ItemList,TList);
      for I := 0 to Tlist.Count - 1 do
      begin
        FItem := Properties.Items.add;
        FItem.Tag := strtoint(copy(Tlist[I],1,pos(';',Tlist[I])-1));
        FItem.Caption := copy(Tlist[I],pos(';',Tlist[I])+1,200);
      end;
    finally
      TList.Free;
    end;
  end;
end;



function TcxCheckGroupKadir.getFilter;
begin
  result := FFilter;
end;

function TcxCheckGroupKadir.getItemString : String;
var
  I : integer;
  ss : string;
begin
  for I := 0 to Properties.Items.Count - 1 do
  begin
    ss := ss + ',' + inttostr(Properties.Items[I].Tag);
  end;
  getItemString := copy(ss,2,500);
end;


function TcxCheckGroupKadir.getItemCheckString : String;
var
  I : integer;
  ss : string;
begin
  for I := 1 to length(EditingValue) do
  begin
     if  vartoStr(EditingValue)[I] = '1' then
      ss := ss + ',' + inttostr(Properties.Items[I-1].Tag);
  end;
  getItemCheckString := ss;
end;


function TcxCheckGroupKadir.getItemCheckArrayOfString : ArrayOfString;
var
  I , r : integer;
  ss : ArrayOfString;
begin
  r := 0;
  SetLength(ss,getItemCheckCount);
  for I := 1 to length(EditingValue) do
  begin
     if  vartoStr(EditingValue)[I] = '1'
     then begin
      ss[r] := inttostr(Properties.Items[I-1].Tag);
      r := r + 1;
     end;
  end;
  getItemCheckArrayOfString := ss;
end;


function TcxCheckGroupKadir.getItemCheckCount: integer;
var
 I : integer;
begin
  Result := 0;
  for I := 1 to length(EditingValue) do
  begin
    if  vartoStr(EditingValue)[I] = '1' then
    Result := Result + 1;
  end;
end;

procedure TcxCheckGroupKadir.setItemStringCheck(value : string);
var
  s : TStringList;
  I,r : integer;
  Ev : string;
begin
  s:= TStringList.Create;
  Ev := '';
  try
    ExtractStrings([','],[],PChar(value),s);
    Ev := StringOfChar ('0',Properties.Items.Count);
   // FillChar(Ev,Properties.Items.Count, '0');
    EditValue := Ev;

    for r := 0 to s.Count - 1 do
    begin
        for I := 0 to self.Properties.Items.Count - 1 do
        begin
          if s[r] = inttostr(Properties.Items[I].Tag) then
          EditValue := StuffString(EditValue, I+1, 1, '1');
          //else
         // EditValue := StuffString(EditValue, I, 1, '0');
        end;
    end;
  finally
    s.free;
  end;


end;



function TcxTextEditKadir.GetSQLValue : string;
begin
  result := QuotedStr(self.EditingValue);
end;




procedure TcxTextEditKadir.KeyPress(Sender: TObject; var Key: Char);
begin

   if KarakterTip = ktNone
   then exit
   else
    if KarakterTip = ktHarf
    then begin
     if Key in ['0'..'9'] then key := #0;
    end
   else
   if KarakterTip = ktRakam
   then begin
    if not(key in ['0'..'9',#8,#35,#36,#37,#38,#39,#40]) then key := #0;
   end;
   // if TCharacter.IsLetter(Key) then Key := #0;

   // if Key in
   // ['a'..'z','A'..'Z','ç','Ç','þ','Þ','ð','Ð','ö','Ö','ü','Ü','Ý'] then key := #0;


end;

function TcxTextEditKadir.getKarakterTip: TKarakterTip;
begin
  getKarakterTip := FKarakterTip;
end;

procedure TcxTextEditKadir.setKarakterTip(const value: TKarakterTip);
begin
   FKarakterTip := value;
end;

function TcxCheckBoxKadir.GetSQLValue : string;
begin
  result := ifThen(self.EditingValue = True,Secili,SeciliDegil);
end;


function TcxDateEditKadir.GetValue(format : string = 'YYYYMMDD') : string;
begin
  if self.EditValue = null
  then Result := 'NULL'
  else
  result := FormatDateTime(format,self.Date);
end;

function TcxDateEditKadir.GetSQLValue(format : string = 'YYYYMMDD') : string;
var
  _d_ : TDate;
begin
  if self.EditValue = null
  then Result := 'NULL'
  else
   result := QuotedStr(FormatDateTime(format,self.Date));
end;


function TcxDateEditKadir.GetTXSDateTime : TXSDateTime;
var
  _d_ : TDate;
  t1 : TXSDateTime;
begin
  if self.EditValue = null
  then Result := nil
  else
  begin
    t1 := TXSDateTime.Create;
    t1.Day := dayof(self.Date);
    t1.Month := MonthOf(self.Date);
    t1.Year := YearOf(self.Date);
    result := t1;
  end;

end;


class function TcxDateEditKadir.GetPropertiesClass: TcxCustomEditPropertiesClass;
begin
  Result := TcxCustomDateEditPropertiesKadir;
end;



procedure TcxCustomDateEditPropertiesKadir.ValidateDisplayValue(var ADisplayValue: TcxEditValue;
var AErrorText: TCaption; var AError: Boolean;
AEdit: TcxCustomEdit);
begin
   //
   inherited;
   if AError = True then
   begin
     AErrorText := 'Hatalý Tarih Aralýðý : ' +
     datetostr(TcxDateEditKadir(AEdit).Properties.MinDate) + ' - ' +
     datetostr(TcxDateEditKadir(AEdit).Properties.MaxDate);
     ADisplayValue := '';
   end;
end;


 (*

procedure TcxGridKadir.ButtonsClick(ButtonIndex: integer);
var
  Grid : TcxGridDBTableView;
begin
  Grid := TcxGridDBTableView(TcxGridKadir(self).ActiveView);
  Grid.NavigatorButtons[ButtonIndex].Click;
end;
   *)

constructor TcxGridKadir.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);

  FDataset := TADOQuery.Create(self);
  FDataset.AfterOpen := DatasetAfterOpen;
  FDataSource := TDataSource.Create(self);
  FDataSource.DataSet := FDataset;
  FPMenu := TPopupMenu.Create(self);
  MenuItem := TMenuItem.Create(FPMenu);
  MenuItem.Caption := 'Excel';
  MenuItem.Tag := 0;
  MenuItem.OnClick := TClick;
  FpMenu.Items.Add(MenuItem);
  PopupMenu := FPMenu;



  //TcxGridKadir(self).Levels[1].GridView := FGrid;




  cxGridToTr;

 (*
  TcxGridDBTableView(TcxGrid(TPopupMenu(TMenuItem(self).GetParentMenu).PopupComponent).ActiveView).DataController.DataSource.dataset;
  if TPopupMenu(TcxGridDBTableView(TcxGridKadir(self).ActiveView).PopupMenu).Items.Count = 0
  then begin
    PopupMenu := FPMenu;
  end
  else
  begin

    TPopupMenu(TcxGridDBTableView(TcxGridKadir(self).ActiveView).PopupMenu).Items.Add(FPMenu.Items);

  //  for MenuItem in PopupMenu.items do
 //     begin
 //     end;

  end;
   *)



end;

(*
procedure TcxGridKadir.AfterConstruction;
begin
  inherited AfterConstruction;

   ListeBanded := TcxGridDBBandedTableView(TcxGridKadir(self).ActiveView);
end;
   *)

function TcxGridKadir.SelectedCellValue(ColonFieldName : string) : Values;
var
  Grid : TcxGridDBTableView;
  _Values_ : Values;
  i : integer;
begin
  Grid := TcxGridDBTableView(TcxGridKadir(self).ActiveView);
  SetLength(_Values_,0);
  SetLength(_Values_,Grid.Controller.SelectedRecordCount);
  for i := 0 to Grid.Controller.SelectedRecordCount - 1 do
  begin
    _Values_[i] := Grid.DataController.GetValue(
      Grid.Controller.SelectedRows[i].RecordIndex,
        Grid.DataController.GetItemByFieldName(ColonFieldName).Index);
  end;
  Result := _Values_;
end;

function TcxGridKadir.SelectedCellValue(ColonFieldName : string ; Row : integer) : Variant;
var
  Grid : TcxGridDBTableView;
begin
  Grid := TcxGridDBTableView(TcxGridKadir(self).ActiveView);
  SelectedCellValue := '';
  SelectedCellValue := Grid.DataController.GetValue(
    Grid.Controller.SelectedRows[Row].RecordIndex,
      Grid.DataController.GetItemByFieldName(ColonFieldName).Index);
end;

procedure TcxGridKadir.SelectedCellSetValue(ColonName : string ; Row : integer ; Value : Variant);
var
  Grid : TcxGridDBTableView;
begin
  Grid := TcxGridDBTableView(TcxGridKadir(self).ActiveView);
  Grid.BeginUpdate;
  Grid.DataController.SetValue(
        Grid.Controller.SelectedRows[Row].RecordIndex,
          Grid.DataController.GetItemByFieldName(ColonName).Index,Value);
  Grid.EndUpdate;
end;


procedure TcxGridKadir.DatasetAfterOpen(DataSet: TDataSet);
begin
  inherited;
   TcxGridDBTableView(ActiveView).DataController.DataSource := FDataSource;
end;




(*
destructor TcxGridKadir.Destroy;
begin
   FreeAndNil(v);
  inherited;
end;
*)


(*
procedure TcxGridKadir.NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
//
end;
    *)
procedure TcxGridKadir.TClick(sender : TObject);
var
  SD : TSaveDialog;
begin
   Liste :=  TcxGridDBTableView(TcxGridKadir(self).ActiveView);
   case TMenuItem(sender).Tag of

     0 : begin
       SD := TSaveDialog.Create(nil);
       try
         SD.FileName := ifThen(Self.ExcelFileName = '',GetParentForm(Self).Name,Self.ExcelFileName) + '.XLS';
         if not SD.Execute then Exit;
         ExportGridToExcel(SD.FileName, self);
       finally
         SD.Free;
       end;
     end;
   end;


end;



constructor TLabIslemleri.Create(AOwner: TComponent);
var
  reg : TREGISTRy;
begin
  inherited Create(AOwner);
  reg := Tregistry.Create;
  try
    reg.OpenKey('Software\NOKTA\NOKTA',True);
    try
      Fconnectionstring := 'Provider=SQLOLEDB.1;Password=1;Persist Security Info=False;User ID=sa;Initial Catalog=KLINIK;Data Source='
                           + reg.ReadString('servername');
    finally
      reg.CloseKey;
    end;
  finally
    reg.Free;
  end;
  //  SetLength(Fsonuclar,FTestAdet);
end;

destructor TLabIslemleri.Destroy;
begin
  try
  // FDosya := '';
    SetLength(Fsonuclar,0);
  finally
    inherited;
  end;
end;

function TLabIslemleri.SonucKaydet : String;
var
  Sonuclar : ArraySonucBilgisi;
  sql : string;
  ado : TADOQuery;
  conn : TADOConnection;
  i , j : integer;
begin
  conn := TADOConnection.Create(nil);
  try
    conn.ConnectionString := Fconnectionstring;
    Conn.LoginPrompt := False;
    conn.Connected := True;
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := conn;
      j := 1;
      for i := 0 to length(FSonuclar) - 1 do
      begin
        try
           sql := 'update laboratuvar_sonuc ' +
                  ' set sonuc1 = ' + QuotedStr(Fsonuclar[i].Sonuc) +
                  ' where barkodNo = ' + QuotedStr(Fsonuclar[i].KabulNo) +
                  ' and parametreadi = ' + QuotedStr(CihazTestKodu_To_LisTestKodu(Fsonuclar[i].TestNo)) +
                  ' select @@rowcount ';


          QuerySelect(ado,sql);
          if ado.Fields[0].AsInteger > 0
          Then Begin
              SetLength(Sonuclar,j);
              sonuclar[j].KabulNo := Fsonuclar[i].Sonuc;
              Sonuclar[j].TestNo := Fsonuclar[i].TestNo;
              Sonuclar[j].KabulNo := Fsonuclar[i].KabulNo;
              inc(j);
          End;

        except
           result := '0001';
        end;
      end;

      IF Assigned(OnKaydet) THEN  OnKaydet (Self, Sonuclar);
      conn.Connected := False;
    finally
      ado.Free;
    end;
  finally
    conn.Free;
  end;
end;


function TLabIslemleri.CihazTestKodu_To_LisTestKodu(code : string) : string;
var
  sql : string;
  ado :TADOQuery;
  conn : TADOConnection;
begin
  conn := TADOConnection.Create(nil);
  try
    conn.ConnectionString := Fconnectionstring;
    Conn.LoginPrompt := False;
    conn.Connected := True;
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := conn;

      sql := 'select parametreadi from laboratuvar_parametre where CihazTestKodu = ' + QuotedStr(code);
      QuerySelect(ado,sql);
      result := ado.Fields[0].AsString;
    finally
      ado.Free;
    end;
  finally
    conn.Free;
  end;


end;



function TLabIslemleri.Kabulet : String;
var
  sql : string;
  ado : TADOQuery;
  conn : TADOConnection;
  kabulNo : string;
begin
   conn := TADOConnection.Create(nil);
   try
     conn.ConnectionString := Fconnectionstring;
     conn.LoginPrompt := false;
     conn.Connected := True;
     ado := TADOQuery.Create(nil);
     try
       ado.Connection := conn;
       try
         sql := ' exec sp_YeniLabKabulNoAl ';
         QuerySelect(ado,sql);
         kabulNO := ado.Fields[0].AsString;

          sql := 'exec sp_YeniLabKabul ' +
                 #39 + FKabulBilgi.dosyaNo + #39 + ',' +
                 FKabulBilgi.gelisNo + ',' +
                 FKabulBilgi.detayNo + ',' +
                 #39 + FKabulBilgi.code + #39 + ',' +
                 #39 + FKabulBilgi.grup + #39 + ',' +
                 #39 + FKabulBilgi.kabulTarihi + #39 + ',' +
                 #39 + FKabulBilgi.kabulEden + #39 + ',' +
                 #39 + FKabulBilgi.durum + #39 + ',' +
                 #39 + FKabulBilgi.Icode + #39 + ',' +
                 #39 + FKabulBilgi.name + #39 + ',' +
                 #39 + FKabulBilgi.sira + #39 + ',' +
                 #39 + kabulNo + #39;

       //   QueryExec(ado,sql);
          result := '1'

       except
          result := '0001';

       end;
     finally
       ado.Free;
     end;
   finally
     conn.Free;
   end;
end;

procedure TLabIslemleri.DiziSet(const value : integer);
begin
  FTestAdet := value;
  SetLength(Fsonuclar,FTestAdet);
end;

constructor THastaBilgileriGroup.Create(AOwner: TComponent);
begin
  try
    inherited Create(AOwner);

    FHb := THb.Create;

    HastaAdi := TEdit.Create(self);
    HastaAdi.Parent := self;
    HastaAdi.ParentFont := False;
    HastaAdi.Top := 20;
    HastaAdi.Left := 50;
    HastaAdi.TabOrder := 0;
    HastaAdi.TabStop := True;
    HAstaAdi.Text := 'HastaAdi';

    HastaSoyadi := TEdit.Create(self);
    HastaSoyadi.Parent := self;
    HastaSoyadi.ParentFont := False;
    HastaSoyadi.Top := 50;
    HastaSoyadi.Left := 50;
    HastaSoyadi.TabOrder := 0;
    HastaSoyadi.TabStop := True;
    HastaSoyadi.Text := 'HastaSoyadi';


    FHastaAdiFont := THastaAdiFont.Create;
    FHastaSoyaAdi := THastaAdiFont.Create;


  finally
   //  HastaAdi.Free;
  end;

   (*
    HastaSoyadi := TEdit.Create(nil);
    HastaSoyadi.Parent := self;
    HastaSoyadi.Top := 60;
    HastaSoyadi.Left := 50;
    HastaSoyadi.TabStop := True;
    HastaSoyadi.TabOrder := 1;

     *)

end;

(*
procedure THastaBilgileriGroup.WMFontChange(var Message: TMessage);
begin
  inherited;
  Perform(CM_FONTCHANGE, 0, 0);
end;
  *)

procedure THastaBilgileriGroup.CMFontChanged(var Message: TMessage);
begin
  inherited;
  if HandleAllocated then Perform(WM_SETFONT, Font.Handle, 0);
  NotifyControls(CM_PARENTFONTCHANGED);


end;



(*
destructor THastaBilgileriGroup.Destroy;
begin
   FHastaAdi.Free;
end;
  *)

 (*
function THastaBilgileriGroup.setHastaAdi : Tedit;
begin
    FHastaAd.Assign(value);
end;
   *)

procedure THastaBilgileriGroup.setHastaAdiFont (const value : TFont);
begin
    FHastaAdiFont.Assign(value);
    HastaAdi.Font := FHastaAdiFont;
    IF Assigned(OnHastaAdiFontChange) THEN  OnHastaAdiFontChange(Self, HHastaAdiFont);
    ShowMessage('a');
end;

procedure THastaBilgileriGroup.SetHb(const Value: THb);
begin
  FHb.Assign(Value);
end;

function THastaBilgileriGroup.GetHastaAdiFont : TFont;
begin
   result := HastaAdi.Font;
end;

procedure THastaBilgileriGroup.setHastaSoyadiFont (const value : TFont);
begin
    FHastaSoyaAdi.Assign(value);
    HastaSoyadi.Font := FHastaSoyaAdi;
   // IF Assigned(OnHastaAdiFontChange) THEN  OnHastaAdiFontChange(Self, HHastaAdiFont);

end;

function TMainMenuKadir.MenuClick(_tag_ : integer) : integer;
begin
   MenuClick := _tag_;
end;

(*
function TMainMenuKadir.GetDataSource: TDataSource;
begin
  Result := FDataSource;
end;


procedure TMainMenuKadir.SetDataSource(const Value: TDataSource);
begin
 // if IsLinkedTo(Value) then DatabaseError(SCircularDataLink, Self);
  FDataSource := Value;
end;
  *)

procedure TMainMenuKadir.LinkClick(Sender: TObject; ALink: TdxNavBarItemLink);
begin
  MenuId := ALink.Item.Tag;
end;

procedure TMainMenuKadir.DoLinkMouseDown(Link: TdxNavBarItemLink);
begin
  inherited;
  FpressItem := Link.Item;
end;


procedure TMainMenuKadir.DragOver(Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
   if Assigned(FtargetGroup) = True
   then
    if FtargetGroup.Tag <> 500 then
    Accept := False;
end;


procedure TMainMenuKadir.DragDrop(Source: TObject; X, Y: Integer);
begin
    if dxNavBarDragObject.TargetGroup.Tag = 500 then
    begin
       FtargetGroup := dxNavBarDragObject.TargetGroup;
    end
    else
    begin
      FtargetGroup := nil;
    end;

   inherited;

end;

procedure TMainMenuKadir.DoEndDrag(Target: TObject; X, Y: Integer);
var
  i : TdxNavBarItem;
  sql : string;
  ado : TADOQuery;
begin
    inherited;
    if Assigned(FtargetGroup) = True
    then begin
      // ShowMessage(_pressItem_.Caption,'','','info');
       sql := ' if not exists (select * from MenuIslem_SK where KAYITID = ' + inttostr(FpressItem.Tag)+ ') ' +
              'insert into MenuIslem_SK ' +
              '(Menu, KAYITID, MainMenu, Kapsam, imageIndex, ShowTip, FormTag,Kullanici) ' +
              ' values (' +
               QuotedStr(FpressItem.Caption) + ',' +
               inttostr(FpressItem.Tag) + ',' +
               QuotedStr(FpressItem.Caption) + ',' +
               inttostr(FtargetGroup.Tag) + ',' +
               inttostr(FpressItem.SmallImageIndex) + ',' +
               inttostr(FpressItem.ShowTip) + ',' +
               inttostr(FpressItem.FormID) + ',' +
               QuotedStr(KullaniciAdi) + ')';

       ado := TADOQuery.Create(nil);
       ado.Connection := Conn;
       ado.SQL.Text := sql;
       ado.ExecSQL;
       ado.Free;
       //QueryExec(nil,sql);
    end
    else
    begin
     // if mrYes = ShowMessage('Menu Elemaný Silinecek Emin misiniz?','','','msg')
    //  then begin
          sql := 'delete from MenuIslem_SK where KAYITID = ' + inttostr(FpressItem.Tag);
          ado := TADOQuery.Create(nil);
          ado.Connection := Conn;
          ado.SQL.Text := sql;
          ado.ExecSQL;
          ado.Free;
         // datalar.QueryExec(nil,sql);
     // end;
    end;


    MenuGetir;
   FtargetGroup := nil;

end;


(*
procedure TMainMenuKadir.LinkPress(Sender: TObject;ALink: TdxNavBarItemLink);
begin
  FpressItem := ALink.Item;
end;
  *)

procedure TMainMenuKadir.TimerShowTimer(Sender: TObject);
begin
  left := left + Slite;
  if left >= 0 then TimerShow.Enabled := false;
end;

procedure TMainMenuKadir.TimerGizleTimer(Sender: TObject);
begin
  left := left - Slite;
  if left <= -1 * Width then TimerGizle.Enabled := false;
end;


procedure TMainMenuKadir.Goster;
begin
  TimerShow.Enabled := True;
end;

procedure TMainMenuKadir.Gizle;
begin
  TimerGizle.Enabled := True;
end;


function TMainMenuKadir.getTagC : integer;
begin
    getTagC := MenuId;
end;

procedure TMainMenuKadir.setTagC(const value : integer);
begin
    FTagC := value;
end;


procedure TMainMenuKadir.ActionListExecute (Sender: TObject);
begin
end;


function TMainMenuKadir.TusKontrol(tus : string) : integer;
var
   sql : string;
   ado : TADOQuery;
begin
  try
    ado := TADOQuery.Create(nil);
    try
      ado.Connection := FConn;
      sql := 'select * from UserMenuSettings U ' +
             ' join MenuIslem M on M.KAYITID = U.ID ' +
             ' where Kullanici = ' + QuotedStr(FKullaniciAdi) + ' and shortCut = ' + QuotedStr(tus) + ' and Izin = 1 ';
      ado.SQL.Text := sql;
      ado.Open;

      if not ado.eof
      then
       result := ado.FieldByName('KAYITID').AsInteger
      else result := 0;
    finally
      ado.Free;
    end;
  except
   result := 0;
   exit;
  end;


end;



procedure TMainMenuKadir.MenuGetir;
var
  i,r , u , ug : integer;
  sql : string;
  ado : TADOQuery;
  MenuGorunum : array of TMenuGorunum;
  MenuSatir : TMenuGorunum;

procedure RemoveIndex(index : Integer);
var
  i : Integer;
  dizitmp : array of TMenuGorunum;
begin
  SetLength(dizitmp, Length(MenuGorunum) - 1);
  for i := 0 to Length(MenuGorunum) - 1 do
  begin
    if i < index then
      dizitmp[i] := MenuGorunum[i]
    else if i > index then
      dizitmp[i - 1] := MenuGorunum[i];
  end;
  MenuGorunum := nil;
 // SetLength(MenuGorunum,0);
  SetLength(MenuGorunum, Length(dizitmp));
  for i := 0 to Length(dizitmp) - 1 do
    MenuGorunum[i] := dizitmp[i];
  dizitmp := nil;
 // SetLength(dizitmp,0);
end;

function MenuSatiriVar(ID,Kapsam : integer) : Boolean;
var
 I : integer;
 MenuSatir_ : TMenuGorunum;
begin
  MenuSatiriVar := False;
  for MenuSatir_ in MenuGorunum do
  begin
    if (MenuSatir_.KAYITID = ID) and (MenuSatir_.Kapsam = Kapsam)
       //and (MenuGorunum[I].Izin = 1)
    then
    begin
      MenuSatiriVar := True;
      Break;
    end;
  end;
end;

begin
 // TimerShow := TTimer.Create(self);
  //TimerGizle := TTimer.Create(self);
  TimerShow.Interval := 1;
  TimerGizle.Interval := 1;
  TimerShow.OnTimer  := TimerShowTimer;
  TimerGizle.OnTimer := TimerGizleTimer;

 // OnLinkClick := LinkClick;
  ado := TADOQuery.Create(nil);
  try
    i := 0;
    u := 0;
    ado.Connection := FConn;
    try
     if ProgramTip = 'O'
     Then
       sql := 'exec sp_MenuGetir @kullanici = ' + QuotedStr(FKullaniciAdi)
     Else
     sql := 'exec sp_MenuGetir @kullanici = ' + QuotedStr(FKullaniciAdi) + ',@LisansTip = ' + IntToStr(FLisansTip) ;/// + ',' + QuotedStr(FProgramTip);

     QuerySelect(ado,sql);
     u := ado.RecordCount;
     SetLength(MenuGorunum,0);
     i := 0;
     if u > 0
     then begin
       SetLength(MenuGorunum,u);
       while not ado.Eof do
       begin
         if MenuSatiriVar(ado.FieldByName('KAYITID').AsInteger,ado.FieldByName('KAPSAM').AsInteger) = False
           then begin
             MenuSatir.Kullanici := ado.FieldByName('Kullanici').AsString;
             MenuSatir.Menu := ado.FieldByName('Menu').AsString;
             MenuSatir.Izin := ado.FieldByName('Izin').AsInteger;
             MenuSatir.KAYITID := ado.FieldByName('KAYITID').AsInteger;
             MenuSatir.MainMenu := ado.FieldByName('MainMenu').AsString;
             MenuSatir.Kapsam := ado.FieldByName('Kapsam').AsInteger;
             MenuSatir.imageIndex := ado.FieldByName('imageIndex').AsInteger;
             MenuSatir.formId := ado.FieldByName('FormTag').AsInteger;
             MenuSatir.ShowTip := ado.FieldByName('ShowTip').AsInteger;
             MenuSatir.Sira := ado.FieldByName('Sira').AsInteger;

             if ProgramTip = 'O'
             Then
               MenuSatir.LisansTip := 3
             Else
               MenuSatir.LisansTip := ado.FieldByName('Lisans').AsInteger;
             MenuGorunum[i] := MenuSatir;
           end;
           inc(i);
           ado.Next;
       end;
     end;
    except on e : exception do
     begin
      SetLength(MenuGorunum,0);
      exit;
     end;
    end;

    Groups.Clear;
    Items.Clear;
    ado.First;
    i := 0;
    // gruplarý oluþtur
    for MenuSatir in MenuGorunum do
    begin
      if (MenuSatir.Kapsam = 0)then
        Groups.Add;
    end;

    // gruplarý sýrasýna göre doldur
    for MenuSatir in MenuGorunum do
    begin
     if (MenuSatir.Kapsam = 0)// and (MenuSatir.Izin = 1)
     then begin
       Groups[MenuSatir.Sira].Expanded := false;
       Groups[MenuSatir.Sira].Index := MenuSatir.Sira;
       Groups[MenuSatir.Sira].Caption := MenuSatir.MainMenu;
       Groups[MenuSatir.Sira].Tag := MenuSatir.KAYITID;
       Groups[MenuSatir.Sira].SmallImageIndex := MenuSatir.imageIndex;
       Groups[MenuSatir.Sira].LargeImageIndex := MenuSatir.imageIndex;
       Groups[MenuSatir.Sira].UseSmallImages := false;
       if Groups[MenuSatir.Sira].Tag = 500 then Groups[MenuSatir.Sira].Expanded := True;
       Groups[MenuSatir.Sira].Visible := Boolean(MenuSatir.Izin);

       if ProgramTip = 'O'
       then
         Groups[MenuSatir.Sira].Visible := True
       else
       Groups[MenuSatir.Sira].Visible := Boolean(MenuSatir.LisansTip);

     end;
     ado.Next;
    end;

    // Gruplarýn itemlerýný doldur.
    // Items := MainMenuItemsKadir;
    r := 0;
    for MenuSatir in MenuGorunum do
    begin
     if (MenuSatir.Kapsam  <> 0)// and (MenuSatir.Izin = 1)
     then begin
       Items.Add.Index := r;
       Items[r].Caption := MenuSatir.MainMenu;
       Items[r].Hint := MenuSatir.MainMenu;
       Items[r].Tag := MenuSatir.KAYITID;
       Items[r].SmallImageIndex := MenuSatir.imageIndex;
       Items[r].Visible := Boolean(MenuSatir.Izin);

       if ProgramTip = 'O'
       then
        Items[r].Visible := True
       else
       Items[r].Visible := Boolean(MenuSatir.LisansTip);

     Items[r].FormId := MenuSatir.formId;
     Items[r].ShowTip := MenuSatir.ShowTip;

       for i := 0 to Groups.Count - 1 do
       begin
         if Groups[i].Tag = MenuSatir.Kapsam  then
          Groups[i].CreateLink(items[r]);
       end;
       inc(r);
     end;

    end;

    ado.Close;
  finally
    ado.Free;
  end;

end;



function THastaBilgileriGroup.GetHastaSoyadiFont : TFont;
begin
   result := HastaSoyadi.Font;
end;




function TKadirHastaBilgiPanel.Donustur : string;
var
 sql , kurum ,kurumadi,  Hasta , Cins : string;
 ado : TADOQuery;
 ch : string;
 yas : string;
 dt ,_now_ : Tdate;

begin
   ado := TADOQuery.Create(nil);
   try
     ado.Connection := FConn;

     sql := 'select * from hastaKart where dosyaNO = ' + QuotedStr(FGiris);
     QuerySelect(ado,sql);
     Hasta := ado.fieldbyname('HASTAADI').AsString + ' ' + ado.fieldbyname('HASTASOYADI').AsString;
     dt := tarihyap(ado.fieldbyname('DOGUMTARIHI').AsString);
     Cins := IfThen(ado.fieldbyname('CINSIYETI').AsString = '0','ERKEK','KADIN');
     kurum := ado.fieldbyname('Kurum').AsString;

     sql := 'select ADI1 from Kurumlar where kurum = ' + #39 + kurum + #39;
     QuerySelect(ado,sql);
     kurumadi := ado.fieldbyname('ADI1').AsString;


     if FSonuc = psYan
     Then ch := ' - ';

     _now_ := date;
     yas := tarihFarki(_now_,dt);


     Caption := Hasta + ' - ' + Cins + ' - ' + yas + ' - ' + kurumadi;
   finally
     ado.Free;
   end;
end;


constructor TDoktorComboBox.Create(AOwner: TComponent);
begin
    inherited Create(AOwner);
    FLinC := TStringList.Create;
end;

destructor TDoktorComboBox.Destroy;
begin
  FLinC.Free;
  inherited;
end;


procedure TDoktorComboBox.setLines(const value : TStrings);
begin
    FLinC.Assign(value);
end;

{function TDoktorComboBox.getlines : TStrings;
begin
    Result := FlinC;
end;{}


function TDoktorComboBox.ListeGetir : string;
var
  sql : string;
  ado : TADOQuery;
  //x : integer;
begin

  if FlinC.Count = 0 then exit;

  ado := TADOQuery.Create(nil);
  try
 //   Fstrings := TStringList.Create;
    ado.Connection := FConn;
    //x := FlinC.Count;

    sql := 'select * from ' + Ftable;
  (*
    if Fwhere <> ''
    Then
     sql := sql + ' where ' + lst[FFilterCol] + ' like ' + QuotedStr(Fwhere);
    *)
    QuerySelect(ado,sql);

    dizaynEt(FlinC);

    Items.Clear;
    while not ado.Eof do
    begin
      Items.Add(ado.fieldbyname(FlinC[0]).AsString + ' - ' + ado.fieldbyname(FlinC[1]).AsString);
      ado.Next;
    end;
    Result := '0000';
  finally
    ado.Free;
  end;
    //Lst.Free;
   // lstW.Free;
end;

procedure TDoktorComboBox.dizaynEt(kolonlar : TStrings);
begin


end;



constructor TListeAc.Create(AOwner: TComponent);
begin
    inherited Create(AOwner);
    FGrup := False;
    FLin := TStringList.Create;
    Flin1 := TStringList.Create;

end;


destructor TListeAc.Destroy;
begin
      Flin1.Free;
      FLin.Free;
      inherited;
end;

procedure TListeAc.setLines(const value : TStrings);
begin

    FLin.Assign(value);

end;

{function TListeAc.getlines : TStrings;
begin
    Result := Flin;
end;{}




procedure TListeAc.setBiriktir(const value : Boolean);
begin
    FBiriktirmeliSecim := value;
 (*
    if FBiriktirmeliSecim
    then begin
      frmListeAc.Biriktir := True;
      frmListeAc.cxSecimGrid.Visible := True;

    end
    else begin
      frmListeAc.Biriktir := False;
      frmListeAc.cxSecimGrid.Visible := True;

    end;
   *)

end;

function TListeAc.getBiriktir : Boolean;
begin
    Result := FBiriktirmeliSecim;
end;


procedure TListeAc.setLines1(const value : TStrings);
begin
    Flin1.Assign(value);
end;

{function TListeAc.getlines1 : TStrings;
begin
    Result := Flin1;
end;{}

procedure TListeAc.SetImageIndex(Value: TImageIndex);
begin


  if FButtonImajIndex <> Value then
  begin
    FButtonImajIndex := Value;


  end;
end;



function TListeAc.Getversiyon : string;
begin
     Result := 'Ver 1.0 Nokta Yazýlým';

end;

procedure TListeAc.Split (const Delimiter: Char; Input: string; const Strings: TStrings) ;
begin
   Assert(Assigned(Strings)) ;
   Strings.Clear;
   Strings.Delimiter := Delimiter;
   Strings.DelimitedText := Input;
end;


procedure TListeAc.QuerySelect(Q: TADOQuery; sql:string);
begin
//    if Pos ('WHERE',AnsiUpperCase(sql)) <> 0
//    Then sql := StringReplace(sql,'WHERE','WITH(NOLOCK) WHERE',[rfReplaceAll,rfIgnoreCase])
//    else
//      if  (Pos ('GROUP BY',AnsiUpperCase(sql)) = 0)
//      and (Pos ('ORDER BY',AnsiUpperCase(sql)) = 0)
//      Then sql := sql + ' WITH(NOLOCK) ';


    Q.Close;
    Q.SQL.Clear ;
    if Copy(AnsiUppercase(sql) ,1, 6) = 'SELECT'
    Then sql := 'SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED  '+ sql;
    Q.SQL.Add (sql);
//    Q.Prepare;
    Q.Open;
end;


function TListeAc.ListeGetir : ArrayListeSecimler;
var
  sql : string;
  ado : TADOQuery;
  r : integer;
  LstW : TStringList;
 // ListeAc1 : TfrmListeAc;

begin

  if FcolsW = ''
  Then exit;

  //if Fcolcount = 0 then exit;
  if Flin.Count = 0 then exit;

  ado := TADOQuery.Create(nil);
  try

    //Fstrings := TStringList.Create;
    //FstringsWX := TStringList.Create;
    try
      Application.CreateForm(TfrmListeAc, frmListeAc);
      try
        frmListeAc.pnlTitle.Color := FbaslikRenk;
        frmListeAc.pnlOnay.Color := FDipRenk;

        //frmListeAc.btnSec1.Images := FImajList;
        //frmListeAc.btnSec1.ImageIndex := FButtonImajIndex;


        ado.Connection := FConn;

        //lst := TStringList.Create;
        lstW := TStringList.Create;
        try
          //LstColB := TStringList.Create;

          //Split(',',Fcols,lst);
          Split(',',FcolsW,lstW);
          //Split(',',FColbaslik,LstColB);
          //x := Flin.Count;
          //lst.Free;

          if FKaynakTableTip = tpTable then
          begin
            sql := 'select * from ' + Ftable;
            if Fwhere <> ''
            Then
              sql := sql + ' where ' + FWhere;

            if Ffilter <> ''
            Then
              if FWhere = ''
              Then
               sql := sql + ' where '+ Flin[FFilterCol] + ' like ' + QuotedStr(FFilter)
              Else
               sql := sql + ' and '+ Flin[FFilterCol] + ' like ' + QuotedStr(FFilter);


            if FSiralamaKolonu <> ''
            Then
              sql := sql + ' order by ' + FSiralamaKolonu;
          end
          else sql := FTable;




          QuerySelect(ado,sql);

          frmListeAc.Caption := FListeBaslik;
          frmListeAc.pnlTitle.Caption := FListeBaslik;
          frmListeAc.DataSource1.DataSet := ado;
          frmListeAc.dizaynEt(Flin,lstW,Flin1, Ffiltercol,FGrupCol,FGrup,FBiriktirmeliSecim);

          frmListeAc.Liste.ViewData.DataController.Filter.Options :=
          frmListeAc.Liste.ViewData.DataController.Filter.Options + [fcoCaseInsensitive];
          frmListeAc.cxGrid1.LookAndFeel.SkinName := FSkinName;
          frmListeAc.cxGrid2.LookAndFeel.SkinName := FSkinName;
          frmListeAc.btnSec1.LookAndFeel.SkinName := SkinName;
          frmListeAc.Liste.FilterRow.Visible := not FFilterRowGizle;


          frmListeAc.ShowModal;

          if frmListeAc.tus = 0
          Then Begin
            r := frmListeAc.Liste.ViewData.DataController.GetFocusedRecordIndex;
            SetLength(Fstrings,0);
            try
              //ÜÖ 20180118 kayýt yokken recordIndex = -1 olduðu halde varmýþ gibi alýyordu, if'e baðladým
              if r >= 0 then Fstrings := frmListeAc.strings;
            except
            end;
            //ÜÖ 20180118 hiç data yoksa bile seçilmiþ gibi iþlem yapýyordu
            //if length(Fstrings) = 0 then SetLength(Fstrings,1);
            Result := Fstrings;
          End
          Else
          Begin
           // if length(Fstrings) = 0
           // then
            SetLength(Fstrings,0);
            Result := Fstrings;
          End;
          //Lst.Free;
        finally
          lstW.Free;
        end;
      finally
        FreeAndNil (frmListeAc);
      end;
    finally
      //FstringsWX.Free;
    end;
  finally
    ado.Free;
  end;
end;


constructor  TKadirEdit.Create(AOwner: TComponent);
begin
    inherited;
    FEnterlaGec := False;


end;

procedure TKadirEdit.CMEnter(var Message: TCMEnter);
begin
     inherited;
     Color := FRenkEnter;
end;

procedure TKadirEdit.CMExit(var Message: TCMEnter);
begin
     inherited;
     Color := FRenkCikis;
end;


constructor TcxButtonEditKadir.Create(AOwner: TComponent);
begin
    inherited;
    FListeAcTus := 0;
    FBosOlamaz := False;
end;

constructor TcxTextEditKadir.Create(AOwner: TComponent);
begin
    inherited;
    FBosOlamaz := false;
    self.OnKeyPress := KeyPress;
end;

constructor TcxDateEditKadir.Create(AOwner: TComponent);
begin
    inherited;
    FBosOlamaz := false;
    FValueTip := tvDate;
end;

function TcxDateEditKadir.getValueTip : TTarihValueTip;
begin
    getValueTip := FValueTip;
end;

procedure TcxDateEditKadir.setValueTip(const value : TTarihValueTip);
begin
    FValueTip := value;

    if value = tvDate
    then
      TcxDateEdit(Self).Properties.Kind := ckDate
    else
    if value = tvDateTime
    then
      TcxDateEdit(Self).Properties.Kind := ckDateTime;


end;

constructor TcxCheckBoxKadir.Create(AOwner: TComponent);
begin
    inherited;
    FBosOlamaz := false;
end;



procedure TcxTopPanelKadir.ButonClick(Sender: TObject);
begin
 if Assigned(OnButonClick) then OnButonClick(Self,TcxButtonKadir(sender).Tag);
end;

function TcxTopPanelKadir.GetValue(var tarih2 : string) : string;
begin
  tarih2 := sonTarih.GetValue;
  GetValue := ilkTarih.GetValue;
end;

function TcxTopPanelKadir.getButon1Goster;
begin
  Result := FButon1Goster;
end;

procedure TcxTopPanelKadir.setButon1Goster(const value : Boolean);
begin
   FButon1Goster := value;
   Btn1.Visible := FButon1Goster;
   Btn1.Caption := FButon1Caption;
end;

function TcxTopPanelKadir.getButon2Goster;
begin
  Result := FButon2Goster;
end;

procedure TcxTopPanelKadir.setButon2Goster(const value : Boolean);
begin
   FButon2Goster := value;
   Btn2.Visible := FButon2Goster;
   Btn2.Caption := FButon2Caption;
end;

constructor TcxTopPanelKadir.Create(AOwner: TComponent);
begin
    try
      inherited Create(AOwner);
      Btn1 := TcxButtonKadir.Create(self);
      Btn1.Parent := self;
      Btn1.Align := alLeft;
      Btn1.Tag := -1;
      Btn1.Visible := True;
      Btn1.LookAndFeel.SkinName := 'UserSkin';
      Btn1.LookAndFeel.NativeStyle := False;
      Btn1.OnClick := ButonClick;

      Btn2 := TcxButtonKadir.Create(self);
      Btn2.Parent := self;
      Btn2.Align := alLeft;
      Btn2.Tag := -2;
      Btn2.Visible := True;
      Btn2.LookAndFeel.SkinName := 'UserSkin';
      Btn2.LookAndFeel.NativeStyle := False;
      Btn2.OnClick := ButonClick;

      ilkTarih := TcxDateEditKadir.Create(self);
      ilkTarih.Parent := self;
      ilkTarih.Align := alLeft;
      ilkTarih.Properties.Alignment.Horz := taCenter;
    //  ilkTarih.Properties.Alignment.Vert := taVCenter;
      ilkTarih.LookAndFeel.SkinName := 'UserSkin';
      ilkTarih.LookAndFeel.NativeStyle := False;

      sonTarih := TcxDateEditKadir.Create(self);
      sonTarih.Parent := self;
      sonTarih.Align := alLeft;
      sonTarih.Properties := ilkTarih.Properties;
      sonTarih.LookAndFeel.SkinName := 'UserSkin';
      sonTarih.LookAndFeel.NativeStyle := False;


    finally

    end;
end;




{procedure TcxButtonEditKadir.DoEditKeyDown(var Key: Word; Shift: TShiftState);
//var
//   Form: TCustomForm;
begin
    inherited;

    key := 0;
    (*
    if key = FListeAcTus
    Then Begin
       key := 13;
       try
        text := ListeAc.ListeGetir[0].kolon1;
       except
       end;
    End;
      *)
end;{}

procedure TKadirEdit.CNKeyDown(var Message: TWMKeyDown);
var
   Form: TCustomForm;
   key : word;
   Shift: TShiftState;
begin
    inherited;


    if Message.CharCode = FListeAcTus
    Then Begin
       key := 13;
       try
        text := ListeAc.ListeGetir[0].kolon1;
       except
       end;
       OnKeyDown(self,key,Shift);
       Message.CharCode := 13;
    End;


    if FEnterlaGec = True
    Then
      if Message.CharCode = VK_RETURN
      Then  Begin
        Message.CharCode := 0;
        Form := GetParentForm(Self);
        Form.Perform(WM_NEXTDLGCTL, 0, 0);

      End;



      
end;

constructor  TKadirLabel.Create(AOwner: TComponent);
begin
    inherited;
//    FGiris := '';
end;

destructor TKadirLabel.Destroy;
begin
  try

  finally
    inherited;
  end;
end;


procedure TKadirLabel.setGiris(const value : string);
begin
   FGiris := value;
end;

function TKadirLabel.getGiris : string;
begin
  Result := FGiris;
  Donustur;
end;


function TKadirLabel.Donustur : string;
var
  ado : TADOQuery;
  sql : string;
  tam,ondalik : double;
begin
  ado := TADOQuery.Create(nil);
  try
    ado.Connection := FConn;

    if FDonusum = dsDoktorKodToAdi
    Then
      sql := 'select DoktorAdi from Doktorlar where Kod = ' + QuotedStr(FGiris);
    if FDonusum = dsBransKoduToadi
    Then
      sql := 'select BransAdi from SERVISLER where Kodu = ' + QuotedStr(Giris);

    if FDonusum = dsRakamToYazi
    Then Begin
      try
       if pos('.',FGiris) > 0
       Then Begin
        tam := strtofloat(copy(FGiris,1, pos('.',FGiris)));
        ondalik := strtofloat(copy(FGiris,pos('.',FGiris)+1,2));
        Caption := Param(tam) + ' Tl ' + Param(ondalik) + ' Kr';
       End
       Else
       Begin
        tam := strtofloat(FGiris);
        Caption := Param(tam) + ' Tl ';
       End;
      except
        Caption := '';
      end;
        if Assigned(OnDonustur) then OnDonustur(Self,FGiris);
        exit;
    End;


    if FDonusum = dsTanimToadi
    Then
        sql := 'select SLT from Hizmet_Gruplari where SLB = ' + QuotedStr(FGiris);

      QuerySelect(ado,sql);
      if not ado.Eof
      Then Caption := ado.Fields[0].AsString else Caption := 'Sonuç Yok';
  finally
    ado.Free;
  end;
  if Assigned(OnDonustur) then OnDonustur(Self,FGiris);
end;

(*
function TKadirLabel.SonucKaydet : String;
var
  sql : string;
  i : integer;
begin
        FRenk := clYellow;
        IF Assigned(OnRenkChange) THEN  OnRenkChange(Self, Renk);
        Kaydet;

end;
*)

procedure TcxGridKadir.ExceleKaydet;
begin
    if ExceleGonder = True
    Then begin
      ExportGridToExcel(ExcelFileName,Self,False,True);
    end;
end;

procedure TcxGridKadir.cxGridToTr;
begin
  { ******************************************************************** }
  { cxGridStrs }
  { ******************************************************************** }
  // scxGridRecursiveLevels = 'You cannot create recursive levels';
  cxSetResourceString(@scxGridRecursiveLevels,
    'Yinelemeli seviyeler oluþturamazsýnýz');
  // scxGridDeletingConfirmationCaption = 'Confirm';
  // cxSetResourceString(@scxGridDeletingConfirmationCaption, 'Onayla');
  // scxGridDeletingFocusedConfirmationText = 'Delete record?';
  cxSetResourceString(@scxGridDeletingFocusedConfirmationText,
    'Kayýt silinsin mi ?');
  // scxGridDeletingSelectedConfirmationText = 'Delete all selected records?';
  cxSetResourceString(@scxGridDeletingSelectedConfirmationText,
    'Seçili tüm kayýtlar silinsin mi ?');
  // scxGridNoDataInfoText = '<No data to display>';
  cxSetResourceString(@scxGridNoDataInfoText, '<Gösterilecek kayýt yok>');
  // scxGridNewItemRowInfoText = 'Click here to add a new row';
  cxSetResourceString(@scxGridNewItemRowInfoText,
    'Yeni satýr eklemek için buraya týklayýn');
  // scxGridFilterIsEmpty = '<Filter is Empty>';
  cxSetResourceString(@scxGridFilterIsEmpty, '<Filtre boþ>');
  // scxGridCustomizationFormCaption = 'Customization';
  cxSetResourceString(@scxGridCustomizationFormCaption, 'Özelleþtirme');
  // scxGridCustomizationFormColumnsPageCaption = 'Columns';
  cxSetResourceString(@scxGridCustomizationFormColumnsPageCaption, 'Sütunlar');
  // scxGridGroupByBoxCaption = 'Drag a column header here to group by that column';
  cxSetResourceString(@scxGridGroupByBoxCaption,
    'Gruplamak istediðiniz kolonu buraya sürükleyin');
  // scxGridFilterCustomizeButtonCaption = 'Customize...';
  cxSetResourceString(@scxGridFilterCustomizeButtonCaption, 'Özelleþtir');
  // scxGridColumnsQuickCustomizationHint = 'Click here to select visible columns';
  cxSetResourceString(@scxGridColumnsQuickCustomizationHint,
    'Görünür sütunlarý seçmek için týklayýn');
  // scxGridCustomizationFormBandsPageCaption = 'Bands';
  cxSetResourceString(@scxGridCustomizationFormBandsPageCaption, 'Bantlar');
  // scxGridBandsQuickCustomizationHint = 'Click here to select visible bands';
  cxSetResourceString(@scxGridBandsQuickCustomizationHint,
    'Görünür bantlarý seçmek için týklayýn');
  // scxGridCustomizationFormRowsPageCaption = 'Rows';
  cxSetResourceString(@scxGridCustomizationFormRowsPageCaption, 'Satýrlar');
  // scxGridConverterIntermediaryMissing = 'Missing an intermediary component!'#13#10'Please add a %s component to the form.';
  cxSetResourceString(@scxGridConverterIntermediaryMissing,
    'Bulunamayan aracý bileþen!'#13#10'Lütfen bir %s bileþeni forma ekleyin.');
  // scxGridConverterNotExistGrid = 'cxGrid does not exist';
  cxSetResourceString(@scxGridConverterNotExistGrid, 'cxGrid yok');
  // scxGridConverterNotExistComponent = 'Component does not exist';
  cxSetResourceString(@scxGridConverterNotExistComponent, 'Bileþen yok');
  // scxImportErrorCaption = 'Import error';
  cxSetResourceString(@scxImportErrorCaption, 'Ýçe aktarým hatasý');
  // scxNotExistGridView = 'Grid view does not exist';
  cxSetResourceString(@scxNotExistGridView, 'Grid görünümü yok');
  // scxNotExistGridLevel = 'Active grid level does not exist';
  cxSetResourceString(@scxNotExistGridLevel, 'Geçerli grid seviyesi yok');
  // scxCantCreateExportOutputFile = 'Can''t create the export output file';
  cxSetResourceString(@scxCantCreateExportOutputFile,
    'Dýþa aktarýlacak dosya oluþturulamýyor');
  // cxSEditRepositoryExtLookupComboBoxItem = 'ExtLookupComboBox|Represents an ultra-advanced lookup using the QuantumGrid as its drop down control';
  // scxGridChartValueHintFormat = '%s for %s is %s'; // series display text, category, value

  { ******************************************************************** }
  { cxFilterConsts }
  { ******************************************************************** }

  // // base operators
  // cxSFilterOperatorEqual = 'equals';
  cxSetResourceString(@cxSFilterOperatorEqual, 'eþit');
  // cxSFilterOperatorNotEqual = 'does not equal';
  cxSetResourceString(@cxSFilterOperatorNotEqual, 'eþit deðil');
  // cxSFilterOperatorLess = 'is less than';
  cxSetResourceString(@cxSFilterOperatorLess, 'küçük');
  // cxSFilterOperatorLessEqual = 'is less than or equal to';
  cxSetResourceString(@cxSFilterOperatorLessEqual, 'küçük veya eþit');
  // cxSFilterOperatorGreater = 'is greater than';
  cxSetResourceString(@cxSFilterOperatorGreater, 'büyük');
  // cxSFilterOperatorGreaterEqual = 'is greater than or equal to';
  cxSetResourceString(@cxSFilterOperatorGreaterEqual, 'büyük veya eþit');
  // cxSFilterOperatorLike = 'like';
  cxSetResourceString(@cxSFilterOperatorLike, 'içerir');
  // cxSFilterOperatorNotLike = 'not like';
  cxSetResourceString(@cxSFilterOperatorNotLike, 'içermez');
  // cxSFilterOperatorBetween = 'between';
  cxSetResourceString(@cxSFilterOperatorBetween, 'arasýnda');
  // cxSFilterOperatorNotBetween = 'not between';
  cxSetResourceString(@cxSFilterOperatorNotBetween, 'arasýnda deðil');
  // cxSFilterOperatorInList = 'in';
  cxSetResourceString(@cxSFilterOperatorInList, 'içinde olan');
  // cxSFilterOperatorNotInList = 'not in';
  cxSetResourceString(@cxSFilterOperatorNotInList, 'içinde olmayan');
  // cxSFilterOperatorYesterday = 'is yesterday';
  cxSetResourceString(@cxSFilterOperatorYesterday, 'dün');
  // cxSFilterOperatorToday = 'is today';
  cxSetResourceString(@cxSFilterOperatorToday, 'bugün');
  // cxSFilterOperatorTomorrow = 'is tomorrow';
  cxSetResourceString(@cxSFilterOperatorTomorrow, 'yarýn');
  // cxSFilterOperatorLastWeek = 'is last week';
  cxSetResourceString(@cxSFilterOperatorLastWeek, 'geçen hafta');
  // cxSFilterOperatorLastMonth = 'is last month';
  cxSetResourceString(@cxSFilterOperatorLastMonth, 'geçen ay');
  // cxSFilterOperatorLastYear = 'is last year';
  cxSetResourceString(@cxSFilterOperatorLastYear, 'geçen sene');
  // cxSFilterOperatorThisWeek = 'is this week';
  cxSetResourceString(@cxSFilterOperatorThisWeek, 'bu hafta');
  // cxSFilterOperatorThisMonth = 'is this month';
  cxSetResourceString(@cxSFilterOperatorThisMonth, 'bu ay');
  // cxSFilterOperatorThisYear = 'is this year';
  cxSetResourceString(@cxSFilterOperatorThisYear, 'bu sene');
  // cxSFilterOperatorNextWeek = 'is next week';
  cxSetResourceString(@cxSFilterOperatorNextWeek, 'gelecek hafta');
  // cxSFilterOperatorNextMonth = 'is next month';
  cxSetResourceString(@cxSFilterOperatorNextMonth, 'gelecek ay');
  // cxSFilterOperatorNextYear = 'is next year';
  cxSetResourceString(@cxSFilterOperatorNextYear, 'gelecek sene');
  // cxSFilterAndCaption = 'and';
  cxSetResourceString(@cxSFilterAndCaption, 've');
  // cxSFilterOrCaption = 'or';
  cxSetResourceString(@cxSFilterOrCaption, 'veya');
  // cxSFilterNotCaption = 'not';
  cxSetResourceString(@cxSFilterNotCaption, 'deðil');
  // cxSFilterBlankCaption = 'blank';
  cxSetResourceString(@cxSFilterBlankCaption, 'boþ');
  // // derived
  // cxSFilterOperatorIsNull = 'is blank';
  cxSetResourceString(@cxSFilterOperatorIsNull, 'boþluk');
  // cxSFilterOperatorIsNotNull = 'is not blank';
  cxSetResourceString(@cxSFilterOperatorIsNotNull, 'boþluk deðil');
  // cxSFilterOperatorBeginsWith = 'begins with';
  cxSetResourceString(@cxSFilterOperatorBeginsWith, 'ile baþlayan');
  // cxSFilterOperatorDoesNotBeginWith = 'does not begin with';
  cxSetResourceString(@cxSFilterOperatorDoesNotBeginWith, 'ile baþlamayan');
  // cxSFilterOperatorEndsWith = 'ends with';
  cxSetResourceString(@cxSFilterOperatorEndsWith, 'ile biten');
  // cxSFilterOperatorDoesNotEndWith = 'does not end with';
  cxSetResourceString(@cxSFilterOperatorDoesNotEndWith, 'ile bitmeyen');
  // cxSFilterOperatorContains = 'contains';
  cxSetResourceString(@cxSFilterOperatorContains, 'içeren');
  // cxSFilterOperatorDoesNotContain = 'does not contain';
  cxSetResourceString(@cxSFilterOperatorDoesNotContain, 'içermeyen');
  // // filter listbox's values
  // cxSFilterBoxAllCaption = '(All)';
  cxSetResourceString(@cxSFilterBoxAllCaption, 'Hepsi');
  // cxSFilterBoxCustomCaption = '(Custom...)';
  cxSetResourceString(@cxSFilterBoxCustomCaption, 'Özel...');
  // cxSFilterBoxBlanksCaption = '(Blanks)';
  cxSetResourceString(@cxSFilterBoxBlanksCaption, '(Boþ olanlar)');
  // cxSFilterBoxNonBlanksCaption = '(NonBlanks)';
  cxSetResourceString(@cxSFilterBoxNonBlanksCaption, '(Boþ olmayanlar)');

  { ******************************************************************** }
  { cxFilterControlStrs }
  { ******************************************************************** }

  // // cxFilterBoolOperator
  // cxSFilterBoolOperatorAnd = 'AND';        // all
  cxSetResourceString(@cxSFilterBoolOperatorAnd, 'VE');
  // cxSFilterBoolOperatorOr = 'OR';          // any
  cxSetResourceString(@cxSFilterBoolOperatorOr, 'VEYA');
  // cxSFilterBoolOperatorNotAnd = 'NOT AND'; // not all
  cxSetResourceString(@cxSFilterBoolOperatorNotAnd, 'VE DEÐÝL');
  // cxSFilterBoolOperatorNotOr = 'NOT OR';   // not any
  cxSetResourceString(@cxSFilterBoolOperatorNotOr, 'VEYA DEÐÝL');
  // //
  // cxSFilterRootButtonCaption = 'Filter';
  cxSetResourceString(@cxSFilterRootButtonCaption, 'Filtre');
  // cxSFilterAddCondition = 'Add &Condition';
  cxSetResourceString(@cxSFilterAddCondition, '&Koþul ekle');
  // cxSFilterAddGroup = 'Add &Group';
  cxSetResourceString(@cxSFilterAddGroup, '&Grup ekle');
  // cxSFilterRemoveRow = '&Remove Row';
  cxSetResourceString(@cxSFilterRemoveRow, '&Satýr kaldýr');
  // cxSFilterClearAll = 'Clear &All';
  cxSetResourceString(@cxSFilterClearAll, 'Hepsini &temizle');
  // cxSFilterFooterAddCondition = 'press the button to add a new condition';
  cxSetResourceString(@cxSFilterFooterAddCondition,
    'yeni koþul eklemek için tuþa basýn');
  // cxSFilterGroupCaption = 'applies to the following conditions';
  cxSetResourceString(@cxSFilterGroupCaption, 'aþaðýdaki koþullarý uygulayýn');
  // cxSFilterRootGroupCaption = '<root>';
  cxSetResourceString(@cxSFilterRootGroupCaption, '<kök>');
  // cxSFilterControlNullString = '<empty>';
  cxSetResourceString(@cxSFilterControlNullString, '<boþ>');
  // cxSFilterErrorBuilding = 'Can''t build filter from source';
  cxSetResourceString(@cxSFilterErrorBuilding, 'Kaynaktan filtrelenemiyor');
  // //FilterDialog
  // cxSFilterDialogCaption = 'Custom Filter';
  cxSetResourceString(@cxSFilterDialogCaption, 'Özel filtre');
  // cxSFilterDialogInvalidValue = 'Invalid value';
  cxSetResourceString(@cxSFilterDialogInvalidValue, 'Geçersiz deðer');
  // cxSFilterDialogUse = 'Use';
  cxSetResourceString(@cxSFilterDialogUse, 'Kullan');
  // cxSFilterDialogSingleCharacter = 'to represent any single character';
  cxSetResourceString(@cxSFilterDialogSingleCharacter,
    'tek karakteri temsil etmek için');
  // cxSFilterDialogCharactersSeries = 'to represent any series of characters';
  cxSetResourceString(@cxSFilterDialogCharactersSeries,
    'peþ peþe karakterleri temsil etmek için');
  // cxSFilterDialogOperationAnd = 'AND';
  cxSetResourceString(@cxSFilterDialogOperationAnd, 'VE');
  // cxSFilterDialogOperationOr = 'OR';
  cxSetResourceString(@cxSFilterDialogOperationOr, 'VEYA');
  // cxSFilterDialogRows = 'Show rows where:';
  cxSetResourceString(@cxSFilterDialogRows, 'Satýrlarý goster');
  //
  // // FilterControlDialog
  // cxSFilterControlDialogCaption = 'Filter builder';
  cxSetResourceString(@cxSFilterControlDialogCaption, 'Filtre hazýrlayýcý');
  // cxSFilterControlDialogNewFile = 'untitled.flt';
  cxSetResourceString(@cxSFilterControlDialogNewFile, 'isimsiz.flt');
  // cxSFilterControlDialogOpenDialogCaption = 'Open an existing filter';
  cxSetResourceString(@cxSFilterControlDialogOpenDialogCaption, 'Filtre aç');
  // cxSFilterControlDialogSaveDialogCaption = 'Save the active filter to file';
  cxSetResourceString(@cxSFilterControlDialogSaveDialogCaption,
    'Geçerli filtreyi kaydet');
  // cxSFilterControlDialogActionSaveCaption = '&Save As...';
  cxSetResourceString(@cxSFilterControlDialogActionSaveCaption,
    '&Farklý kaydet');
  // cxSFilterControlDialogActionOpenCaption = '&Open...';
  cxSetResourceString(@cxSFilterControlDialogActionOpenCaption, '&Aç...');
  // cxSFilterControlDialogActionApplyCaption = '&Apply';
  cxSetResourceString(@cxSFilterControlDialogActionApplyCaption, '&Uygula');
  // cxSFilterControlDialogActionOkCaption = 'OK';
  cxSetResourceString(@cxSFilterControlDialogActionOkCaption, 'Tamam');
  // cxSFilterControlDialogActionCancelCaption = 'Cancel';
  cxSetResourceString(@cxSFilterControlDialogActionCancelCaption, 'Ýptal');
  // cxSFilterControlDialogFileExt = 'flt';
  // cxSFilterControlDialogFileFilter = 'Filters (*.flt)|*.flt';
  cxSetResourceString(@cxSFilterControlDialogFileFilter,
    'Filtreler (*.flt)|*.flt');

  // cxGridPopupMenuConsts
  cxSetResourceString(@cxSGridNone, 'Yok'); // 'None';
  cxSetResourceString(@cxSGridSortColumnAsc, 'Artan Sýralama');
  // 'Sort Ascending';
  cxSetResourceString(@cxSGridSortColumnDesc, 'Azalan Sýralama');
  // 'Sort Descending';
  cxSetResourceString(@cxSGridClearSorting, 'Sýralamayý Sil');
  // 'Clear Sorting';
  cxSetResourceString(@cxSGridGroupByThisField, 'Bu Alana Göre Grupla');
  // 'Group By This Field';
  cxSetResourceString(@cxSGridRemoveThisGroupItem, 'Gruplamayý Sil');
  // 'Remove from grouping';
  cxSetResourceString(@cxSGridGroupByBox, 'Gruplama Kutusu'); // 'Group By Box';
  cxSetResourceString(@cxSGridAlignmentSubMenu, 'Hizalama'); // 'Alignment';
  cxSetResourceString(@cxSGridAlignLeft, 'Sola Hizala'); // 'Align Left';
  cxSetResourceString(@cxSGridAlignRight, 'Saða Hizala'); // 'Align Right';
  cxSetResourceString(@cxSGridAlignCenter, 'Ortalý Hizala'); // 'Align Center';
  cxSetResourceString(@cxSGridRemoveColumn, 'Sutunu Sil');
  // 'Remove This Column';
  cxSetResourceString(@cxSGridFieldChooser, 'Alan Seçiçi'); // 'Field Chooser';
  cxSetResourceString(@cxSGridBestFit, 'En Uygun Büyüklük'); // 'Best Fit';
  cxSetResourceString(@cxSGridBestFitAllColumns,
    'En Uygun Büyüklük(Bütün Sutunlar)'); // 'Best Fit (all columns)';
  cxSetResourceString(@cxSGridShowFooter, 'Alt'); // 'Footer';
  cxSetResourceString(@cxSGridShowGroupFooter, 'Grup Alt'); // 'Group Footers';
  cxSetResourceString(@cxSGridSumMenuItem, 'Toplam'); // 'Sum';
  cxSetResourceString(@cxSGridMinMenuItem, 'Minimum'); // 'Min';
  cxSetResourceString(@cxSGridMaxMenuItem, 'Maximum'); // 'Max';
  cxSetResourceString(@cxSGridCountMenuItem, 'Adet'); // 'Count';
  cxSetResourceString(@cxSGridAvgMenuItem, 'Avaraj'); // 'Average';
  cxSetResourceString(@cxSGridNoneMenuItem, 'Yok'); // 'None';
end;

{ TcxGridDBTableViewKadir }

constructor TcxGridDBTableViewKadir.Create(AOwner: TComponent);
begin


   inherited Create(AOwner);
   FPopupForm := False;

   self.Navigator.Visible := True;


   self.Navigator.Buttons.Edit.Visible := False;
   self.Navigator.Buttons.Post.Visible := False;
   self.Navigator.Buttons.OnButtonClick := NavigatorButtonsButtonClick;



end;



procedure TcxGridDBTableViewKadir.NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
  ShowMessage('Test Ýþlemi');

end;



{ TcxGridDBTableViewPopup }

constructor TcxGridDBTableViewK.Create(AOwner: TComponent);
begin
  inherited;

end;

procedure TcxGridDBTableViewK.NavigatorButtonsButtonClick(Sender: TObject;
  AButtonIndex: Integer; var ADone: Boolean);
begin
  inherited;
     ShowMessage('s');
end;

Initialization

  Classes.RegisterClass(TFScxGridDBTableView);
  Classes.RegisterClass(TdxNavBarKadirItem);
  Classes.RegisterClass(TGirisFormItem);
  Classes.RegisterClass(TGirisFormItems);
  Classes.RegisterClass(TcxGridDBTableViewKadir);
  Classes.RegisterClass(TcxGridDBTableViewK);






end.
