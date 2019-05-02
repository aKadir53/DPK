// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Projeler\DELPHI\Klinik2007\klinik2007\yardimciIslemlerWS.wsdl
//  >Import : D:\Projeler\DELPHI\Klinik2007\klinik2007\yardimciIslemlerWS.wsdl>0
//  >Import : D:\Projeler\DELPHI\Klinik2007\klinik2007\yardimciIslemlerWS.xsd
// Encoding : utf-8
// Version  : 1.0
// (15.01.2019 22:12:11 - - $Rev: 45757 $)
// ************************************************************************ //

unit yardimciIslemlerWS;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_UNQL = $0008;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  takipBilgisiListDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipIslemKesintiDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  evrakKesintiGirisDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  evrakKesintiCevapDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipBilgisiGirisDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  guncelSutSorguGirisDVO = class;               { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  sutFiyatDVO          = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  evrakTakipDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  saglikTesisiAraGirisDVO = class;              { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipBilgisiCevapDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  guncelSutSorguCevapDVO = class;               { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  orneklenmisGirisDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  orneklenmisCevapDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaBilgileriDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  evrakTakipGrupKoduSorguCevapDVO = class;      { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  evrakTakipGrupKoduSorguGirisDVO = class;      { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  kisiGecmisIslemlerCevapDVO = class;           { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  kisiIslemDVO         = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  kisiGecmisIslemlerGirisDVO = class;           { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipDVO             = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  doktorAraGirisDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  barkodSutEslesmeSorguGirisDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  barkodSutEslesmeSorguCevapDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  barkodSutDVO         = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  doktorAraCevapDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  evrakTakipGrupKoduDVO = class;                { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipAraCevapDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  doktorListDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipAraGirisDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  katilimPayiCevapDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  katilimPayiDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  katilimPayiGirisDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacAraGirisDVO      = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tesisYatakBilgiDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  saglikTesisiListDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  saglikTesisiAraCevapDVO = class;              { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tesisYatakSorguCevapDVO = class;              { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tesisYatakSorguGirisDVO = class;              { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  damarIziDogrulamaDetayDVO = class;            { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  fiyatListDVO         = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  yurtDisiYardimHakkiGetirCevapDVO = class;     { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacIndirimDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  yurtDisiYardimHakkiGetirGirisDVO = class;     { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  yurtDisiYardimHakkiGetirCevapDetayDVO = class;   { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacAraCevapDVO      = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  damarIziDogrulamaSorguCevapDVO = class;       { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacListDVO          = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  damarIziDogrulamaSorguGirisDVO = class;       { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }

  Array_Of_barkodSutDVO = array of barkodSutDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_doktorListDVO = array of doktorListDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_evrakTakipGrupKoduDVO = array of evrakTakipGrupKoduDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_fiyatListDVO = array of fiyatListDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_ilacIndirimDVO = array of ilacIndirimDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_damarIziDogrulamaDetayDVO = array of damarIziDogrulamaDetayDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_katilimPayiDVO = array of katilimPayiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_yurtDisiYardimHakkiGetirCevapDetayDVO = array of yurtDisiYardimHakkiGetirCevapDetayDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_takipDVO = array of takipDVO;        { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_kisiIslemDVO = array of kisiIslemDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_evrakTakipDVO = array of evrakTakipDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_takipIslemKesintiDVO = array of takipIslemKesintiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : takipBilgisiListDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipBilgisiListDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FgrupTuru: string;
    FgrupTuru_Specified: boolean;
    FgrupAdi: string;
    FgrupAdi_Specified: boolean;
    FtoplamTutar: Double;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetgrupTuru(Index: Integer; const Astring: string);
    function  grupTuru_Specified(Index: Integer): boolean;
    procedure SetgrupAdi(Index: Integer; const Astring: string);
    function  grupAdi_Specified(Index: Integer): boolean;
  published
    property takipNo:     string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property grupTuru:    string  Index (IS_OPTN or IS_UNQL) read FgrupTuru write SetgrupTuru stored grupTuru_Specified;
    property grupAdi:     string  Index (IS_OPTN or IS_UNQL) read FgrupAdi write SetgrupAdi stored grupAdi_Specified;
    property toplamTutar: Double  Index (IS_UNQL) read FtoplamTutar write FtoplamTutar;
  end;



  // ************************************************************************ //
  // XML       : takipIslemKesintiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipIslemKesintiDVO = class(TRemotable)
  private
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    FislemAdi: string;
    FislemAdi_Specified: boolean;
    Ftutar: Double;
    FkesintiTutari: Double;
    Faciklama: string;
    Faciklama_Specified: boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure SetislemAdi(Index: Integer; const Astring: string);
    function  islemAdi_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
  published
    property islemSiraNo:       string  Index (IS_OPTN or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property hizmetSunucuRefNo: string  Index (IS_OPTN or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemTarihi:       string  Index (IS_OPTN or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property sutKodu:           string  Index (IS_OPTN or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property islemAdi:          string  Index (IS_OPTN or IS_UNQL) read FislemAdi write SetislemAdi stored islemAdi_Specified;
    property tutar:             Double  Index (IS_UNQL) read Ftutar write Ftutar;
    property kesintiTutari:     Double  Index (IS_UNQL) read FkesintiTutari write FkesintiTutari;
    property aciklama:          string  Index (IS_OPTN or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : evrakKesintiGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  evrakKesintiGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FevrakRefNo: Integer;
    FgrupTuru: string;
    FgrupKodu: Integer;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property evrakRefNo:      Integer  Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
    property grupTuru:        string   Index (IS_UNQL) read FgrupTuru write FgrupTuru;
    property grupKodu:        Integer  Index (IS_UNQL) read FgrupKodu write FgrupKodu;
  end;



  // ************************************************************************ //
  // XML       : evrakKesintiCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  evrakKesintiCevapDVO = class(TRemotable)
  private
    FevrakRefNo: Integer;
    FmuayeneKatilimTutari: Double;
    FmalzemeKatilimTutari: Double;
    FtupBebekKatilimTutari: Double;
    Ftakipler: Array_Of_evrakTakipDVO;
    Ftakipler_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure Settakipler(Index: Integer; const AArray_Of_evrakTakipDVO: Array_Of_evrakTakipDVO);
    function  takipler_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property evrakRefNo:            Integer                 Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
    property muayeneKatilimTutari:  Double                  Index (IS_UNQL) read FmuayeneKatilimTutari write FmuayeneKatilimTutari;
    property malzemeKatilimTutari:  Double                  Index (IS_UNQL) read FmalzemeKatilimTutari write FmalzemeKatilimTutari;
    property tupBebekKatilimTutari: Double                  Index (IS_UNQL) read FtupBebekKatilimTutari write FtupBebekKatilimTutari;
    property takipler:              Array_Of_evrakTakipDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftakipler write Settakipler stored takipler_Specified;
    property sonucKodu:             string                  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:           string                  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : takipBilgisiGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipBilgisiGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FevrakRefNo: Integer;
    FgrupTuru: string;
    FgrupKodu: Integer;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property evrakRefNo:      Integer  Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
    property grupTuru:        string   Index (IS_UNQL) read FgrupTuru write FgrupTuru;
    property grupKodu:        Integer  Index (IS_UNQL) read FgrupKodu write FgrupKodu;
    property ktsHbysKodu:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : guncelSutSorguGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  guncelSutSorguGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    Ftarih: string;
    Ftarih_Specified: boolean;
    procedure Settarih(Index: Integer; const Astring: string);
    function  tarih_Specified(Index: Integer): boolean;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property tarih:           string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Ftarih write Settarih stored tarih_Specified;
  end;



  // ************************************************************************ //
  // XML       : sutFiyatDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  sutFiyatDVO = class(TRemotable)
  private
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    Fadi: string;
    Fadi_Specified: boolean;
    Ffiyat: Double;
    Fturu: Integer;
    FgecerlilikTarihi: string;
    FgecerlilikTarihi_Specified: boolean;
    FlisteAdi: string;
    FlisteAdi_Specified: boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure Setadi(Index: Integer; const Astring: string);
    function  adi_Specified(Index: Integer): boolean;
    procedure SetgecerlilikTarihi(Index: Integer; const Astring: string);
    function  gecerlilikTarihi_Specified(Index: Integer): boolean;
    procedure SetlisteAdi(Index: Integer; const Astring: string);
    function  listeAdi_Specified(Index: Integer): boolean;
  published
    property sutKodu:          string   Index (IS_OPTN or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property adi:              string   Index (IS_OPTN or IS_UNQL) read Fadi write Setadi stored adi_Specified;
    property fiyat:            Double   Index (IS_UNQL) read Ffiyat write Ffiyat;
    property turu:             Integer  Index (IS_UNQL) read Fturu write Fturu;
    property gecerlilikTarihi: string   Index (IS_OPTN or IS_UNQL) read FgecerlilikTarihi write SetgecerlilikTarihi stored gecerlilikTarihi_Specified;
    property listeAdi:         string   Index (IS_OPTN or IS_UNQL) read FlisteAdi write SetlisteAdi stored listeAdi_Specified;
  end;



  // ************************************************************************ //
  // XML       : evrakTakipDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  evrakTakipDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FgrupTuru: string;
    FgrupTuru_Specified: boolean;
    FgrupKodu: Integer;
    FtoplamTutar: Double;
    Fkesintiler: Array_Of_takipIslemKesintiDVO;
    Fkesintiler_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetgrupTuru(Index: Integer; const Astring: string);
    function  grupTuru_Specified(Index: Integer): boolean;
    procedure Setkesintiler(Index: Integer; const AArray_Of_takipIslemKesintiDVO: Array_Of_takipIslemKesintiDVO);
    function  kesintiler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property takipNo:     string                         Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property grupTuru:    string                         Index (IS_OPTN or IS_UNQL) read FgrupTuru write SetgrupTuru stored grupTuru_Specified;
    property grupKodu:    Integer                        Index (IS_UNQL) read FgrupKodu write FgrupKodu;
    property toplamTutar: Double                         Index (IS_UNQL) read FtoplamTutar write FtoplamTutar;
    property kesintiler:  Array_Of_takipIslemKesintiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fkesintiler write Setkesintiler stored kesintiler_Specified;
  end;



  // ************************************************************************ //
  // XML       : saglikTesisiAraGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  saglikTesisiAraGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FtesisKodu: string;
    FtesisKodu_Specified: boolean;
    FtesisTuru: string;
    FtesisTuru_Specified: boolean;
    FtesisIlKodu: string;
    FtesisIlKodu_Specified: boolean;
    FtesisAdi: string;
    FtesisAdi_Specified: boolean;
    procedure SettesisKodu(Index: Integer; const Astring: string);
    function  tesisKodu_Specified(Index: Integer): boolean;
    procedure SettesisTuru(Index: Integer; const Astring: string);
    function  tesisTuru_Specified(Index: Integer): boolean;
    procedure SettesisIlKodu(Index: Integer; const Astring: string);
    function  tesisIlKodu_Specified(Index: Integer): boolean;
    procedure SettesisAdi(Index: Integer; const Astring: string);
    function  tesisAdi_Specified(Index: Integer): boolean;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property tesisKodu:       string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtesisKodu write SettesisKodu stored tesisKodu_Specified;
    property tesisTuru:       string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtesisTuru write SettesisTuru stored tesisTuru_Specified;
    property tesisIlKodu:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtesisIlKodu write SettesisIlKodu stored tesisIlKodu_Specified;
    property tesisAdi:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtesisAdi write SettesisAdi stored tesisAdi_Specified;
  end;

  Array_Of_tesisYatakBilgiDVO = array of tesisYatakBilgiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_ilacListDVO = array of ilacListDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_saglikTesisiListDVO = array of saglikTesisiListDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_takipBilgisiListDVO = array of takipBilgisiListDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : takipBilgisiCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipBilgisiCevapDVO = class(TRemotable)
  private
    FtakipBilgisiListDVO: Array_Of_takipBilgisiListDVO;
    FtakipBilgisiListDVO_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FevrakRefNo: Integer;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SettakipBilgisiListDVO(Index: Integer; const AArray_Of_takipBilgisiListDVO: Array_Of_takipBilgisiListDVO);
    function  takipBilgisiListDVO_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property takipBilgisiListDVO: Array_Of_takipBilgisiListDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtakipBilgisiListDVO write SettakipBilgisiListDVO stored takipBilgisiListDVO_Specified;
    property saglikTesisKodu:     Integer                       Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property evrakRefNo:          Integer                       Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
    property sonucKodu:           string                        Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:         string                        Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;

  Array_Of_sutFiyatDVO = array of sutFiyatDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : guncelSutSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  guncelSutSorguCevapDVO = class(TRemotable)
  private
    FsutKodlari: Array_Of_sutFiyatDVO;
    FsutKodlari_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetsutKodlari(Index: Integer; const AArray_Of_sutFiyatDVO: Array_Of_sutFiyatDVO);
    function  sutKodlari_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sutKodlari:  Array_Of_sutFiyatDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FsutKodlari write SetsutKodlari stored sutKodlari_Specified;
    property sonucKodu:   string                Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : orneklenmisGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  orneklenmisGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FevrakRefNo: Integer;
    FgrupTuru: string;
    FgrupKodu: Integer;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property evrakRefNo:      Integer  Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
    property grupTuru:        string   Index (IS_UNQL) read FgrupTuru write FgrupTuru;
    property grupKodu:        Integer  Index (IS_UNQL) read FgrupKodu write FgrupKodu;
  end;



  // ************************************************************************ //
  // XML       : orneklenmisCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  orneklenmisCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FevrakRefNo: Integer;
    Ftakipler: Array_Of_evrakTakipDVO;
    Ftakipler_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure Settakipler(Index: Integer; const AArray_Of_evrakTakipDVO: Array_Of_evrakTakipDVO);
    function  takipler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonucKodu:       string                  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:     string                  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property saglikTesisKodu: Integer                 Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property evrakRefNo:      Integer                 Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
    property takipler:        Array_Of_evrakTakipDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftakipler write Settakipler stored takipler_Specified;
  end;



  // ************************************************************************ //
  // XML       : hastaBilgileriDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaBilgileriDVO = class(TRemotable)
  private
    FtcKimlikNo: string;
    FtcKimlikNo_Specified: boolean;
    Fad: string;
    Fad_Specified: boolean;
    Fsoyad: string;
    Fsoyad_Specified: boolean;
    Fcinsiyet: string;
    Fcinsiyet_Specified: boolean;
    FdogumTarihi: string;
    FdogumTarihi_Specified: boolean;
    FsigortaliTuru: string;
    FsigortaliTuru_Specified: boolean;
    FdevredilenKurum: string;
    FdevredilenKurum_Specified: boolean;
    FkatilimPayindanMuaf: string;
    FkatilimPayindanMuaf_Specified: boolean;
    FkapsamAdi: string;
    FkapsamAdi_Specified: boolean;
    FolumTarihi: string;
    FolumTarihi_Specified: boolean;
    procedure SettcKimlikNo(Index: Integer; const Astring: string);
    function  tcKimlikNo_Specified(Index: Integer): boolean;
    procedure Setad(Index: Integer; const Astring: string);
    function  ad_Specified(Index: Integer): boolean;
    procedure Setsoyad(Index: Integer; const Astring: string);
    function  soyad_Specified(Index: Integer): boolean;
    procedure Setcinsiyet(Index: Integer; const Astring: string);
    function  cinsiyet_Specified(Index: Integer): boolean;
    procedure SetdogumTarihi(Index: Integer; const Astring: string);
    function  dogumTarihi_Specified(Index: Integer): boolean;
    procedure SetsigortaliTuru(Index: Integer; const Astring: string);
    function  sigortaliTuru_Specified(Index: Integer): boolean;
    procedure SetdevredilenKurum(Index: Integer; const Astring: string);
    function  devredilenKurum_Specified(Index: Integer): boolean;
    procedure SetkatilimPayindanMuaf(Index: Integer; const Astring: string);
    function  katilimPayindanMuaf_Specified(Index: Integer): boolean;
    procedure SetkapsamAdi(Index: Integer; const Astring: string);
    function  kapsamAdi_Specified(Index: Integer): boolean;
    procedure SetolumTarihi(Index: Integer; const Astring: string);
    function  olumTarihi_Specified(Index: Integer): boolean;
  published
    property tcKimlikNo:          string  Index (IS_OPTN or IS_UNQL) read FtcKimlikNo write SettcKimlikNo stored tcKimlikNo_Specified;
    property ad:                  string  Index (IS_OPTN or IS_UNQL) read Fad write Setad stored ad_Specified;
    property soyad:               string  Index (IS_OPTN or IS_UNQL) read Fsoyad write Setsoyad stored soyad_Specified;
    property cinsiyet:            string  Index (IS_OPTN or IS_UNQL) read Fcinsiyet write Setcinsiyet stored cinsiyet_Specified;
    property dogumTarihi:         string  Index (IS_OPTN or IS_UNQL) read FdogumTarihi write SetdogumTarihi stored dogumTarihi_Specified;
    property sigortaliTuru:       string  Index (IS_OPTN or IS_UNQL) read FsigortaliTuru write SetsigortaliTuru stored sigortaliTuru_Specified;
    property devredilenKurum:     string  Index (IS_OPTN or IS_UNQL) read FdevredilenKurum write SetdevredilenKurum stored devredilenKurum_Specified;
    property katilimPayindanMuaf: string  Index (IS_OPTN or IS_UNQL) read FkatilimPayindanMuaf write SetkatilimPayindanMuaf stored katilimPayindanMuaf_Specified;
    property kapsamAdi:           string  Index (IS_OPTN or IS_UNQL) read FkapsamAdi write SetkapsamAdi stored kapsamAdi_Specified;
    property olumTarihi:          string  Index (IS_OPTN or IS_UNQL) read FolumTarihi write SetolumTarihi stored olumTarihi_Specified;
  end;



  // ************************************************************************ //
  // XML       : evrakTakipGrupKoduSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  evrakTakipGrupKoduSorguCevapDVO = class(TRemotable)
  private
    FgrupKodlari: Array_Of_evrakTakipGrupKoduDVO;
    FgrupKodlari_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetgrupKodlari(Index: Integer; const AArray_Of_evrakTakipGrupKoduDVO: Array_Of_evrakTakipGrupKoduDVO);
    function  grupKodlari_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property grupKodlari: Array_Of_evrakTakipGrupKoduDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FgrupKodlari write SetgrupKodlari stored grupKodlari_Specified;
    property sonucKodu:   string                          Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                          Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : evrakTakipGrupKoduSorguGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  evrakTakipGrupKoduSorguGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : kisiGecmisIslemlerCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  kisiGecmisIslemlerCevapDVO = class(TRemotable)
  private
    FoncekiIslemler: Array_Of_kisiIslemDVO;
    FoncekiIslemler_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetoncekiIslemler(Index: Integer; const AArray_Of_kisiIslemDVO: Array_Of_kisiIslemDVO);
    function  oncekiIslemler_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property oncekiIslemler: Array_Of_kisiIslemDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FoncekiIslemler write SetoncekiIslemler stored oncekiIslemler_Specified;
    property sonucKodu:      string                 Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:    string                 Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : kisiIslemDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  kisiIslemDVO = class(TRemotable)
  private
    FtesisKodu: Integer;
    FtesisAdi: string;
    FtesisAdi_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    procedure SettesisAdi(Index: Integer; const Astring: string);
    function  tesisAdi_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
  published
    property tesisKodu:   Integer  Index (IS_UNQL) read FtesisKodu write FtesisKodu;
    property tesisAdi:    string   Index (IS_OPTN or IS_UNQL) read FtesisAdi write SettesisAdi stored tesisAdi_Specified;
    property islemTarihi: string   Index (IS_OPTN or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
  end;



  // ************************************************************************ //
  // XML       : kisiGecmisIslemlerGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  kisiGecmisIslemlerGirisDVO = class(TRemotable)
  private
    FhastaTCKimlikNo: Int64;
    FsutKodu: string;
    FsaglikTesisKodu: Integer;
  published
    property hastaTCKimlikNo: Int64    Index (IS_UNQL) read FhastaTCKimlikNo write FhastaTCKimlikNo;
    property sutKodu:         string   Index (IS_UNQL) read FsutKodu write FsutKodu;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : takipDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipDVO = class(TRemotable)
  private
    FfaturaTeslimNo: string;
    FfaturaTeslimNo_Specified: boolean;
    FilkTakipNo: string;
    FilkTakipNo_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdonorTCKimlikNo: string;
    FdonorTCKimlikNo_Specified: boolean;
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FhastaBilgileri: hastaBilgileriDVO;
    FhastaBilgileri_Specified: boolean;
    FkayitTarihi: string;
    FkayitTarihi_Specified: boolean;
    FprovizyonTipi: string;
    FprovizyonTipi_Specified: boolean;
    FtakipDurumu: string;
    FtakipDurumu_Specified: boolean;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FtakipTarihi: string;
    FtakipTarihi_Specified: boolean;
    FtakipTipi: string;
    FtakipTipi_Specified: boolean;
    FtedaviTipi: string;
    FtedaviTipi_Specified: boolean;
    FtedaviTuru: string;
    FtedaviTuru_Specified: boolean;
    FtesisKodu: Integer;
    FsevkDurumu: string;
    FsevkDurumu_Specified: boolean;
    FyeniDoganCocukSiraNo: string;
    FyeniDoganCocukSiraNo_Specified: boolean;
    FyeniDoganDogumTarihi: string;
    FyeniDoganDogumTarihi_Specified: boolean;
    FarvFlag: string;
    FarvFlag_Specified: boolean;
    FevrakID: Integer;
    FistisnaiHal: string;
    FistisnaiHal_Specified: boolean;
    FfatutaIptalHakki: Integer;
    FfaturaTarihi: string;
    FfaturaTarihi_Specified: boolean;
    FhastaTelefon: string;
    FhastaTelefon_Specified: boolean;
    FhastaAdres: string;
    FhastaAdres_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetfaturaTeslimNo(Index: Integer; const Astring: string);
    function  faturaTeslimNo_Specified(Index: Integer): boolean;
    procedure SetilkTakipNo(Index: Integer; const Astring: string);
    function  ilkTakipNo_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdonorTCKimlikNo(Index: Integer; const Astring: string);
    function  donorTCKimlikNo_Specified(Index: Integer): boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SethastaBilgileri(Index: Integer; const AhastaBilgileriDVO: hastaBilgileriDVO);
    function  hastaBilgileri_Specified(Index: Integer): boolean;
    procedure SetkayitTarihi(Index: Integer; const Astring: string);
    function  kayitTarihi_Specified(Index: Integer): boolean;
    procedure SetprovizyonTipi(Index: Integer; const Astring: string);
    function  provizyonTipi_Specified(Index: Integer): boolean;
    procedure SettakipDurumu(Index: Integer; const Astring: string);
    function  takipDurumu_Specified(Index: Integer): boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SettakipTarihi(Index: Integer; const Astring: string);
    function  takipTarihi_Specified(Index: Integer): boolean;
    procedure SettakipTipi(Index: Integer; const Astring: string);
    function  takipTipi_Specified(Index: Integer): boolean;
    procedure SettedaviTipi(Index: Integer; const Astring: string);
    function  tedaviTipi_Specified(Index: Integer): boolean;
    procedure SettedaviTuru(Index: Integer; const Astring: string);
    function  tedaviTuru_Specified(Index: Integer): boolean;
    procedure SetsevkDurumu(Index: Integer; const Astring: string);
    function  sevkDurumu_Specified(Index: Integer): boolean;
    procedure SetyeniDoganCocukSiraNo(Index: Integer; const Astring: string);
    function  yeniDoganCocukSiraNo_Specified(Index: Integer): boolean;
    procedure SetyeniDoganDogumTarihi(Index: Integer; const Astring: string);
    function  yeniDoganDogumTarihi_Specified(Index: Integer): boolean;
    procedure SetarvFlag(Index: Integer; const Astring: string);
    function  arvFlag_Specified(Index: Integer): boolean;
    procedure SetistisnaiHal(Index: Integer; const Astring: string);
    function  istisnaiHal_Specified(Index: Integer): boolean;
    procedure SetfaturaTarihi(Index: Integer; const Astring: string);
    function  faturaTarihi_Specified(Index: Integer): boolean;
    procedure SethastaTelefon(Index: Integer; const Astring: string);
    function  hastaTelefon_Specified(Index: Integer): boolean;
    procedure SethastaAdres(Index: Integer; const Astring: string);
    function  hastaAdres_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property faturaTeslimNo:       string             Index (IS_OPTN or IS_UNQL) read FfaturaTeslimNo write SetfaturaTeslimNo stored faturaTeslimNo_Specified;
    property ilkTakipNo:           string             Index (IS_OPTN or IS_UNQL) read FilkTakipNo write SetilkTakipNo stored ilkTakipNo_Specified;
    property bransKodu:            string             Index (IS_OPTN or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property donorTCKimlikNo:      string             Index (IS_OPTN or IS_UNQL) read FdonorTCKimlikNo write SetdonorTCKimlikNo stored donorTCKimlikNo_Specified;
    property hastaBasvuruNo:       string             Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property hastaBilgileri:       hastaBilgileriDVO  Index (IS_OPTN or IS_UNQL) read FhastaBilgileri write SethastaBilgileri stored hastaBilgileri_Specified;
    property kayitTarihi:          string             Index (IS_OPTN or IS_UNQL) read FkayitTarihi write SetkayitTarihi stored kayitTarihi_Specified;
    property provizyonTipi:        string             Index (IS_OPTN or IS_UNQL) read FprovizyonTipi write SetprovizyonTipi stored provizyonTipi_Specified;
    property takipDurumu:          string             Index (IS_OPTN or IS_UNQL) read FtakipDurumu write SettakipDurumu stored takipDurumu_Specified;
    property takipNo:              string             Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property takipTarihi:          string             Index (IS_OPTN or IS_UNQL) read FtakipTarihi write SettakipTarihi stored takipTarihi_Specified;
    property takipTipi:            string             Index (IS_OPTN or IS_UNQL) read FtakipTipi write SettakipTipi stored takipTipi_Specified;
    property tedaviTipi:           string             Index (IS_OPTN or IS_UNQL) read FtedaviTipi write SettedaviTipi stored tedaviTipi_Specified;
    property tedaviTuru:           string             Index (IS_OPTN or IS_UNQL) read FtedaviTuru write SettedaviTuru stored tedaviTuru_Specified;
    property tesisKodu:            Integer            Index (IS_UNQL) read FtesisKodu write FtesisKodu;
    property sevkDurumu:           string             Index (IS_OPTN or IS_UNQL) read FsevkDurumu write SetsevkDurumu stored sevkDurumu_Specified;
    property yeniDoganCocukSiraNo: string             Index (IS_OPTN or IS_UNQL) read FyeniDoganCocukSiraNo write SetyeniDoganCocukSiraNo stored yeniDoganCocukSiraNo_Specified;
    property yeniDoganDogumTarihi: string             Index (IS_OPTN or IS_UNQL) read FyeniDoganDogumTarihi write SetyeniDoganDogumTarihi stored yeniDoganDogumTarihi_Specified;
    property arvFlag:              string             Index (IS_OPTN or IS_UNQL) read FarvFlag write SetarvFlag stored arvFlag_Specified;
    property evrakID:              Integer            Index (IS_UNQL) read FevrakID write FevrakID;
    property istisnaiHal:          string             Index (IS_OPTN or IS_UNQL) read FistisnaiHal write SetistisnaiHal stored istisnaiHal_Specified;
    property fatutaIptalHakki:     Integer            Index (IS_UNQL) read FfatutaIptalHakki write FfatutaIptalHakki;
    property faturaTarihi:         string             Index (IS_OPTN or IS_UNQL) read FfaturaTarihi write SetfaturaTarihi stored faturaTarihi_Specified;
    property hastaTelefon:         string             Index (IS_OPTN or IS_UNQL) read FhastaTelefon write SethastaTelefon stored hastaTelefon_Specified;
    property hastaAdres:           string             Index (IS_OPTN or IS_UNQL) read FhastaAdres write SethastaAdres stored hastaAdres_Specified;
    property sonucKodu:            string             Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:          string             Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : doktorAraGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  doktorAraGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FdrAdi: string;
    FdrAdi_Specified: boolean;
    FdrSoyadi: string;
    FdrSoyadi_Specified: boolean;
    FdrDiplomaNo: string;
    FdrDiplomaNo_Specified: boolean;
    FdrBransKodu: string;
    FdrBransKodu_Specified: boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SetdrAdi(Index: Integer; const Astring: string);
    function  drAdi_Specified(Index: Integer): boolean;
    procedure SetdrSoyadi(Index: Integer; const Astring: string);
    function  drSoyadi_Specified(Index: Integer): boolean;
    procedure SetdrDiplomaNo(Index: Integer; const Astring: string);
    function  drDiplomaNo_Specified(Index: Integer): boolean;
    procedure SetdrBransKodu(Index: Integer; const Astring: string);
    function  drBransKodu_Specified(Index: Integer): boolean;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property drTescilNo:      string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property drAdi:           string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrAdi write SetdrAdi stored drAdi_Specified;
    property drSoyadi:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrSoyadi write SetdrSoyadi stored drSoyadi_Specified;
    property drDiplomaNo:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrDiplomaNo write SetdrDiplomaNo stored drDiplomaNo_Specified;
    property drBransKodu:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrBransKodu write SetdrBransKodu stored drBransKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : barkodSutEslesmeSorguGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  barkodSutEslesmeSorguGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    Fbarkod: string;
    Fbarkod_Specified: boolean;
    FfirmaTanimlayiciNo: string;
    FfirmaTanimlayiciNo_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    Ftarih: string;
    Ftarih_Specified: boolean;
    procedure Setbarkod(Index: Integer; const Astring: string);
    function  barkod_Specified(Index: Integer): boolean;
    procedure SetfirmaTanimlayiciNo(Index: Integer; const Astring: string);
    function  firmaTanimlayiciNo_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure Settarih(Index: Integer; const Astring: string);
    function  tarih_Specified(Index: Integer): boolean;
  published
    property saglikTesisKodu:    Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property barkod:             string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fbarkod write Setbarkod stored barkod_Specified;
    property firmaTanimlayiciNo: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FfirmaTanimlayiciNo write SetfirmaTanimlayiciNo stored firmaTanimlayiciNo_Specified;
    property sutKodu:            string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property tarih:              string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Ftarih write Settarih stored tarih_Specified;
  end;



  // ************************************************************************ //
  // XML       : barkodSutEslesmeSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  barkodSutEslesmeSorguCevapDVO = class(TRemotable)
  private
    Feslesmeler: Array_Of_barkodSutDVO;
    Feslesmeler_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure Seteslesmeler(Index: Integer; const AArray_Of_barkodSutDVO: Array_Of_barkodSutDVO);
    function  eslesmeler_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property eslesmeler:  Array_Of_barkodSutDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Feslesmeler write Seteslesmeler stored eslesmeler_Specified;
    property sonucKodu:   string                 Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                 Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : barkodSutDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  barkodSutDVO = class(TRemotable)
  private
    Fbarkod: string;
    Fbarkod_Specified: boolean;
    FfirmaTanimlayiciNo: string;
    FfirmaTanimlayiciNo_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FsutListeKodu: string;
    FsutListeKodu_Specified: boolean;
    FiptalNedeni: string;
    FiptalNedeni_Specified: boolean;
    procedure Setbarkod(Index: Integer; const Astring: string);
    function  barkod_Specified(Index: Integer): boolean;
    procedure SetfirmaTanimlayiciNo(Index: Integer; const Astring: string);
    function  firmaTanimlayiciNo_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure SetsutListeKodu(Index: Integer; const Astring: string);
    function  sutListeKodu_Specified(Index: Integer): boolean;
    procedure SetiptalNedeni(Index: Integer; const Astring: string);
    function  iptalNedeni_Specified(Index: Integer): boolean;
  published
    property barkod:             string  Index (IS_OPTN or IS_UNQL) read Fbarkod write Setbarkod stored barkod_Specified;
    property firmaTanimlayiciNo: string  Index (IS_OPTN or IS_UNQL) read FfirmaTanimlayiciNo write SetfirmaTanimlayiciNo stored firmaTanimlayiciNo_Specified;
    property sutKodu:            string  Index (IS_OPTN or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property baslangicTarihi:    string  Index (IS_OPTN or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:        string  Index (IS_OPTN or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property sutListeKodu:       string  Index (IS_OPTN or IS_UNQL) read FsutListeKodu write SetsutListeKodu stored sutListeKodu_Specified;
    property iptalNedeni:        string  Index (IS_OPTN or IS_UNQL) read FiptalNedeni write SetiptalNedeni stored iptalNedeni_Specified;
  end;



  // ************************************************************************ //
  // XML       : doktorAraCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  doktorAraCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    Fdoktorlar: Array_Of_doktorListDVO;
    Fdoktorlar_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure Setdoktorlar(Index: Integer; const AArray_Of_doktorListDVO: Array_Of_doktorListDVO);
    function  doktorlar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonucKodu:   string                  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property doktorlar:   Array_Of_doktorListDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fdoktorlar write Setdoktorlar stored doktorlar_Specified;
  end;



  // ************************************************************************ //
  // XML       : evrakTakipGrupKoduDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  evrakTakipGrupKoduDVO = class(TRemotable)
  private
    Fkodu: Integer;
    Fadi: string;
    Fadi_Specified: boolean;
    procedure Setadi(Index: Integer; const Astring: string);
    function  adi_Specified(Index: Integer): boolean;
  published
    property kodu: Integer  Index (IS_UNQL) read Fkodu write Fkodu;
    property adi:  string   Index (IS_OPTN or IS_UNQL) read Fadi write Setadi stored adi_Specified;
  end;



  // ************************************************************************ //
  // XML       : takipAraCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipAraCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    Ftakipler: Array_Of_takipDVO;
    Ftakipler_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure Settakipler(Index: Integer; const AArray_Of_takipDVO: Array_Of_takipDVO);
    function  takipler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonucKodu:   string             Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string             Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property takipler:    Array_Of_takipDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftakipler write Settakipler stored takipler_Specified;
  end;



  // ************************************************************************ //
  // XML       : doktorListDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  doktorListDVO = class(TRemotable)
  private
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FdrAdi: string;
    FdrAdi_Specified: boolean;
    FdrSoyadi: string;
    FdrSoyadi_Specified: boolean;
    FdrDiplomaNo: string;
    FdrDiplomaNo_Specified: boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SetdrAdi(Index: Integer; const Astring: string);
    function  drAdi_Specified(Index: Integer): boolean;
    procedure SetdrSoyadi(Index: Integer; const Astring: string);
    function  drSoyadi_Specified(Index: Integer): boolean;
    procedure SetdrDiplomaNo(Index: Integer; const Astring: string);
    function  drDiplomaNo_Specified(Index: Integer): boolean;
  published
    property drTescilNo:  string  Index (IS_OPTN or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property drAdi:       string  Index (IS_OPTN or IS_UNQL) read FdrAdi write SetdrAdi stored drAdi_Specified;
    property drSoyadi:    string  Index (IS_OPTN or IS_UNQL) read FdrSoyadi write SetdrSoyadi stored drSoyadi_Specified;
    property drDiplomaNo: string  Index (IS_OPTN or IS_UNQL) read FdrDiplomaNo write SetdrDiplomaNo stored drDiplomaNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : takipAraGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipAraGirisDVO = class(TRemotable)
  private
    FhastaTCK: string;
    FbaslangicTarihi: string;
    FbitisTarihi: string;
    FsevkDurumu: string;
    FsevkDurumu_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetsevkDurumu(Index: Integer; const Astring: string);
    function  sevkDurumu_Specified(Index: Integer): boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property hastaTCK:        string   Index (IS_UNQL) read FhastaTCK write FhastaTCK;
    property baslangicTarihi: string   Index (IS_UNQL) read FbaslangicTarihi write FbaslangicTarihi;
    property bitisTarihi:     string   Index (IS_UNQL) read FbitisTarihi write FbitisTarihi;
    property sevkDurumu:      string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsevkDurumu write SetsevkDurumu stored sevkDurumu_Specified;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property ktsHbysKodu:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : katilimPayiCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  katilimPayiCevapDVO = class(TRemotable)
  private
    FevrakRefNo: Integer;
    FkatilimPayi: Array_Of_katilimPayiDVO;
    FkatilimPayi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetkatilimPayi(Index: Integer; const AArray_Of_katilimPayiDVO: Array_Of_katilimPayiDVO);
    function  katilimPayi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property evrakRefNo:  Integer                  Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
    property katilimPayi: Array_Of_katilimPayiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FkatilimPayi write SetkatilimPayi stored katilimPayi_Specified;
    property sonucKodu:   string                   Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                   Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : katilimPayiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  katilimPayiDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FmuayeneKatilimTutari: Double;
    FmalzemeKatilimTutari: Double;
    FtupBebekKatilimTutari: Double;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
  published
    property takipNo:               string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property muayeneKatilimTutari:  Double  Index (IS_UNQL) read FmuayeneKatilimTutari write FmuayeneKatilimTutari;
    property malzemeKatilimTutari:  Double  Index (IS_UNQL) read FmalzemeKatilimTutari write FmalzemeKatilimTutari;
    property tupBebekKatilimTutari: Double  Index (IS_UNQL) read FtupBebekKatilimTutari write FtupBebekKatilimTutari;
  end;



  // ************************************************************************ //
  // XML       : katilimPayiGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  katilimPayiGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FevrakRefNo: Integer;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property evrakRefNo:      Integer  Index (IS_UNQL) read FevrakRefNo write FevrakRefNo;
  end;



  // ************************************************************************ //
  // XML       : ilacAraGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacAraGirisDVO = class(TRemotable)
  private
    Fbarkod: string;
    Fbarkod_Specified: boolean;
    FilacAdi: string;
    FilacAdi_Specified: boolean;
    FsaglikTesisKodu: Integer;
    procedure Setbarkod(Index: Integer; const Astring: string);
    function  barkod_Specified(Index: Integer): boolean;
    procedure SetilacAdi(Index: Integer; const Astring: string);
    function  ilacAdi_Specified(Index: Integer): boolean;
  published
    property barkod:          string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fbarkod write Setbarkod stored barkod_Specified;
    property ilacAdi:         string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FilacAdi write SetilacAdi stored ilacAdi_Specified;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : tesisYatakBilgiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tesisYatakBilgiDVO = class(TRemotable)
  private
    FyatakKodu: string;
    FyatakKodu_Specified: boolean;
    Fturu: string;
    Fturu_Specified: boolean;
    FtescilTuru: Integer;
    Fseviye: Integer;
    FgecerlilikBaslangicTarihi: string;
    FgecerlilikBaslangicTarihi_Specified: boolean;
    FgecerlilikBitisTarihi: string;
    FgecerlilikBitisTarihi_Specified: boolean;
    procedure SetyatakKodu(Index: Integer; const Astring: string);
    function  yatakKodu_Specified(Index: Integer): boolean;
    procedure Setturu(Index: Integer; const Astring: string);
    function  turu_Specified(Index: Integer): boolean;
    procedure SetgecerlilikBaslangicTarihi(Index: Integer; const Astring: string);
    function  gecerlilikBaslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetgecerlilikBitisTarihi(Index: Integer; const Astring: string);
    function  gecerlilikBitisTarihi_Specified(Index: Integer): boolean;
  published
    property yatakKodu:                 string   Index (IS_OPTN or IS_UNQL) read FyatakKodu write SetyatakKodu stored yatakKodu_Specified;
    property turu:                      string   Index (IS_OPTN or IS_UNQL) read Fturu write Setturu stored turu_Specified;
    property tescilTuru:                Integer  Index (IS_UNQL) read FtescilTuru write FtescilTuru;
    property seviye:                    Integer  Index (IS_UNQL) read Fseviye write Fseviye;
    property gecerlilikBaslangicTarihi: string   Index (IS_OPTN or IS_UNQL) read FgecerlilikBaslangicTarihi write SetgecerlilikBaslangicTarihi stored gecerlilikBaslangicTarihi_Specified;
    property gecerlilikBitisTarihi:     string   Index (IS_OPTN or IS_UNQL) read FgecerlilikBitisTarihi write SetgecerlilikBitisTarihi stored gecerlilikBitisTarihi_Specified;
  end;



  // ************************************************************************ //
  // XML       : saglikTesisiListDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  saglikTesisiListDVO = class(TRemotable)
  private
    FtesisKodu: Integer;
    FtesisAdi: string;
    FtesisAdi_Specified: boolean;
    FtesisIl: string;
    FtesisIl_Specified: boolean;
    FtesisTuru: string;
    FtesisTuru_Specified: boolean;
    FtesisSinifKodu: string;
    FtesisSinifKodu_Specified: boolean;
    procedure SettesisAdi(Index: Integer; const Astring: string);
    function  tesisAdi_Specified(Index: Integer): boolean;
    procedure SettesisIl(Index: Integer; const Astring: string);
    function  tesisIl_Specified(Index: Integer): boolean;
    procedure SettesisTuru(Index: Integer; const Astring: string);
    function  tesisTuru_Specified(Index: Integer): boolean;
    procedure SettesisSinifKodu(Index: Integer; const Astring: string);
    function  tesisSinifKodu_Specified(Index: Integer): boolean;
  published
    property tesisKodu:      Integer  Index (IS_UNQL) read FtesisKodu write FtesisKodu;
    property tesisAdi:       string   Index (IS_OPTN or IS_UNQL) read FtesisAdi write SettesisAdi stored tesisAdi_Specified;
    property tesisIl:        string   Index (IS_OPTN or IS_UNQL) read FtesisIl write SettesisIl stored tesisIl_Specified;
    property tesisTuru:      string   Index (IS_OPTN or IS_UNQL) read FtesisTuru write SettesisTuru stored tesisTuru_Specified;
    property tesisSinifKodu: string   Index (IS_OPTN or IS_UNQL) read FtesisSinifKodu write SettesisSinifKodu stored tesisSinifKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : saglikTesisiAraCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  saglikTesisiAraCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    Ftesisler: Array_Of_saglikTesisiListDVO;
    Ftesisler_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure Settesisler(Index: Integer; const AArray_Of_saglikTesisiListDVO: Array_Of_saglikTesisiListDVO);
    function  tesisler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonucKodu:   string                        Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                        Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property tesisler:    Array_Of_saglikTesisiListDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftesisler write Settesisler stored tesisler_Specified;
  end;



  // ************************************************************************ //
  // XML       : tesisYatakSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tesisYatakSorguCevapDVO = class(TRemotable)
  private
    Fyataklar: Array_Of_tesisYatakBilgiDVO;
    Fyataklar_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure Setyataklar(Index: Integer; const AArray_Of_tesisYatakBilgiDVO: Array_Of_tesisYatakBilgiDVO);
    function  yataklar_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property yataklar:    Array_Of_tesisYatakBilgiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fyataklar write Setyataklar stored yataklar_Specified;
    property sonucKodu:   string                       Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                       Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : tesisYatakSorguGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tesisYatakSorguGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    Ftarih: string;
    Ftarih_Specified: boolean;
    procedure Settarih(Index: Integer; const Astring: string);
    function  tarih_Specified(Index: Integer): boolean;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property tarih:           string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Ftarih write Settarih stored tarih_Specified;
  end;



  // ************************************************************************ //
  // XML       : damarIziDogrulamaDetayDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  damarIziDogrulamaDetayDVO = class(TRemotable)
  private
    FtckNo: string;
    FtckNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    Fbrans: string;
    Fbrans_Specified: boolean;
    FtesisKodu: Integer;
    FfirmaAdi: string;
    FfirmaAdi_Specified: boolean;
    FislemSaati: string;
    FislemSaati_Specified: boolean;
    Fdurum: string;
    Fdurum_Specified: boolean;
    procedure SettckNo(Index: Integer; const Astring: string);
    function  tckNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure Setbrans(Index: Integer; const Astring: string);
    function  brans_Specified(Index: Integer): boolean;
    procedure SetfirmaAdi(Index: Integer; const Astring: string);
    function  firmaAdi_Specified(Index: Integer): boolean;
    procedure SetislemSaati(Index: Integer; const Astring: string);
    function  islemSaati_Specified(Index: Integer): boolean;
    procedure Setdurum(Index: Integer; const Astring: string);
    function  durum_Specified(Index: Integer): boolean;
  published
    property tckNo:       string   Index (IS_OPTN or IS_UNQL) read FtckNo write SettckNo stored tckNo_Specified;
    property islemTarihi: string   Index (IS_OPTN or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property brans:       string   Index (IS_OPTN or IS_UNQL) read Fbrans write Setbrans stored brans_Specified;
    property tesisKodu:   Integer  Index (IS_UNQL) read FtesisKodu write FtesisKodu;
    property firmaAdi:    string   Index (IS_OPTN or IS_UNQL) read FfirmaAdi write SetfirmaAdi stored firmaAdi_Specified;
    property islemSaati:  string   Index (IS_OPTN or IS_UNQL) read FislemSaati write SetislemSaati stored islemSaati_Specified;
    property durum:       string   Index (IS_OPTN or IS_UNQL) read Fdurum write Setdurum stored durum_Specified;
  end;



  // ************************************************************************ //
  // XML       : fiyatListDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  fiyatListDVO = class(TRemotable)
  private
    FgecerlilikTarihi: string;
    FgecerlilikTarihi_Specified: boolean;
    Ffiyat: Double;
    procedure SetgecerlilikTarihi(Index: Integer; const Astring: string);
    function  gecerlilikTarihi_Specified(Index: Integer): boolean;
  published
    property gecerlilikTarihi: string  Index (IS_OPTN or IS_UNQL) read FgecerlilikTarihi write SetgecerlilikTarihi stored gecerlilikTarihi_Specified;
    property fiyat:            Double  Index (IS_UNQL) read Ffiyat write Ffiyat;
  end;



  // ************************************************************************ //
  // XML       : yurtDisiYardimHakkiGetirCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  yurtDisiYardimHakkiGetirCevapDVO = class(TRemotable)
  private
    FyurtDisiDetay: Array_Of_yurtDisiYardimHakkiGetirCevapDetayDVO;
    FyurtDisiDetay_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetyurtDisiDetay(Index: Integer; const AArray_Of_yurtDisiYardimHakkiGetirCevapDetayDVO: Array_Of_yurtDisiYardimHakkiGetirCevapDetayDVO);
    function  yurtDisiDetay_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property yurtDisiDetay: Array_Of_yurtDisiYardimHakkiGetirCevapDetayDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FyurtDisiDetay write SetyurtDisiDetay stored yurtDisiDetay_Specified;
    property sonucKodu:     string                                          Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:   string                                          Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : ilacIndirimDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacIndirimDVO = class(TRemotable)
  private
    FgecerlilikTarihi: string;
    FgecerlilikTarihi_Specified: boolean;
    Filac_id: Integer;
    FkamuIndOranUst: Double;
    FkamuIndOranAlt: Double;
    FindirimOrani1: Double;
    FindirimOrani2: Double;
    FindirimOrani3: Double;
    FindirimOrani4: Double;
    procedure SetgecerlilikTarihi(Index: Integer; const Astring: string);
    function  gecerlilikTarihi_Specified(Index: Integer): boolean;
  published
    property gecerlilikTarihi: string   Index (IS_OPTN or IS_UNQL) read FgecerlilikTarihi write SetgecerlilikTarihi stored gecerlilikTarihi_Specified;
    property ilac_id:          Integer  Index (IS_UNQL) read Filac_id write Filac_id;
    property kamuIndOranUst:   Double   Index (IS_UNQL) read FkamuIndOranUst write FkamuIndOranUst;
    property kamuIndOranAlt:   Double   Index (IS_UNQL) read FkamuIndOranAlt write FkamuIndOranAlt;
    property indirimOrani1:    Double   Index (IS_UNQL) read FindirimOrani1 write FindirimOrani1;
    property indirimOrani2:    Double   Index (IS_UNQL) read FindirimOrani2 write FindirimOrani2;
    property indirimOrani3:    Double   Index (IS_UNQL) read FindirimOrani3 write FindirimOrani3;
    property indirimOrani4:    Double   Index (IS_UNQL) read FindirimOrani4 write FindirimOrani4;
  end;



  // ************************************************************************ //
  // XML       : yurtDisiYardimHakkiGetirGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  yurtDisiYardimHakkiGetirGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FkisiNo: string;
    FprovizyonTarihi: string;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property kisiNo:          string   Index (IS_UNQL) read FkisiNo write FkisiNo;
    property provizyonTarihi: string   Index (IS_UNQL) read FprovizyonTarihi write FprovizyonTarihi;
  end;



  // ************************************************************************ //
  // XML       : yurtDisiYardimHakkiGetirCevapDetayDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  yurtDisiYardimHakkiGetirCevapDetayDVO = class(TRemotable)
  private
    Fid: Integer;
    FkisiNo: string;
    FkisiNo_Specified: boolean;
    Fadi: string;
    Fadi_Specified: boolean;
    Fsoyadi: string;
    Fsoyadi_Specified: boolean;
    FformulAdi: string;
    FformulAdi_Specified: boolean;
    FodemeTuru: string;
    FodemeTuru_Specified: boolean;
    FtedaviKapsami: string;
    FtedaviKapsami_Specified: boolean;
    FsorguTarihi: string;
    FsorguTarihi_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    procedure SetkisiNo(Index: Integer; const Astring: string);
    function  kisiNo_Specified(Index: Integer): boolean;
    procedure Setadi(Index: Integer; const Astring: string);
    function  adi_Specified(Index: Integer): boolean;
    procedure Setsoyadi(Index: Integer; const Astring: string);
    function  soyadi_Specified(Index: Integer): boolean;
    procedure SetformulAdi(Index: Integer; const Astring: string);
    function  formulAdi_Specified(Index: Integer): boolean;
    procedure SetodemeTuru(Index: Integer; const Astring: string);
    function  odemeTuru_Specified(Index: Integer): boolean;
    procedure SettedaviKapsami(Index: Integer; const Astring: string);
    function  tedaviKapsami_Specified(Index: Integer): boolean;
    procedure SetsorguTarihi(Index: Integer; const Astring: string);
    function  sorguTarihi_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
  published
    property id:            Integer  Index (IS_UNQL) read Fid write Fid;
    property kisiNo:        string   Index (IS_OPTN or IS_UNQL) read FkisiNo write SetkisiNo stored kisiNo_Specified;
    property adi:           string   Index (IS_OPTN or IS_UNQL) read Fadi write Setadi stored adi_Specified;
    property soyadi:        string   Index (IS_OPTN or IS_UNQL) read Fsoyadi write Setsoyadi stored soyadi_Specified;
    property formulAdi:     string   Index (IS_OPTN or IS_UNQL) read FformulAdi write SetformulAdi stored formulAdi_Specified;
    property odemeTuru:     string   Index (IS_OPTN or IS_UNQL) read FodemeTuru write SetodemeTuru stored odemeTuru_Specified;
    property tedaviKapsami: string   Index (IS_OPTN or IS_UNQL) read FtedaviKapsami write SettedaviKapsami stored tedaviKapsami_Specified;
    property sorguTarihi:   string   Index (IS_OPTN or IS_UNQL) read FsorguTarihi write SetsorguTarihi stored sorguTarihi_Specified;
    property aciklama:      string   Index (IS_OPTN or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : ilacAraCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacAraCevapDVO = class(TRemotable)
  private
    Filaclar: Array_Of_ilacListDVO;
    Filaclar_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure Setilaclar(Index: Integer; const AArray_Of_ilacListDVO: Array_Of_ilacListDVO);
    function  ilaclar_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property ilaclar:     Array_Of_ilacListDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Filaclar write Setilaclar stored ilaclar_Specified;
    property sonucKodu:   string                Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string                Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : damarIziDogrulamaSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  damarIziDogrulamaSorguCevapDVO = class(TRemotable)
  private
    FdamarIziSorguDetay: Array_Of_damarIziDogrulamaDetayDVO;
    FdamarIziSorguDetay_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetdamarIziSorguDetay(Index: Integer; const AArray_Of_damarIziDogrulamaDetayDVO: Array_Of_damarIziDogrulamaDetayDVO);
    function  damarIziSorguDetay_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property damarIziSorguDetay: Array_Of_damarIziDogrulamaDetayDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdamarIziSorguDetay write SetdamarIziSorguDetay stored damarIziSorguDetay_Specified;
    property sonucKodu:          string                              Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:        string                              Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : ilacListDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacListDVO = class(TRemotable)
  private
    Fbarkod: string;
    Fbarkod_Specified: boolean;
    FilacAdi: string;
    FilacAdi_Specified: boolean;
    FkullanimBirimi: Double;
    FilacFiyatlari: Array_Of_fiyatListDVO;
    FilacFiyatlari_Specified: boolean;
    FilacIndirimleri: Array_Of_ilacIndirimDVO;
    FilacIndirimleri_Specified: boolean;
    FeczAktifPasif: string;
    FeczAktifPasif_Specified: boolean;
    FhasAktifPasif: string;
    FhasAktifPasif_Specified: boolean;
    FayaktanOdenme: string;
    FayaktanOdenme_Specified: boolean;
    FyatanOdenme: string;
    FyatanOdenme_Specified: boolean;
    FguncelKamuIndirimliFiyati: Double;
    procedure Setbarkod(Index: Integer; const Astring: string);
    function  barkod_Specified(Index: Integer): boolean;
    procedure SetilacAdi(Index: Integer; const Astring: string);
    function  ilacAdi_Specified(Index: Integer): boolean;
    procedure SetilacFiyatlari(Index: Integer; const AArray_Of_fiyatListDVO: Array_Of_fiyatListDVO);
    function  ilacFiyatlari_Specified(Index: Integer): boolean;
    procedure SetilacIndirimleri(Index: Integer; const AArray_Of_ilacIndirimDVO: Array_Of_ilacIndirimDVO);
    function  ilacIndirimleri_Specified(Index: Integer): boolean;
    procedure SeteczAktifPasif(Index: Integer; const Astring: string);
    function  eczAktifPasif_Specified(Index: Integer): boolean;
    procedure SethasAktifPasif(Index: Integer; const Astring: string);
    function  hasAktifPasif_Specified(Index: Integer): boolean;
    procedure SetayaktanOdenme(Index: Integer; const Astring: string);
    function  ayaktanOdenme_Specified(Index: Integer): boolean;
    procedure SetyatanOdenme(Index: Integer; const Astring: string);
    function  yatanOdenme_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property barkod:                    string                   Index (IS_OPTN or IS_UNQL) read Fbarkod write Setbarkod stored barkod_Specified;
    property ilacAdi:                   string                   Index (IS_OPTN or IS_UNQL) read FilacAdi write SetilacAdi stored ilacAdi_Specified;
    property kullanimBirimi:            Double                   Index (IS_UNQL) read FkullanimBirimi write FkullanimBirimi;
    property ilacFiyatlari:             Array_Of_fiyatListDVO    Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FilacFiyatlari write SetilacFiyatlari stored ilacFiyatlari_Specified;
    property ilacIndirimleri:           Array_Of_ilacIndirimDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FilacIndirimleri write SetilacIndirimleri stored ilacIndirimleri_Specified;
    property eczAktifPasif:             string                   Index (IS_OPTN or IS_UNQL) read FeczAktifPasif write SeteczAktifPasif stored eczAktifPasif_Specified;
    property hasAktifPasif:             string                   Index (IS_OPTN or IS_UNQL) read FhasAktifPasif write SethasAktifPasif stored hasAktifPasif_Specified;
    property ayaktanOdenme:             string                   Index (IS_OPTN or IS_UNQL) read FayaktanOdenme write SetayaktanOdenme stored ayaktanOdenme_Specified;
    property yatanOdenme:               string                   Index (IS_OPTN or IS_UNQL) read FyatanOdenme write SetyatanOdenme stored yatanOdenme_Specified;
    property guncelKamuIndirimliFiyati: Double                   Index (IS_UNQL) read FguncelKamuIndirimliFiyati write FguncelKamuIndirimliFiyati;
  end;



  // ************************************************************************ //
  // XML       : damarIziDogrulamaSorguGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  damarIziDogrulamaSorguGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FtckNo: string;
    FislemTarihi: string;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property tckNo:           string   Index (IS_UNQL) read FtckNo write FtckNo;
    property islemTarihi:     string   Index (IS_UNQL) read FislemTarihi write FislemTarihi;
  end;


  // ************************************************************************ //
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : YardimciIslemlerPortBinding
  // service   : YardimciIslemlerService
  // port      : YardimciIslemlerPort
  // URL       : http://sgkt.sgk.gov.tr/medula/hastane/yardimciIslemlerWS
  // ************************************************************************ //
  YardimciIslemler = interface(IInvokable)
  ['{D9D222E0-24F1-3C3D-B4C2-4DF86CBDE233}']
    function  saglikTesisiAra(const saglikTesisiAraGiris: saglikTesisiAraGirisDVO): saglikTesisiAraCevapDVO; stdcall;
    function  doktorAra(const doktorAraGiris: doktorAraGirisDVO): doktorAraCevapDVO; stdcall;
    function  takipAra(const takipAraGiris: takipAraGirisDVO): takipAraCevapDVO; stdcall;
    function  ilacAra(const ilacAraGiris: ilacAraGirisDVO): ilacAraCevapDVO; stdcall;
    function  getOrneklenmisTakipler(const orneklenmisGiris: orneklenmisGirisDVO): orneklenmisCevapDVO; stdcall;
    function  kesintiYapilmisIslemler(const evrakKesintiGiris: evrakKesintiGirisDVO): evrakKesintiCevapDVO; stdcall;
    function  kisiGecmisIslemSorgu(const kisiGecmisIslemlerGiris: kisiGecmisIslemlerGirisDVO): kisiGecmisIslemlerCevapDVO; stdcall;
    function  katilimPayiUcreti(const katilimPayiGiris: katilimPayiGirisDVO): katilimPayiCevapDVO; stdcall;
    function  takipBilgileriListesi(const takipBilgisiGiris: takipBilgisiGirisDVO): takipBilgisiCevapDVO; stdcall;
    function  yurtDisiYardimHakkiGetir(const yurtDisiYardimHakkiGetirGiris: yurtDisiYardimHakkiGetirGirisDVO): yurtDisiYardimHakkiGetirCevapDVO; stdcall;
    function  damarIziDogrulamaSorgu(const damarIziDogrulamaSorguGiris: damarIziDogrulamaSorguGirisDVO): damarIziDogrulamaSorguCevapDVO; stdcall;
    function  guncelSutKodlari(const guncelSutSorguGiris: guncelSutSorguGirisDVO): guncelSutSorguCevapDVO; stdcall;
    function  evrakTakipGrupKodlariSorgu(const evrakTakipGrupKodlariSorguGiris: evrakTakipGrupKoduSorguGirisDVO): evrakTakipGrupKoduSorguCevapDVO; stdcall;
    function  tesisYatakSorgu(const tesisYatakSorguGiris: tesisYatakSorguGirisDVO): tesisYatakSorguCevapDVO; stdcall;
    function  barkodSutEslesmeSorgu(const barkodSutEslesmeSorguGiris: barkodSutEslesmeSorguGirisDVO): barkodSutEslesmeSorguCevapDVO; stdcall;
  end;

function GetYardimciIslemler(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): YardimciIslemler;


implementation
  uses SysUtils;

function GetYardimciIslemler(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): YardimciIslemler;
const
  defWSDL = 'D:\Projeler\DELPHI\Klinik2007\klinik2007\yardimciIslemlerWS.wsdl';
  defURL  = 'http://sgkt.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';
  defSvc  = 'YardimciIslemlerService';
  defPrt  = 'YardimciIslemlerPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as YardimciIslemler);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


procedure takipBilgisiListDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function takipBilgisiListDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure takipBilgisiListDVO.SetgrupTuru(Index: Integer; const Astring: string);
begin
  FgrupTuru := Astring;
  FgrupTuru_Specified := True;
end;

function takipBilgisiListDVO.grupTuru_Specified(Index: Integer): boolean;
begin
  Result := FgrupTuru_Specified;
end;

procedure takipBilgisiListDVO.SetgrupAdi(Index: Integer; const Astring: string);
begin
  FgrupAdi := Astring;
  FgrupAdi_Specified := True;
end;

function takipBilgisiListDVO.grupAdi_Specified(Index: Integer): boolean;
begin
  Result := FgrupAdi_Specified;
end;

procedure takipIslemKesintiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function takipIslemKesintiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure takipIslemKesintiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function takipIslemKesintiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure takipIslemKesintiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function takipIslemKesintiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure takipIslemKesintiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function takipIslemKesintiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure takipIslemKesintiDVO.SetislemAdi(Index: Integer; const Astring: string);
begin
  FislemAdi := Astring;
  FislemAdi_Specified := True;
end;

function takipIslemKesintiDVO.islemAdi_Specified(Index: Integer): boolean;
begin
  Result := FislemAdi_Specified;
end;

procedure takipIslemKesintiDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function takipIslemKesintiDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

destructor evrakKesintiCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftakipler)-1 do
    SysUtils.FreeAndNil(Ftakipler[I]);
  System.SetLength(Ftakipler, 0);
  inherited Destroy;
end;

procedure evrakKesintiCevapDVO.Settakipler(Index: Integer; const AArray_Of_evrakTakipDVO: Array_Of_evrakTakipDVO);
begin
  Ftakipler := AArray_Of_evrakTakipDVO;
  Ftakipler_Specified := True;
end;

function evrakKesintiCevapDVO.takipler_Specified(Index: Integer): boolean;
begin
  Result := Ftakipler_Specified;
end;

procedure evrakKesintiCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function evrakKesintiCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure evrakKesintiCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function evrakKesintiCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure takipBilgisiGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function takipBilgisiGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

procedure guncelSutSorguGirisDVO.Settarih(Index: Integer; const Astring: string);
begin
  Ftarih := Astring;
  Ftarih_Specified := True;
end;

function guncelSutSorguGirisDVO.tarih_Specified(Index: Integer): boolean;
begin
  Result := Ftarih_Specified;
end;

procedure sutFiyatDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function sutFiyatDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure sutFiyatDVO.Setadi(Index: Integer; const Astring: string);
begin
  Fadi := Astring;
  Fadi_Specified := True;
end;

function sutFiyatDVO.adi_Specified(Index: Integer): boolean;
begin
  Result := Fadi_Specified;
end;

procedure sutFiyatDVO.SetgecerlilikTarihi(Index: Integer; const Astring: string);
begin
  FgecerlilikTarihi := Astring;
  FgecerlilikTarihi_Specified := True;
end;

function sutFiyatDVO.gecerlilikTarihi_Specified(Index: Integer): boolean;
begin
  Result := FgecerlilikTarihi_Specified;
end;

procedure sutFiyatDVO.SetlisteAdi(Index: Integer; const Astring: string);
begin
  FlisteAdi := Astring;
  FlisteAdi_Specified := True;
end;

function sutFiyatDVO.listeAdi_Specified(Index: Integer): boolean;
begin
  Result := FlisteAdi_Specified;
end;

destructor evrakTakipDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fkesintiler)-1 do
    SysUtils.FreeAndNil(Fkesintiler[I]);
  System.SetLength(Fkesintiler, 0);
  inherited Destroy;
end;

procedure evrakTakipDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function evrakTakipDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure evrakTakipDVO.SetgrupTuru(Index: Integer; const Astring: string);
begin
  FgrupTuru := Astring;
  FgrupTuru_Specified := True;
end;

function evrakTakipDVO.grupTuru_Specified(Index: Integer): boolean;
begin
  Result := FgrupTuru_Specified;
end;

procedure evrakTakipDVO.Setkesintiler(Index: Integer; const AArray_Of_takipIslemKesintiDVO: Array_Of_takipIslemKesintiDVO);
begin
  Fkesintiler := AArray_Of_takipIslemKesintiDVO;
  Fkesintiler_Specified := True;
end;

function evrakTakipDVO.kesintiler_Specified(Index: Integer): boolean;
begin
  Result := Fkesintiler_Specified;
end;

procedure saglikTesisiAraGirisDVO.SettesisKodu(Index: Integer; const Astring: string);
begin
  FtesisKodu := Astring;
  FtesisKodu_Specified := True;
end;

function saglikTesisiAraGirisDVO.tesisKodu_Specified(Index: Integer): boolean;
begin
  Result := FtesisKodu_Specified;
end;

procedure saglikTesisiAraGirisDVO.SettesisTuru(Index: Integer; const Astring: string);
begin
  FtesisTuru := Astring;
  FtesisTuru_Specified := True;
end;

function saglikTesisiAraGirisDVO.tesisTuru_Specified(Index: Integer): boolean;
begin
  Result := FtesisTuru_Specified;
end;

procedure saglikTesisiAraGirisDVO.SettesisIlKodu(Index: Integer; const Astring: string);
begin
  FtesisIlKodu := Astring;
  FtesisIlKodu_Specified := True;
end;

function saglikTesisiAraGirisDVO.tesisIlKodu_Specified(Index: Integer): boolean;
begin
  Result := FtesisIlKodu_Specified;
end;

procedure saglikTesisiAraGirisDVO.SettesisAdi(Index: Integer; const Astring: string);
begin
  FtesisAdi := Astring;
  FtesisAdi_Specified := True;
end;

function saglikTesisiAraGirisDVO.tesisAdi_Specified(Index: Integer): boolean;
begin
  Result := FtesisAdi_Specified;
end;

destructor takipBilgisiCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FtakipBilgisiListDVO)-1 do
    SysUtils.FreeAndNil(FtakipBilgisiListDVO[I]);
  System.SetLength(FtakipBilgisiListDVO, 0);
  inherited Destroy;
end;

procedure takipBilgisiCevapDVO.SettakipBilgisiListDVO(Index: Integer; const AArray_Of_takipBilgisiListDVO: Array_Of_takipBilgisiListDVO);
begin
  FtakipBilgisiListDVO := AArray_Of_takipBilgisiListDVO;
  FtakipBilgisiListDVO_Specified := True;
end;

function takipBilgisiCevapDVO.takipBilgisiListDVO_Specified(Index: Integer): boolean;
begin
  Result := FtakipBilgisiListDVO_Specified;
end;

procedure takipBilgisiCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function takipBilgisiCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure takipBilgisiCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function takipBilgisiCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor guncelSutSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FsutKodlari)-1 do
    SysUtils.FreeAndNil(FsutKodlari[I]);
  System.SetLength(FsutKodlari, 0);
  inherited Destroy;
end;

procedure guncelSutSorguCevapDVO.SetsutKodlari(Index: Integer; const AArray_Of_sutFiyatDVO: Array_Of_sutFiyatDVO);
begin
  FsutKodlari := AArray_Of_sutFiyatDVO;
  FsutKodlari_Specified := True;
end;

function guncelSutSorguCevapDVO.sutKodlari_Specified(Index: Integer): boolean;
begin
  Result := FsutKodlari_Specified;
end;

procedure guncelSutSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function guncelSutSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure guncelSutSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function guncelSutSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor orneklenmisCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftakipler)-1 do
    SysUtils.FreeAndNil(Ftakipler[I]);
  System.SetLength(Ftakipler, 0);
  inherited Destroy;
end;

procedure orneklenmisCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function orneklenmisCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure orneklenmisCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function orneklenmisCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure orneklenmisCevapDVO.Settakipler(Index: Integer; const AArray_Of_evrakTakipDVO: Array_Of_evrakTakipDVO);
begin
  Ftakipler := AArray_Of_evrakTakipDVO;
  Ftakipler_Specified := True;
end;

function orneklenmisCevapDVO.takipler_Specified(Index: Integer): boolean;
begin
  Result := Ftakipler_Specified;
end;

procedure hastaBilgileriDVO.SettcKimlikNo(Index: Integer; const Astring: string);
begin
  FtcKimlikNo := Astring;
  FtcKimlikNo_Specified := True;
end;

function hastaBilgileriDVO.tcKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FtcKimlikNo_Specified;
end;

procedure hastaBilgileriDVO.Setad(Index: Integer; const Astring: string);
begin
  Fad := Astring;
  Fad_Specified := True;
end;

function hastaBilgileriDVO.ad_Specified(Index: Integer): boolean;
begin
  Result := Fad_Specified;
end;

procedure hastaBilgileriDVO.Setsoyad(Index: Integer; const Astring: string);
begin
  Fsoyad := Astring;
  Fsoyad_Specified := True;
end;

function hastaBilgileriDVO.soyad_Specified(Index: Integer): boolean;
begin
  Result := Fsoyad_Specified;
end;

procedure hastaBilgileriDVO.Setcinsiyet(Index: Integer; const Astring: string);
begin
  Fcinsiyet := Astring;
  Fcinsiyet_Specified := True;
end;

function hastaBilgileriDVO.cinsiyet_Specified(Index: Integer): boolean;
begin
  Result := Fcinsiyet_Specified;
end;

procedure hastaBilgileriDVO.SetdogumTarihi(Index: Integer; const Astring: string);
begin
  FdogumTarihi := Astring;
  FdogumTarihi_Specified := True;
end;

function hastaBilgileriDVO.dogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FdogumTarihi_Specified;
end;

procedure hastaBilgileriDVO.SetsigortaliTuru(Index: Integer; const Astring: string);
begin
  FsigortaliTuru := Astring;
  FsigortaliTuru_Specified := True;
end;

function hastaBilgileriDVO.sigortaliTuru_Specified(Index: Integer): boolean;
begin
  Result := FsigortaliTuru_Specified;
end;

procedure hastaBilgileriDVO.SetdevredilenKurum(Index: Integer; const Astring: string);
begin
  FdevredilenKurum := Astring;
  FdevredilenKurum_Specified := True;
end;

function hastaBilgileriDVO.devredilenKurum_Specified(Index: Integer): boolean;
begin
  Result := FdevredilenKurum_Specified;
end;

procedure hastaBilgileriDVO.SetkatilimPayindanMuaf(Index: Integer; const Astring: string);
begin
  FkatilimPayindanMuaf := Astring;
  FkatilimPayindanMuaf_Specified := True;
end;

function hastaBilgileriDVO.katilimPayindanMuaf_Specified(Index: Integer): boolean;
begin
  Result := FkatilimPayindanMuaf_Specified;
end;

procedure hastaBilgileriDVO.SetkapsamAdi(Index: Integer; const Astring: string);
begin
  FkapsamAdi := Astring;
  FkapsamAdi_Specified := True;
end;

function hastaBilgileriDVO.kapsamAdi_Specified(Index: Integer): boolean;
begin
  Result := FkapsamAdi_Specified;
end;

procedure hastaBilgileriDVO.SetolumTarihi(Index: Integer; const Astring: string);
begin
  FolumTarihi := Astring;
  FolumTarihi_Specified := True;
end;

function hastaBilgileriDVO.olumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FolumTarihi_Specified;
end;

destructor evrakTakipGrupKoduSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FgrupKodlari)-1 do
    SysUtils.FreeAndNil(FgrupKodlari[I]);
  System.SetLength(FgrupKodlari, 0);
  inherited Destroy;
end;

procedure evrakTakipGrupKoduSorguCevapDVO.SetgrupKodlari(Index: Integer; const AArray_Of_evrakTakipGrupKoduDVO: Array_Of_evrakTakipGrupKoduDVO);
begin
  FgrupKodlari := AArray_Of_evrakTakipGrupKoduDVO;
  FgrupKodlari_Specified := True;
end;

function evrakTakipGrupKoduSorguCevapDVO.grupKodlari_Specified(Index: Integer): boolean;
begin
  Result := FgrupKodlari_Specified;
end;

procedure evrakTakipGrupKoduSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function evrakTakipGrupKoduSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure evrakTakipGrupKoduSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function evrakTakipGrupKoduSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor kisiGecmisIslemlerCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FoncekiIslemler)-1 do
    SysUtils.FreeAndNil(FoncekiIslemler[I]);
  System.SetLength(FoncekiIslemler, 0);
  inherited Destroy;
end;

procedure kisiGecmisIslemlerCevapDVO.SetoncekiIslemler(Index: Integer; const AArray_Of_kisiIslemDVO: Array_Of_kisiIslemDVO);
begin
  FoncekiIslemler := AArray_Of_kisiIslemDVO;
  FoncekiIslemler_Specified := True;
end;

function kisiGecmisIslemlerCevapDVO.oncekiIslemler_Specified(Index: Integer): boolean;
begin
  Result := FoncekiIslemler_Specified;
end;

procedure kisiGecmisIslemlerCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function kisiGecmisIslemlerCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure kisiGecmisIslemlerCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function kisiGecmisIslemlerCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure kisiIslemDVO.SettesisAdi(Index: Integer; const Astring: string);
begin
  FtesisAdi := Astring;
  FtesisAdi_Specified := True;
end;

function kisiIslemDVO.tesisAdi_Specified(Index: Integer): boolean;
begin
  Result := FtesisAdi_Specified;
end;

procedure kisiIslemDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function kisiIslemDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

destructor takipDVO.Destroy;
begin
  SysUtils.FreeAndNil(FhastaBilgileri);
  inherited Destroy;
end;

procedure takipDVO.SetfaturaTeslimNo(Index: Integer; const Astring: string);
begin
  FfaturaTeslimNo := Astring;
  FfaturaTeslimNo_Specified := True;
end;

function takipDVO.faturaTeslimNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTeslimNo_Specified;
end;

procedure takipDVO.SetilkTakipNo(Index: Integer; const Astring: string);
begin
  FilkTakipNo := Astring;
  FilkTakipNo_Specified := True;
end;

function takipDVO.ilkTakipNo_Specified(Index: Integer): boolean;
begin
  Result := FilkTakipNo_Specified;
end;

procedure takipDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function takipDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure takipDVO.SetdonorTCKimlikNo(Index: Integer; const Astring: string);
begin
  FdonorTCKimlikNo := Astring;
  FdonorTCKimlikNo_Specified := True;
end;

function takipDVO.donorTCKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FdonorTCKimlikNo_Specified;
end;

procedure takipDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function takipDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure takipDVO.SethastaBilgileri(Index: Integer; const AhastaBilgileriDVO: hastaBilgileriDVO);
begin
  FhastaBilgileri := AhastaBilgileriDVO;
  FhastaBilgileri_Specified := True;
end;

function takipDVO.hastaBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FhastaBilgileri_Specified;
end;

procedure takipDVO.SetkayitTarihi(Index: Integer; const Astring: string);
begin
  FkayitTarihi := Astring;
  FkayitTarihi_Specified := True;
end;

function takipDVO.kayitTarihi_Specified(Index: Integer): boolean;
begin
  Result := FkayitTarihi_Specified;
end;

procedure takipDVO.SetprovizyonTipi(Index: Integer; const Astring: string);
begin
  FprovizyonTipi := Astring;
  FprovizyonTipi_Specified := True;
end;

function takipDVO.provizyonTipi_Specified(Index: Integer): boolean;
begin
  Result := FprovizyonTipi_Specified;
end;

procedure takipDVO.SettakipDurumu(Index: Integer; const Astring: string);
begin
  FtakipDurumu := Astring;
  FtakipDurumu_Specified := True;
end;

function takipDVO.takipDurumu_Specified(Index: Integer): boolean;
begin
  Result := FtakipDurumu_Specified;
end;

procedure takipDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function takipDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure takipDVO.SettakipTarihi(Index: Integer; const Astring: string);
begin
  FtakipTarihi := Astring;
  FtakipTarihi_Specified := True;
end;

function takipDVO.takipTarihi_Specified(Index: Integer): boolean;
begin
  Result := FtakipTarihi_Specified;
end;

procedure takipDVO.SettakipTipi(Index: Integer; const Astring: string);
begin
  FtakipTipi := Astring;
  FtakipTipi_Specified := True;
end;

function takipDVO.takipTipi_Specified(Index: Integer): boolean;
begin
  Result := FtakipTipi_Specified;
end;

procedure takipDVO.SettedaviTipi(Index: Integer; const Astring: string);
begin
  FtedaviTipi := Astring;
  FtedaviTipi_Specified := True;
end;

function takipDVO.tedaviTipi_Specified(Index: Integer): boolean;
begin
  Result := FtedaviTipi_Specified;
end;

procedure takipDVO.SettedaviTuru(Index: Integer; const Astring: string);
begin
  FtedaviTuru := Astring;
  FtedaviTuru_Specified := True;
end;

function takipDVO.tedaviTuru_Specified(Index: Integer): boolean;
begin
  Result := FtedaviTuru_Specified;
end;

procedure takipDVO.SetsevkDurumu(Index: Integer; const Astring: string);
begin
  FsevkDurumu := Astring;
  FsevkDurumu_Specified := True;
end;

function takipDVO.sevkDurumu_Specified(Index: Integer): boolean;
begin
  Result := FsevkDurumu_Specified;
end;

procedure takipDVO.SetyeniDoganCocukSiraNo(Index: Integer; const Astring: string);
begin
  FyeniDoganCocukSiraNo := Astring;
  FyeniDoganCocukSiraNo_Specified := True;
end;

function takipDVO.yeniDoganCocukSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FyeniDoganCocukSiraNo_Specified;
end;

procedure takipDVO.SetyeniDoganDogumTarihi(Index: Integer; const Astring: string);
begin
  FyeniDoganDogumTarihi := Astring;
  FyeniDoganDogumTarihi_Specified := True;
end;

function takipDVO.yeniDoganDogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyeniDoganDogumTarihi_Specified;
end;

procedure takipDVO.SetarvFlag(Index: Integer; const Astring: string);
begin
  FarvFlag := Astring;
  FarvFlag_Specified := True;
end;

function takipDVO.arvFlag_Specified(Index: Integer): boolean;
begin
  Result := FarvFlag_Specified;
end;

procedure takipDVO.SetistisnaiHal(Index: Integer; const Astring: string);
begin
  FistisnaiHal := Astring;
  FistisnaiHal_Specified := True;
end;

function takipDVO.istisnaiHal_Specified(Index: Integer): boolean;
begin
  Result := FistisnaiHal_Specified;
end;

procedure takipDVO.SetfaturaTarihi(Index: Integer; const Astring: string);
begin
  FfaturaTarihi := Astring;
  FfaturaTarihi_Specified := True;
end;

function takipDVO.faturaTarihi_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTarihi_Specified;
end;

procedure takipDVO.SethastaTelefon(Index: Integer; const Astring: string);
begin
  FhastaTelefon := Astring;
  FhastaTelefon_Specified := True;
end;

function takipDVO.hastaTelefon_Specified(Index: Integer): boolean;
begin
  Result := FhastaTelefon_Specified;
end;

procedure takipDVO.SethastaAdres(Index: Integer; const Astring: string);
begin
  FhastaAdres := Astring;
  FhastaAdres_Specified := True;
end;

function takipDVO.hastaAdres_Specified(Index: Integer): boolean;
begin
  Result := FhastaAdres_Specified;
end;

procedure takipDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function takipDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure takipDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function takipDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure doktorAraGirisDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function doktorAraGirisDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure doktorAraGirisDVO.SetdrAdi(Index: Integer; const Astring: string);
begin
  FdrAdi := Astring;
  FdrAdi_Specified := True;
end;

function doktorAraGirisDVO.drAdi_Specified(Index: Integer): boolean;
begin
  Result := FdrAdi_Specified;
end;

procedure doktorAraGirisDVO.SetdrSoyadi(Index: Integer; const Astring: string);
begin
  FdrSoyadi := Astring;
  FdrSoyadi_Specified := True;
end;

function doktorAraGirisDVO.drSoyadi_Specified(Index: Integer): boolean;
begin
  Result := FdrSoyadi_Specified;
end;

procedure doktorAraGirisDVO.SetdrDiplomaNo(Index: Integer; const Astring: string);
begin
  FdrDiplomaNo := Astring;
  FdrDiplomaNo_Specified := True;
end;

function doktorAraGirisDVO.drDiplomaNo_Specified(Index: Integer): boolean;
begin
  Result := FdrDiplomaNo_Specified;
end;

procedure doktorAraGirisDVO.SetdrBransKodu(Index: Integer; const Astring: string);
begin
  FdrBransKodu := Astring;
  FdrBransKodu_Specified := True;
end;

function doktorAraGirisDVO.drBransKodu_Specified(Index: Integer): boolean;
begin
  Result := FdrBransKodu_Specified;
end;

procedure barkodSutEslesmeSorguGirisDVO.Setbarkod(Index: Integer; const Astring: string);
begin
  Fbarkod := Astring;
  Fbarkod_Specified := True;
end;

function barkodSutEslesmeSorguGirisDVO.barkod_Specified(Index: Integer): boolean;
begin
  Result := Fbarkod_Specified;
end;

procedure barkodSutEslesmeSorguGirisDVO.SetfirmaTanimlayiciNo(Index: Integer; const Astring: string);
begin
  FfirmaTanimlayiciNo := Astring;
  FfirmaTanimlayiciNo_Specified := True;
end;

function barkodSutEslesmeSorguGirisDVO.firmaTanimlayiciNo_Specified(Index: Integer): boolean;
begin
  Result := FfirmaTanimlayiciNo_Specified;
end;

procedure barkodSutEslesmeSorguGirisDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function barkodSutEslesmeSorguGirisDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure barkodSutEslesmeSorguGirisDVO.Settarih(Index: Integer; const Astring: string);
begin
  Ftarih := Astring;
  Ftarih_Specified := True;
end;

function barkodSutEslesmeSorguGirisDVO.tarih_Specified(Index: Integer): boolean;
begin
  Result := Ftarih_Specified;
end;

destructor barkodSutEslesmeSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Feslesmeler)-1 do
    SysUtils.FreeAndNil(Feslesmeler[I]);
  System.SetLength(Feslesmeler, 0);
  inherited Destroy;
end;

procedure barkodSutEslesmeSorguCevapDVO.Seteslesmeler(Index: Integer; const AArray_Of_barkodSutDVO: Array_Of_barkodSutDVO);
begin
  Feslesmeler := AArray_Of_barkodSutDVO;
  Feslesmeler_Specified := True;
end;

function barkodSutEslesmeSorguCevapDVO.eslesmeler_Specified(Index: Integer): boolean;
begin
  Result := Feslesmeler_Specified;
end;

procedure barkodSutEslesmeSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function barkodSutEslesmeSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure barkodSutEslesmeSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function barkodSutEslesmeSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure barkodSutDVO.Setbarkod(Index: Integer; const Astring: string);
begin
  Fbarkod := Astring;
  Fbarkod_Specified := True;
end;

function barkodSutDVO.barkod_Specified(Index: Integer): boolean;
begin
  Result := Fbarkod_Specified;
end;

procedure barkodSutDVO.SetfirmaTanimlayiciNo(Index: Integer; const Astring: string);
begin
  FfirmaTanimlayiciNo := Astring;
  FfirmaTanimlayiciNo_Specified := True;
end;

function barkodSutDVO.firmaTanimlayiciNo_Specified(Index: Integer): boolean;
begin
  Result := FfirmaTanimlayiciNo_Specified;
end;

procedure barkodSutDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function barkodSutDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure barkodSutDVO.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function barkodSutDVO.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure barkodSutDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function barkodSutDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure barkodSutDVO.SetsutListeKodu(Index: Integer; const Astring: string);
begin
  FsutListeKodu := Astring;
  FsutListeKodu_Specified := True;
end;

function barkodSutDVO.sutListeKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutListeKodu_Specified;
end;

procedure barkodSutDVO.SetiptalNedeni(Index: Integer; const Astring: string);
begin
  FiptalNedeni := Astring;
  FiptalNedeni_Specified := True;
end;

function barkodSutDVO.iptalNedeni_Specified(Index: Integer): boolean;
begin
  Result := FiptalNedeni_Specified;
end;

destructor doktorAraCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdoktorlar)-1 do
    SysUtils.FreeAndNil(Fdoktorlar[I]);
  System.SetLength(Fdoktorlar, 0);
  inherited Destroy;
end;

procedure doktorAraCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function doktorAraCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure doktorAraCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function doktorAraCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure doktorAraCevapDVO.Setdoktorlar(Index: Integer; const AArray_Of_doktorListDVO: Array_Of_doktorListDVO);
begin
  Fdoktorlar := AArray_Of_doktorListDVO;
  Fdoktorlar_Specified := True;
end;

function doktorAraCevapDVO.doktorlar_Specified(Index: Integer): boolean;
begin
  Result := Fdoktorlar_Specified;
end;

procedure evrakTakipGrupKoduDVO.Setadi(Index: Integer; const Astring: string);
begin
  Fadi := Astring;
  Fadi_Specified := True;
end;

function evrakTakipGrupKoduDVO.adi_Specified(Index: Integer): boolean;
begin
  Result := Fadi_Specified;
end;

destructor takipAraCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftakipler)-1 do
    SysUtils.FreeAndNil(Ftakipler[I]);
  System.SetLength(Ftakipler, 0);
  inherited Destroy;
end;

procedure takipAraCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function takipAraCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure takipAraCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function takipAraCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure takipAraCevapDVO.Settakipler(Index: Integer; const AArray_Of_takipDVO: Array_Of_takipDVO);
begin
  Ftakipler := AArray_Of_takipDVO;
  Ftakipler_Specified := True;
end;

function takipAraCevapDVO.takipler_Specified(Index: Integer): boolean;
begin
  Result := Ftakipler_Specified;
end;

procedure doktorListDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function doktorListDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure doktorListDVO.SetdrAdi(Index: Integer; const Astring: string);
begin
  FdrAdi := Astring;
  FdrAdi_Specified := True;
end;

function doktorListDVO.drAdi_Specified(Index: Integer): boolean;
begin
  Result := FdrAdi_Specified;
end;

procedure doktorListDVO.SetdrSoyadi(Index: Integer; const Astring: string);
begin
  FdrSoyadi := Astring;
  FdrSoyadi_Specified := True;
end;

function doktorListDVO.drSoyadi_Specified(Index: Integer): boolean;
begin
  Result := FdrSoyadi_Specified;
end;

procedure doktorListDVO.SetdrDiplomaNo(Index: Integer; const Astring: string);
begin
  FdrDiplomaNo := Astring;
  FdrDiplomaNo_Specified := True;
end;

function doktorListDVO.drDiplomaNo_Specified(Index: Integer): boolean;
begin
  Result := FdrDiplomaNo_Specified;
end;

procedure takipAraGirisDVO.SetsevkDurumu(Index: Integer; const Astring: string);
begin
  FsevkDurumu := Astring;
  FsevkDurumu_Specified := True;
end;

function takipAraGirisDVO.sevkDurumu_Specified(Index: Integer): boolean;
begin
  Result := FsevkDurumu_Specified;
end;

procedure takipAraGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function takipAraGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

destructor katilimPayiCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FkatilimPayi)-1 do
    SysUtils.FreeAndNil(FkatilimPayi[I]);
  System.SetLength(FkatilimPayi, 0);
  inherited Destroy;
end;

procedure katilimPayiCevapDVO.SetkatilimPayi(Index: Integer; const AArray_Of_katilimPayiDVO: Array_Of_katilimPayiDVO);
begin
  FkatilimPayi := AArray_Of_katilimPayiDVO;
  FkatilimPayi_Specified := True;
end;

function katilimPayiCevapDVO.katilimPayi_Specified(Index: Integer): boolean;
begin
  Result := FkatilimPayi_Specified;
end;

procedure katilimPayiCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function katilimPayiCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure katilimPayiCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function katilimPayiCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure katilimPayiDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function katilimPayiDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure ilacAraGirisDVO.Setbarkod(Index: Integer; const Astring: string);
begin
  Fbarkod := Astring;
  Fbarkod_Specified := True;
end;

function ilacAraGirisDVO.barkod_Specified(Index: Integer): boolean;
begin
  Result := Fbarkod_Specified;
end;

procedure ilacAraGirisDVO.SetilacAdi(Index: Integer; const Astring: string);
begin
  FilacAdi := Astring;
  FilacAdi_Specified := True;
end;

function ilacAraGirisDVO.ilacAdi_Specified(Index: Integer): boolean;
begin
  Result := FilacAdi_Specified;
end;

procedure tesisYatakBilgiDVO.SetyatakKodu(Index: Integer; const Astring: string);
begin
  FyatakKodu := Astring;
  FyatakKodu_Specified := True;
end;

function tesisYatakBilgiDVO.yatakKodu_Specified(Index: Integer): boolean;
begin
  Result := FyatakKodu_Specified;
end;

procedure tesisYatakBilgiDVO.Setturu(Index: Integer; const Astring: string);
begin
  Fturu := Astring;
  Fturu_Specified := True;
end;

function tesisYatakBilgiDVO.turu_Specified(Index: Integer): boolean;
begin
  Result := Fturu_Specified;
end;

procedure tesisYatakBilgiDVO.SetgecerlilikBaslangicTarihi(Index: Integer; const Astring: string);
begin
  FgecerlilikBaslangicTarihi := Astring;
  FgecerlilikBaslangicTarihi_Specified := True;
end;

function tesisYatakBilgiDVO.gecerlilikBaslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FgecerlilikBaslangicTarihi_Specified;
end;

procedure tesisYatakBilgiDVO.SetgecerlilikBitisTarihi(Index: Integer; const Astring: string);
begin
  FgecerlilikBitisTarihi := Astring;
  FgecerlilikBitisTarihi_Specified := True;
end;

function tesisYatakBilgiDVO.gecerlilikBitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FgecerlilikBitisTarihi_Specified;
end;

procedure saglikTesisiListDVO.SettesisAdi(Index: Integer; const Astring: string);
begin
  FtesisAdi := Astring;
  FtesisAdi_Specified := True;
end;

function saglikTesisiListDVO.tesisAdi_Specified(Index: Integer): boolean;
begin
  Result := FtesisAdi_Specified;
end;

procedure saglikTesisiListDVO.SettesisIl(Index: Integer; const Astring: string);
begin
  FtesisIl := Astring;
  FtesisIl_Specified := True;
end;

function saglikTesisiListDVO.tesisIl_Specified(Index: Integer): boolean;
begin
  Result := FtesisIl_Specified;
end;

procedure saglikTesisiListDVO.SettesisTuru(Index: Integer; const Astring: string);
begin
  FtesisTuru := Astring;
  FtesisTuru_Specified := True;
end;

function saglikTesisiListDVO.tesisTuru_Specified(Index: Integer): boolean;
begin
  Result := FtesisTuru_Specified;
end;

procedure saglikTesisiListDVO.SettesisSinifKodu(Index: Integer; const Astring: string);
begin
  FtesisSinifKodu := Astring;
  FtesisSinifKodu_Specified := True;
end;

function saglikTesisiListDVO.tesisSinifKodu_Specified(Index: Integer): boolean;
begin
  Result := FtesisSinifKodu_Specified;
end;

destructor saglikTesisiAraCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Ftesisler)-1 do
    SysUtils.FreeAndNil(Ftesisler[I]);
  System.SetLength(Ftesisler, 0);
  inherited Destroy;
end;

procedure saglikTesisiAraCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function saglikTesisiAraCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure saglikTesisiAraCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function saglikTesisiAraCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure saglikTesisiAraCevapDVO.Settesisler(Index: Integer; const AArray_Of_saglikTesisiListDVO: Array_Of_saglikTesisiListDVO);
begin
  Ftesisler := AArray_Of_saglikTesisiListDVO;
  Ftesisler_Specified := True;
end;

function saglikTesisiAraCevapDVO.tesisler_Specified(Index: Integer): boolean;
begin
  Result := Ftesisler_Specified;
end;

destructor tesisYatakSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fyataklar)-1 do
    SysUtils.FreeAndNil(Fyataklar[I]);
  System.SetLength(Fyataklar, 0);
  inherited Destroy;
end;

procedure tesisYatakSorguCevapDVO.Setyataklar(Index: Integer; const AArray_Of_tesisYatakBilgiDVO: Array_Of_tesisYatakBilgiDVO);
begin
  Fyataklar := AArray_Of_tesisYatakBilgiDVO;
  Fyataklar_Specified := True;
end;

function tesisYatakSorguCevapDVO.yataklar_Specified(Index: Integer): boolean;
begin
  Result := Fyataklar_Specified;
end;

procedure tesisYatakSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function tesisYatakSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure tesisYatakSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function tesisYatakSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure tesisYatakSorguGirisDVO.Settarih(Index: Integer; const Astring: string);
begin
  Ftarih := Astring;
  Ftarih_Specified := True;
end;

function tesisYatakSorguGirisDVO.tarih_Specified(Index: Integer): boolean;
begin
  Result := Ftarih_Specified;
end;

procedure damarIziDogrulamaDetayDVO.SettckNo(Index: Integer; const Astring: string);
begin
  FtckNo := Astring;
  FtckNo_Specified := True;
end;

function damarIziDogrulamaDetayDVO.tckNo_Specified(Index: Integer): boolean;
begin
  Result := FtckNo_Specified;
end;

procedure damarIziDogrulamaDetayDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function damarIziDogrulamaDetayDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure damarIziDogrulamaDetayDVO.Setbrans(Index: Integer; const Astring: string);
begin
  Fbrans := Astring;
  Fbrans_Specified := True;
end;

function damarIziDogrulamaDetayDVO.brans_Specified(Index: Integer): boolean;
begin
  Result := Fbrans_Specified;
end;

procedure damarIziDogrulamaDetayDVO.SetfirmaAdi(Index: Integer; const Astring: string);
begin
  FfirmaAdi := Astring;
  FfirmaAdi_Specified := True;
end;

function damarIziDogrulamaDetayDVO.firmaAdi_Specified(Index: Integer): boolean;
begin
  Result := FfirmaAdi_Specified;
end;

procedure damarIziDogrulamaDetayDVO.SetislemSaati(Index: Integer; const Astring: string);
begin
  FislemSaati := Astring;
  FislemSaati_Specified := True;
end;

function damarIziDogrulamaDetayDVO.islemSaati_Specified(Index: Integer): boolean;
begin
  Result := FislemSaati_Specified;
end;

procedure damarIziDogrulamaDetayDVO.Setdurum(Index: Integer; const Astring: string);
begin
  Fdurum := Astring;
  Fdurum_Specified := True;
end;

function damarIziDogrulamaDetayDVO.durum_Specified(Index: Integer): boolean;
begin
  Result := Fdurum_Specified;
end;

procedure fiyatListDVO.SetgecerlilikTarihi(Index: Integer; const Astring: string);
begin
  FgecerlilikTarihi := Astring;
  FgecerlilikTarihi_Specified := True;
end;

function fiyatListDVO.gecerlilikTarihi_Specified(Index: Integer): boolean;
begin
  Result := FgecerlilikTarihi_Specified;
end;

destructor yurtDisiYardimHakkiGetirCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FyurtDisiDetay)-1 do
    SysUtils.FreeAndNil(FyurtDisiDetay[I]);
  System.SetLength(FyurtDisiDetay, 0);
  inherited Destroy;
end;

procedure yurtDisiYardimHakkiGetirCevapDVO.SetyurtDisiDetay(Index: Integer; const AArray_Of_yurtDisiYardimHakkiGetirCevapDetayDVO: Array_Of_yurtDisiYardimHakkiGetirCevapDetayDVO);
begin
  FyurtDisiDetay := AArray_Of_yurtDisiYardimHakkiGetirCevapDetayDVO;
  FyurtDisiDetay_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDVO.yurtDisiDetay_Specified(Index: Integer): boolean;
begin
  Result := FyurtDisiDetay_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure ilacIndirimDVO.SetgecerlilikTarihi(Index: Integer; const Astring: string);
begin
  FgecerlilikTarihi := Astring;
  FgecerlilikTarihi_Specified := True;
end;

function ilacIndirimDVO.gecerlilikTarihi_Specified(Index: Integer): boolean;
begin
  Result := FgecerlilikTarihi_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.SetkisiNo(Index: Integer; const Astring: string);
begin
  FkisiNo := Astring;
  FkisiNo_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.kisiNo_Specified(Index: Integer): boolean;
begin
  Result := FkisiNo_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.Setadi(Index: Integer; const Astring: string);
begin
  Fadi := Astring;
  Fadi_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.adi_Specified(Index: Integer): boolean;
begin
  Result := Fadi_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.Setsoyadi(Index: Integer; const Astring: string);
begin
  Fsoyadi := Astring;
  Fsoyadi_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.soyadi_Specified(Index: Integer): boolean;
begin
  Result := Fsoyadi_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.SetformulAdi(Index: Integer; const Astring: string);
begin
  FformulAdi := Astring;
  FformulAdi_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.formulAdi_Specified(Index: Integer): boolean;
begin
  Result := FformulAdi_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.SetodemeTuru(Index: Integer; const Astring: string);
begin
  FodemeTuru := Astring;
  FodemeTuru_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.odemeTuru_Specified(Index: Integer): boolean;
begin
  Result := FodemeTuru_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.SettedaviKapsami(Index: Integer; const Astring: string);
begin
  FtedaviKapsami := Astring;
  FtedaviKapsami_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.tedaviKapsami_Specified(Index: Integer): boolean;
begin
  Result := FtedaviKapsami_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.SetsorguTarihi(Index: Integer; const Astring: string);
begin
  FsorguTarihi := Astring;
  FsorguTarihi_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.sorguTarihi_Specified(Index: Integer): boolean;
begin
  Result := FsorguTarihi_Specified;
end;

procedure yurtDisiYardimHakkiGetirCevapDetayDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function yurtDisiYardimHakkiGetirCevapDetayDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

destructor ilacAraCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Filaclar)-1 do
    SysUtils.FreeAndNil(Filaclar[I]);
  System.SetLength(Filaclar, 0);
  inherited Destroy;
end;

procedure ilacAraCevapDVO.Setilaclar(Index: Integer; const AArray_Of_ilacListDVO: Array_Of_ilacListDVO);
begin
  Filaclar := AArray_Of_ilacListDVO;
  Filaclar_Specified := True;
end;

function ilacAraCevapDVO.ilaclar_Specified(Index: Integer): boolean;
begin
  Result := Filaclar_Specified;
end;

procedure ilacAraCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function ilacAraCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure ilacAraCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function ilacAraCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor damarIziDogrulamaSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FdamarIziSorguDetay)-1 do
    SysUtils.FreeAndNil(FdamarIziSorguDetay[I]);
  System.SetLength(FdamarIziSorguDetay, 0);
  inherited Destroy;
end;

procedure damarIziDogrulamaSorguCevapDVO.SetdamarIziSorguDetay(Index: Integer; const AArray_Of_damarIziDogrulamaDetayDVO: Array_Of_damarIziDogrulamaDetayDVO);
begin
  FdamarIziSorguDetay := AArray_Of_damarIziDogrulamaDetayDVO;
  FdamarIziSorguDetay_Specified := True;
end;

function damarIziDogrulamaSorguCevapDVO.damarIziSorguDetay_Specified(Index: Integer): boolean;
begin
  Result := FdamarIziSorguDetay_Specified;
end;

procedure damarIziDogrulamaSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function damarIziDogrulamaSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure damarIziDogrulamaSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function damarIziDogrulamaSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor ilacListDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FilacFiyatlari)-1 do
    SysUtils.FreeAndNil(FilacFiyatlari[I]);
  System.SetLength(FilacFiyatlari, 0);
  for I := 0 to System.Length(FilacIndirimleri)-1 do
    SysUtils.FreeAndNil(FilacIndirimleri[I]);
  System.SetLength(FilacIndirimleri, 0);
  inherited Destroy;
end;

procedure ilacListDVO.Setbarkod(Index: Integer; const Astring: string);
begin
  Fbarkod := Astring;
  Fbarkod_Specified := True;
end;

function ilacListDVO.barkod_Specified(Index: Integer): boolean;
begin
  Result := Fbarkod_Specified;
end;

procedure ilacListDVO.SetilacAdi(Index: Integer; const Astring: string);
begin
  FilacAdi := Astring;
  FilacAdi_Specified := True;
end;

function ilacListDVO.ilacAdi_Specified(Index: Integer): boolean;
begin
  Result := FilacAdi_Specified;
end;

procedure ilacListDVO.SetilacFiyatlari(Index: Integer; const AArray_Of_fiyatListDVO: Array_Of_fiyatListDVO);
begin
  FilacFiyatlari := AArray_Of_fiyatListDVO;
  FilacFiyatlari_Specified := True;
end;

function ilacListDVO.ilacFiyatlari_Specified(Index: Integer): boolean;
begin
  Result := FilacFiyatlari_Specified;
end;

procedure ilacListDVO.SetilacIndirimleri(Index: Integer; const AArray_Of_ilacIndirimDVO: Array_Of_ilacIndirimDVO);
begin
  FilacIndirimleri := AArray_Of_ilacIndirimDVO;
  FilacIndirimleri_Specified := True;
end;

function ilacListDVO.ilacIndirimleri_Specified(Index: Integer): boolean;
begin
  Result := FilacIndirimleri_Specified;
end;

procedure ilacListDVO.SeteczAktifPasif(Index: Integer; const Astring: string);
begin
  FeczAktifPasif := Astring;
  FeczAktifPasif_Specified := True;
end;

function ilacListDVO.eczAktifPasif_Specified(Index: Integer): boolean;
begin
  Result := FeczAktifPasif_Specified;
end;

procedure ilacListDVO.SethasAktifPasif(Index: Integer; const Astring: string);
begin
  FhasAktifPasif := Astring;
  FhasAktifPasif_Specified := True;
end;

function ilacListDVO.hasAktifPasif_Specified(Index: Integer): boolean;
begin
  Result := FhasAktifPasif_Specified;
end;

procedure ilacListDVO.SetayaktanOdenme(Index: Integer; const Astring: string);
begin
  FayaktanOdenme := Astring;
  FayaktanOdenme_Specified := True;
end;

function ilacListDVO.ayaktanOdenme_Specified(Index: Integer): boolean;
begin
  Result := FayaktanOdenme_Specified;
end;

procedure ilacListDVO.SetyatanOdenme(Index: Integer; const Astring: string);
begin
  FyatanOdenme := Astring;
  FyatanOdenme_Specified := True;
end;

function ilacListDVO.yatanOdenme_Specified(Index: Integer): boolean;
begin
  Result := FyatanOdenme_Specified;
end;

initialization
  { YardimciIslemler }
  InvRegistry.RegisterInterface(TypeInfo(YardimciIslemler), 'http://servisler.ws.gss.sgk.gov.tr', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(YardimciIslemler), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(YardimciIslemler), ioDocument);
  { YardimciIslemler.saglikTesisiAra }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'saglikTesisiAra', '',
                                 '[ReturnName="saglikTesisiAraReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'saglikTesisiAra', 'saglikTesisiAraGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'saglikTesisiAra', 'saglikTesisiAraReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.doktorAra }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'doktorAra', '',
                                 '[ReturnName="doktorAraReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'doktorAra', 'doktorAraGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'doktorAra', 'doktorAraReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.takipAra }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'takipAra', '',
                                 '[ReturnName="takipAraReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'takipAra', 'takipAraGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'takipAra', 'takipAraReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.ilacAra }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'ilacAra', '',
                                 '[ReturnName="ilacAraReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'ilacAra', 'ilacAraGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'ilacAra', 'ilacAraReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.getOrneklenmisTakipler }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'getOrneklenmisTakipler', '',
                                 '[ReturnName="getOrneklenmisTakiplerReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'getOrneklenmisTakipler', 'orneklenmisGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'getOrneklenmisTakipler', 'getOrneklenmisTakiplerReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.kesintiYapilmisIslemler }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'kesintiYapilmisIslemler', '',
                                 '[ReturnName="kesintiYapilmisIslemlerReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'kesintiYapilmisIslemler', 'evrakKesintiGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'kesintiYapilmisIslemler', 'kesintiYapilmisIslemlerReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.kisiGecmisIslemSorgu }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'kisiGecmisIslemSorgu', '',
                                 '[ReturnName="kisiGecmisIslemSorguReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'kisiGecmisIslemSorgu', 'kisiGecmisIslemlerGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'kisiGecmisIslemSorgu', 'kisiGecmisIslemSorguReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.katilimPayiUcreti }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'katilimPayiUcreti', '',
                                 '[ReturnName="katilimPayiUcretiReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'katilimPayiUcreti', 'katilimPayiGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'katilimPayiUcreti', 'katilimPayiUcretiReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.takipBilgileriListesi }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'takipBilgileriListesi', '',
                                 '[ReturnName="takipBilgileriListesiReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'takipBilgileriListesi', 'takipBilgisiGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'takipBilgileriListesi', 'takipBilgileriListesiReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.yurtDisiYardimHakkiGetir }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'yurtDisiYardimHakkiGetir', '',
                                 '[ReturnName="yurtDisiYardimHakkiGetirReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'yurtDisiYardimHakkiGetir', 'yurtDisiYardimHakkiGetirGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'yurtDisiYardimHakkiGetir', 'yurtDisiYardimHakkiGetirReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.damarIziDogrulamaSorgu }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'damarIziDogrulamaSorgu', '',
                                 '[ReturnName="damarIziDogrulamaSorguReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'damarIziDogrulamaSorgu', 'damarIziDogrulamaSorguGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'damarIziDogrulamaSorgu', 'damarIziDogrulamaSorguReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.guncelSutKodlari }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'guncelSutKodlari', '',
                                 '[ReturnName="guncelSutKodlariReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'guncelSutKodlari', 'guncelSutSorguGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'guncelSutKodlari', 'guncelSutKodlariReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.evrakTakipGrupKodlariSorgu }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'evrakTakipGrupKodlariSorgu', '',
                                 '[ReturnName="evrakTakipGrupKodlariSorguReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'evrakTakipGrupKodlariSorgu', 'evrakTakipGrupKodlariSorguGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'evrakTakipGrupKodlariSorgu', 'evrakTakipGrupKodlariSorguReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.tesisYatakSorgu }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'tesisYatakSorgu', '',
                                 '[ReturnName="tesisYatakSorguReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'tesisYatakSorgu', 'tesisYatakSorguGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'tesisYatakSorgu', 'tesisYatakSorguReturn', '',
                                '', IS_UNQL);
  { YardimciIslemler.barkodSutEslesmeSorgu }
  InvRegistry.RegisterMethodInfo(TypeInfo(YardimciIslemler), 'barkodSutEslesmeSorgu', '',
                                 '[ReturnName="barkodSutEslesmeSorguReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'barkodSutEslesmeSorgu', 'barkodSutEslesmeSorguGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(YardimciIslemler), 'barkodSutEslesmeSorgu', 'barkodSutEslesmeSorguReturn', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_barkodSutDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_barkodSutDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_doktorListDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_doktorListDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_evrakTakipGrupKoduDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_evrakTakipGrupKoduDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_fiyatListDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_fiyatListDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ilacIndirimDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_ilacIndirimDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_damarIziDogrulamaDetayDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_damarIziDogrulamaDetayDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_katilimPayiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_katilimPayiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_yurtDisiYardimHakkiGetirCevapDetayDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_yurtDisiYardimHakkiGetirCevapDetayDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_takipDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_takipDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_kisiIslemDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_kisiIslemDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_evrakTakipDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_evrakTakipDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_takipIslemKesintiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_takipIslemKesintiDVO');
  RemClassRegistry.RegisterXSClass(takipBilgisiListDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipBilgisiListDVO');
  RemClassRegistry.RegisterXSClass(takipIslemKesintiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipIslemKesintiDVO');
  RemClassRegistry.RegisterXSClass(evrakKesintiGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'evrakKesintiGirisDVO');
  RemClassRegistry.RegisterXSClass(evrakKesintiCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'evrakKesintiCevapDVO');
  RemClassRegistry.RegisterXSClass(takipBilgisiGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipBilgisiGirisDVO');
  RemClassRegistry.RegisterXSClass(guncelSutSorguGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'guncelSutSorguGirisDVO');
  RemClassRegistry.RegisterXSClass(sutFiyatDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'sutFiyatDVO');
  RemClassRegistry.RegisterXSClass(evrakTakipDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'evrakTakipDVO');
  RemClassRegistry.RegisterXSClass(saglikTesisiAraGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'saglikTesisiAraGirisDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_tesisYatakBilgiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_tesisYatakBilgiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ilacListDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_ilacListDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_saglikTesisiListDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_saglikTesisiListDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_takipBilgisiListDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_takipBilgisiListDVO');
  RemClassRegistry.RegisterXSClass(takipBilgisiCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipBilgisiCevapDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_sutFiyatDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_sutFiyatDVO');
  RemClassRegistry.RegisterXSClass(guncelSutSorguCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'guncelSutSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(orneklenmisGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'orneklenmisGirisDVO');
  RemClassRegistry.RegisterXSClass(orneklenmisCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'orneklenmisCevapDVO');
  RemClassRegistry.RegisterXSClass(hastaBilgileriDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaBilgileriDVO');
  RemClassRegistry.RegisterXSClass(evrakTakipGrupKoduSorguCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'evrakTakipGrupKoduSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(evrakTakipGrupKoduSorguGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'evrakTakipGrupKoduSorguGirisDVO');
  RemClassRegistry.RegisterXSClass(kisiGecmisIslemlerCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'kisiGecmisIslemlerCevapDVO');
  RemClassRegistry.RegisterXSClass(kisiIslemDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'kisiIslemDVO');
  RemClassRegistry.RegisterXSClass(kisiGecmisIslemlerGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'kisiGecmisIslemlerGirisDVO');
  RemClassRegistry.RegisterXSClass(takipDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipDVO');
  RemClassRegistry.RegisterXSClass(doktorAraGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'doktorAraGirisDVO');
  RemClassRegistry.RegisterXSClass(barkodSutEslesmeSorguGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'barkodSutEslesmeSorguGirisDVO');
  RemClassRegistry.RegisterXSClass(barkodSutEslesmeSorguCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'barkodSutEslesmeSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(barkodSutDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'barkodSutDVO');
  RemClassRegistry.RegisterXSClass(doktorAraCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'doktorAraCevapDVO');
  RemClassRegistry.RegisterXSClass(evrakTakipGrupKoduDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'evrakTakipGrupKoduDVO');
  RemClassRegistry.RegisterXSClass(takipAraCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipAraCevapDVO');
  RemClassRegistry.RegisterXSClass(doktorListDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'doktorListDVO');
  RemClassRegistry.RegisterXSClass(takipAraGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipAraGirisDVO');
  RemClassRegistry.RegisterXSClass(katilimPayiCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'katilimPayiCevapDVO');
  RemClassRegistry.RegisterXSClass(katilimPayiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'katilimPayiDVO');
  RemClassRegistry.RegisterXSClass(katilimPayiGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'katilimPayiGirisDVO');
  RemClassRegistry.RegisterXSClass(ilacAraGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacAraGirisDVO');
  RemClassRegistry.RegisterXSClass(tesisYatakBilgiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tesisYatakBilgiDVO');
  RemClassRegistry.RegisterXSClass(saglikTesisiListDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'saglikTesisiListDVO');
  RemClassRegistry.RegisterXSClass(saglikTesisiAraCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'saglikTesisiAraCevapDVO');
  RemClassRegistry.RegisterXSClass(tesisYatakSorguCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tesisYatakSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(tesisYatakSorguGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tesisYatakSorguGirisDVO');
  RemClassRegistry.RegisterXSClass(damarIziDogrulamaDetayDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'damarIziDogrulamaDetayDVO');
  RemClassRegistry.RegisterXSClass(fiyatListDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'fiyatListDVO');
  RemClassRegistry.RegisterXSClass(yurtDisiYardimHakkiGetirCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'yurtDisiYardimHakkiGetirCevapDVO');
  RemClassRegistry.RegisterXSClass(ilacIndirimDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacIndirimDVO');
  RemClassRegistry.RegisterXSClass(yurtDisiYardimHakkiGetirGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'yurtDisiYardimHakkiGetirGirisDVO');
  RemClassRegistry.RegisterXSClass(yurtDisiYardimHakkiGetirCevapDetayDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'yurtDisiYardimHakkiGetirCevapDetayDVO');
  RemClassRegistry.RegisterXSClass(ilacAraCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacAraCevapDVO');
  RemClassRegistry.RegisterXSClass(damarIziDogrulamaSorguCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'damarIziDogrulamaSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(ilacListDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacListDVO');
  RemClassRegistry.RegisterXSClass(damarIziDogrulamaSorguGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'damarIziDogrulamaSorguGirisDVO');

end.