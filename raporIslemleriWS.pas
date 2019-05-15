// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : https://sgkt.sgk.gov.tr/medula/hastane/raporIslemleriWS?wsdl
//  >Import : https://sgkt.sgk.gov.tr/medula/hastane/raporIslemleriWS?wsdl>0
//  >Import : https://sgkt.sgk.gov.tr/medula/hastane/raporIslemleriWS.xsd2.xsd
// Encoding : UTF-8
// Version  : 1.0
// (06.05.2019 19:52:30 - - $Rev: 45757 $)
// ************************************************************************ //

unit raporIslemleriWS;

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
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]

  dogumOncesiCalisabilirRaporDVO = class;       { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  analikIsgoremezlikRaporDVO = class;           { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporOkuDVO          = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  isgoremezlikRaporDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  maluliyetRaporDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tedaviRaporDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacRaporDVO         = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporCevapDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporSorguDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  protezRaporDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  dogumRaporDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  isgoremezlikRaporEkDVO = class;               { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporDVO             = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  eswtRaporBilgisiDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hotRaporBilgisiDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  diyalizRaporBilgisiDVO = class;               { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tupBebekRaporBilgisiDVO = class;              { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  evHemodiyaliziRaporBilgisiDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  eswlRaporBilgisiDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ftrRaporBilgisiDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tedaviIslemBilgisiDVO = class;                { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacTeshisBilgiDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  teshisBilgisiDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  taniBilgisiDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaYatisBilgisiDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporEtkinMaddeDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  malzemeBilgisiDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  cocukBilgisiDVO      = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporOkuRaporTakipNodanDVO = class;           { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  emzirmeRaporDVO      = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporCevapTCKimlikNodanDVO = class;           { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  analikRaporDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  isKazasiRaporDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporGirisDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  meslekHastaligiRaporDVO = class;              { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastalikRaporDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  doktorBilgisiDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  bransGorusBilgisiDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  eswlTasBilgisiDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacRaporDuzeltDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporOkuTCKimlikNodanDVO = class;             { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  raporBilgisiDVO      = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hakSahibiBilgisiDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }



  // ************************************************************************ //
  // XML       : dogumOncesiCalisabilirRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  dogumOncesiCalisabilirRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    FraporDVO_Specified: boolean;
    FbebekDogumTarihi: string;
    FbebekDogumTarihi_Specified: boolean;
    FdogumIzniBaslangicTarihi: string;
    FdogumIzniBaslangicTarihi_Specified: boolean;
    procedure SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
    function  raporDVO_Specified(Index: Integer): boolean;
    procedure SetbebekDogumTarihi(Index: Integer; const Astring: string);
    function  bebekDogumTarihi_Specified(Index: Integer): boolean;
    procedure SetdogumIzniBaslangicTarihi(Index: Integer; const Astring: string);
    function  dogumIzniBaslangicTarihi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporDVO:                 raporDVO  Index (IS_OPTN or IS_UNQL) read FraporDVO write SetraporDVO stored raporDVO_Specified;
    property bebekDogumTarihi:         string    Index (IS_OPTN or IS_UNQL) read FbebekDogumTarihi write SetbebekDogumTarihi stored bebekDogumTarihi_Specified;
    property dogumIzniBaslangicTarihi: string    Index (IS_OPTN or IS_UNQL) read FdogumIzniBaslangicTarihi write SetdogumIzniBaslangicTarihi stored dogumIzniBaslangicTarihi_Specified;
  end;



  // ************************************************************************ //
  // XML       : analikIsgoremezlikRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  analikIsgoremezlikRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    FraporDVO_Specified: boolean;
    FbebekDogumTarihi: string;
    FbebekDogumTarihi_Specified: boolean;
    FcocukSayisi: Integer;
    procedure SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
    function  raporDVO_Specified(Index: Integer): boolean;
    procedure SetbebekDogumTarihi(Index: Integer; const Astring: string);
    function  bebekDogumTarihi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporDVO:         raporDVO  Index (IS_OPTN or IS_UNQL) read FraporDVO write SetraporDVO stored raporDVO_Specified;
    property bebekDogumTarihi: string    Index (IS_OPTN or IS_UNQL) read FbebekDogumTarihi write SetbebekDogumTarihi stored bebekDogumTarihi_Specified;
    property cocukSayisi:      Integer   Index (IS_UNQL) read FcocukSayisi write FcocukSayisi;
  end;



  // ************************************************************************ //
  // XML       : raporOkuDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporOkuDVO = class(TRemotable)
  private
    FraporTesisKodu: Integer;
    Ftarih: string;
    Fno: string;
    Fturu: string;
    FraporSiraNo: string;
  published
    property raporTesisKodu: Integer  Index (IS_UNQL) read FraporTesisKodu write FraporTesisKodu;
    property tarih:          string   Index (IS_UNQL) read Ftarih write Ftarih;
    property no:             string   Index (IS_UNQL) read Fno write Fno;
    property turu:           string   Index (IS_UNQL) read Fturu write Fturu;
    property raporSiraNo:    string   Index (IS_UNQL) read FraporSiraNo write FraporSiraNo;
  end;



  // ************************************************************************ //
  // XML       : isgoremezlikRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  isgoremezlikRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    FisGoremezlikRaporTuru: Integer;
    FbransKodu: Integer;
    Fteshis: string;
    Folum: string;
    FklinikBulgu: string;
    FklinikBulgu_Specified: boolean;
    FronLabBilgi: string;
    FronLabBilgi_Specified: boolean;
    Fkarar: string;
    Fkarar_Specified: boolean;
    FisKazasiRaporu: isKazasiRaporDVO;
    FisKazasiRaporu_Specified: boolean;
    FmeslekHastaligiRaporu: meslekHastaligiRaporDVO;
    FmeslekHastaligiRaporu_Specified: boolean;
    FanalikRaporu: analikRaporDVO;
    FanalikRaporu_Specified: boolean;
    FemzirmeRaporu: emzirmeRaporDVO;
    FemzirmeRaporu_Specified: boolean;
    FhastalikRaporu: hastalikRaporDVO;
    FhastalikRaporu_Specified: boolean;
    Fdevammi: Integer;
    FyatisDevam: string;
    procedure SetklinikBulgu(Index: Integer; const Astring: string);
    function  klinikBulgu_Specified(Index: Integer): boolean;
    procedure SetronLabBilgi(Index: Integer; const Astring: string);
    function  ronLabBilgi_Specified(Index: Integer): boolean;
    procedure Setkarar(Index: Integer; const Astring: string);
    function  karar_Specified(Index: Integer): boolean;
    procedure SetisKazasiRaporu(Index: Integer; const AisKazasiRaporDVO: isKazasiRaporDVO);
    function  isKazasiRaporu_Specified(Index: Integer): boolean;
    procedure SetmeslekHastaligiRaporu(Index: Integer; const AmeslekHastaligiRaporDVO: meslekHastaligiRaporDVO);
    function  meslekHastaligiRaporu_Specified(Index: Integer): boolean;
    procedure SetanalikRaporu(Index: Integer; const AanalikRaporDVO: analikRaporDVO);
    function  analikRaporu_Specified(Index: Integer): boolean;
    procedure SetemzirmeRaporu(Index: Integer; const AemzirmeRaporDVO: emzirmeRaporDVO);
    function  emzirmeRaporu_Specified(Index: Integer): boolean;
    procedure SethastalikRaporu(Index: Integer; const AhastalikRaporDVO: hastalikRaporDVO);
    function  hastalikRaporu_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporDVO:              raporDVO                 Index (IS_UNQL) read FraporDVO write FraporDVO;
    property isGoremezlikRaporTuru: Integer                  Index (IS_UNQL) read FisGoremezlikRaporTuru write FisGoremezlikRaporTuru;
    property bransKodu:             Integer                  Index (IS_UNQL) read FbransKodu write FbransKodu;
    property teshis:                string                   Index (IS_UNQL) read Fteshis write Fteshis;
    property olum:                  string                   Index (IS_UNQL) read Folum write Folum;
    property klinikBulgu:           string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FklinikBulgu write SetklinikBulgu stored klinikBulgu_Specified;
    property ronLabBilgi:           string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FronLabBilgi write SetronLabBilgi stored ronLabBilgi_Specified;
    property karar:                 string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fkarar write Setkarar stored karar_Specified;
    property isKazasiRaporu:        isKazasiRaporDVO         Index (IS_OPTN or IS_NLBL or IS_UNQL) read FisKazasiRaporu write SetisKazasiRaporu stored isKazasiRaporu_Specified;
    property meslekHastaligiRaporu: meslekHastaligiRaporDVO  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmeslekHastaligiRaporu write SetmeslekHastaligiRaporu stored meslekHastaligiRaporu_Specified;
    property analikRaporu:          analikRaporDVO           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FanalikRaporu write SetanalikRaporu stored analikRaporu_Specified;
    property emzirmeRaporu:         emzirmeRaporDVO          Index (IS_OPTN or IS_NLBL or IS_UNQL) read FemzirmeRaporu write SetemzirmeRaporu stored emzirmeRaporu_Specified;
    property hastalikRaporu:        hastalikRaporDVO         Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastalikRaporu write SethastalikRaporu stored hastalikRaporu_Specified;
    property devammi:               Integer                  Index (IS_UNQL) read Fdevammi write Fdevammi;
    property yatisDevam:            string                   Index (IS_UNQL) read FyatisDevam write FyatisDevam;
  end;

  Array_Of_bransGorusBilgisiDVO = array of bransGorusBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : maluliyetRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  maluliyetRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    Faciklama: string;
    FlaboratuvarBulgulari: string;
    FgoruntulemeYontemleri: string;
    Fteshis: string;
    Fkarar: string;
    FbransGorusleri: Array_Of_bransGorusBilgisiDVO;
  public
    destructor Destroy; override;
  published
    property raporDVO:              raporDVO                       Index (IS_UNQL) read FraporDVO write FraporDVO;
    property aciklama:              string                         Index (IS_UNQL) read Faciklama write Faciklama;
    property laboratuvarBulgulari:  string                         Index (IS_UNQL) read FlaboratuvarBulgulari write FlaboratuvarBulgulari;
    property goruntulemeYontemleri: string                         Index (IS_UNQL) read FgoruntulemeYontemleri write FgoruntulemeYontemleri;
    property teshis:                string                         Index (IS_UNQL) read Fteshis write Fteshis;
    property karar:                 string                         Index (IS_UNQL) read Fkarar write Fkarar;
    property bransGorusleri:        Array_Of_bransGorusBilgisiDVO  Index (IS_UNBD or IS_UNQL) read FbransGorusleri write FbransGorusleri;
  end;

  Array_Of_tedaviIslemBilgisiDVO = array of tedaviIslemBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : tedaviRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tedaviRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    Fislemler: Array_Of_tedaviIslemBilgisiDVO;
    FtedaviRaporTuru: Integer;
  public
    destructor Destroy; override;
  published
    property raporDVO:        raporDVO                        Index (IS_UNQL) read FraporDVO write FraporDVO;
    property islemler:        Array_Of_tedaviIslemBilgisiDVO  Index (IS_UNBD or IS_UNQL) read Fislemler write Fislemler;
    property tedaviRaporTuru: Integer                         Index (IS_UNQL) read FtedaviRaporTuru write FtedaviRaporTuru;
  end;

  Array_Of_raporEtkinMaddeDVO = array of raporEtkinMaddeDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : ilacRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    FtakipFormuNo: string;
    FtakipFormuNo_Specified: boolean;
    FraporEtkinMaddeler: Array_Of_raporEtkinMaddeDVO;
    procedure SettakipFormuNo(Index: Integer; const Astring: string);
    function  takipFormuNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporDVO:           raporDVO                     Index (IS_UNQL) read FraporDVO write FraporDVO;
    property takipFormuNo:       string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtakipFormuNo write SettakipFormuNo stored takipFormuNo_Specified;
    property raporEtkinMaddeler: Array_Of_raporEtkinMaddeDVO  Index (IS_UNBD or IS_UNQL) read FraporEtkinMaddeler write FraporEtkinMaddeler;
  end;

  Array_Of_teshisBilgisiDVO = array of teshisBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_raporCevapDVO = array of raporCevapDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_eswlTasBilgisiDVO = array of eswlTasBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_ilacTeshisBilgiDVO = array of ilacTeshisBilgiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_hastaYatisBilgisiDVO = array of hastaYatisBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_isgoremezlikRaporEkDVO = array of isgoremezlikRaporEkDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : raporCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporCevapDVO = class(TRemotable)
  private
    FraporTakipNo: Int64;
    FsonucKodu: Integer;
    FsonucAciklamasi: string;
    FsonucAciklamasi_Specified: boolean;
    FisgoremezlikRapor: isgoremezlikRaporDVO;
    FisgoremezlikRapor_Specified: boolean;
    FisgoremezlikRaporEkleri: Array_Of_isgoremezlikRaporEkDVO;
    FisgoremezlikRaporEkleri_Specified: boolean;
    FdogumOncesiCalisabilirRapor: dogumOncesiCalisabilirRaporDVO;
    FdogumOncesiCalisabilirRapor_Specified: boolean;
    FdogumRapor: dogumRaporDVO;
    FdogumRapor_Specified: boolean;
    FanalikRapor: analikIsgoremezlikRaporDVO;
    FanalikRapor_Specified: boolean;
    FprotezRapor: protezRaporDVO;
    FprotezRapor_Specified: boolean;
    FilacRapor: ilacRaporDVO;
    FilacRapor_Specified: boolean;
    FtedaviRapor: tedaviRaporDVO;
    FtedaviRapor_Specified: boolean;
    FmaluliyetRapor: maluliyetRaporDVO;
    FmaluliyetRapor_Specified: boolean;
    FraporTuru: string;
    FraporTuru_Specified: boolean;
    procedure SetsonucAciklamasi(Index: Integer; const Astring: string);
    function  sonucAciklamasi_Specified(Index: Integer): boolean;
    procedure SetisgoremezlikRapor(Index: Integer; const AisgoremezlikRaporDVO: isgoremezlikRaporDVO);
    function  isgoremezlikRapor_Specified(Index: Integer): boolean;
    procedure SetisgoremezlikRaporEkleri(Index: Integer; const AArray_Of_isgoremezlikRaporEkDVO: Array_Of_isgoremezlikRaporEkDVO);
    function  isgoremezlikRaporEkleri_Specified(Index: Integer): boolean;
    procedure SetdogumOncesiCalisabilirRapor(Index: Integer; const AdogumOncesiCalisabilirRaporDVO: dogumOncesiCalisabilirRaporDVO);
    function  dogumOncesiCalisabilirRapor_Specified(Index: Integer): boolean;
    procedure SetdogumRapor(Index: Integer; const AdogumRaporDVO: dogumRaporDVO);
    function  dogumRapor_Specified(Index: Integer): boolean;
    procedure SetanalikRapor(Index: Integer; const AanalikIsgoremezlikRaporDVO: analikIsgoremezlikRaporDVO);
    function  analikRapor_Specified(Index: Integer): boolean;
    procedure SetprotezRapor(Index: Integer; const AprotezRaporDVO: protezRaporDVO);
    function  protezRapor_Specified(Index: Integer): boolean;
    procedure SetilacRapor(Index: Integer; const AilacRaporDVO: ilacRaporDVO);
    function  ilacRapor_Specified(Index: Integer): boolean;
    procedure SettedaviRapor(Index: Integer; const AtedaviRaporDVO: tedaviRaporDVO);
    function  tedaviRapor_Specified(Index: Integer): boolean;
    procedure SetmaluliyetRapor(Index: Integer; const AmaluliyetRaporDVO: maluliyetRaporDVO);
    function  maluliyetRapor_Specified(Index: Integer): boolean;
    procedure SetraporTuru(Index: Integer; const Astring: string);
    function  raporTuru_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporTakipNo:                Int64                            Index (IS_UNQL) read FraporTakipNo write FraporTakipNo;
    property sonucKodu:                   Integer                          Index (IS_UNQL) read FsonucKodu write FsonucKodu;
    property sonucAciklamasi:             string                           Index (IS_OPTN or IS_UNQL) read FsonucAciklamasi write SetsonucAciklamasi stored sonucAciklamasi_Specified;
    property isgoremezlikRapor:           isgoremezlikRaporDVO             Index (IS_OPTN or IS_UNQL) read FisgoremezlikRapor write SetisgoremezlikRapor stored isgoremezlikRapor_Specified;
    property isgoremezlikRaporEkleri:     Array_Of_isgoremezlikRaporEkDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FisgoremezlikRaporEkleri write SetisgoremezlikRaporEkleri stored isgoremezlikRaporEkleri_Specified;
    property dogumOncesiCalisabilirRapor: dogumOncesiCalisabilirRaporDVO   Index (IS_OPTN or IS_UNQL) read FdogumOncesiCalisabilirRapor write SetdogumOncesiCalisabilirRapor stored dogumOncesiCalisabilirRapor_Specified;
    property dogumRapor:                  dogumRaporDVO                    Index (IS_OPTN or IS_UNQL) read FdogumRapor write SetdogumRapor stored dogumRapor_Specified;
    property analikRapor:                 analikIsgoremezlikRaporDVO       Index (IS_OPTN or IS_UNQL) read FanalikRapor write SetanalikRapor stored analikRapor_Specified;
    property protezRapor:                 protezRaporDVO                   Index (IS_OPTN or IS_UNQL) read FprotezRapor write SetprotezRapor stored protezRapor_Specified;
    property ilacRapor:                   ilacRaporDVO                     Index (IS_OPTN or IS_UNQL) read FilacRapor write SetilacRapor stored ilacRapor_Specified;
    property tedaviRapor:                 tedaviRaporDVO                   Index (IS_OPTN or IS_UNQL) read FtedaviRapor write SettedaviRapor stored tedaviRapor_Specified;
    property maluliyetRapor:              maluliyetRaporDVO                Index (IS_OPTN or IS_UNQL) read FmaluliyetRapor write SetmaluliyetRapor stored maluliyetRapor_Specified;
    property raporTuru:                   string                           Index (IS_OPTN or IS_UNQL) read FraporTuru write SetraporTuru stored raporTuru_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporSorguDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporSorguDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FraporBilgisi: raporOkuDVO;
  public
    destructor Destroy; override;
  published
    property saglikTesisKodu: Integer      Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property raporBilgisi:    raporOkuDVO  Index (IS_UNQL) read FraporBilgisi write FraporBilgisi;
  end;

  Array_Of_doktorBilgisiDVO = array of doktorBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_malzemeBilgisiDVO = array of malzemeBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : protezRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  protezRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    FraporDVO_Specified: boolean;
    Fmalzemeler: Array_Of_malzemeBilgisiDVO;
    Fmalzemeler_Specified: boolean;
    procedure SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
    function  raporDVO_Specified(Index: Integer): boolean;
    procedure Setmalzemeler(Index: Integer; const AArray_Of_malzemeBilgisiDVO: Array_Of_malzemeBilgisiDVO);
    function  malzemeler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporDVO:   raporDVO                    Index (IS_OPTN or IS_UNQL) read FraporDVO write SetraporDVO stored raporDVO_Specified;
    property malzemeler: Array_Of_malzemeBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fmalzemeler write Setmalzemeler stored malzemeler_Specified;
  end;

  Array_Of_cocukBilgisiDVO = array of cocukBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : dogumRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  dogumRaporDVO = class(TRemotable)
  private
    FraporDVO: raporDVO;
    FraporDVO_Specified: boolean;
    FbebekDogumTarihi: string;
    FbebekDogumTarihi_Specified: boolean;
    FcocukSayisi: Integer;
    FcanliCocukSayisi: Integer;
    FdogumTipi: string;
    FdogumTipi_Specified: boolean;
    Fepizyotemi: string;
    Fepizyotemi_Specified: boolean;
    FanesteziTipi: string;
    FanesteziTipi_Specified: boolean;
    Fcocuklar: Array_Of_cocukBilgisiDVO;
    Fcocuklar_Specified: boolean;
    procedure SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
    function  raporDVO_Specified(Index: Integer): boolean;
    procedure SetbebekDogumTarihi(Index: Integer; const Astring: string);
    function  bebekDogumTarihi_Specified(Index: Integer): boolean;
    procedure SetdogumTipi(Index: Integer; const Astring: string);
    function  dogumTipi_Specified(Index: Integer): boolean;
    procedure Setepizyotemi(Index: Integer; const Astring: string);
    function  epizyotemi_Specified(Index: Integer): boolean;
    procedure SetanesteziTipi(Index: Integer; const Astring: string);
    function  anesteziTipi_Specified(Index: Integer): boolean;
    procedure Setcocuklar(Index: Integer; const AArray_Of_cocukBilgisiDVO: Array_Of_cocukBilgisiDVO);
    function  cocuklar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporDVO:         raporDVO                  Index (IS_OPTN or IS_UNQL) read FraporDVO write SetraporDVO stored raporDVO_Specified;
    property bebekDogumTarihi: string                    Index (IS_OPTN or IS_UNQL) read FbebekDogumTarihi write SetbebekDogumTarihi stored bebekDogumTarihi_Specified;
    property cocukSayisi:      Integer                   Index (IS_UNQL) read FcocukSayisi write FcocukSayisi;
    property canliCocukSayisi: Integer                   Index (IS_UNQL) read FcanliCocukSayisi write FcanliCocukSayisi;
    property dogumTipi:        string                    Index (IS_OPTN or IS_UNQL) read FdogumTipi write SetdogumTipi stored dogumTipi_Specified;
    property epizyotemi:       string                    Index (IS_OPTN or IS_UNQL) read Fepizyotemi write Setepizyotemi stored epizyotemi_Specified;
    property anesteziTipi:     string                    Index (IS_OPTN or IS_UNQL) read FanesteziTipi write SetanesteziTipi stored anesteziTipi_Specified;
    property cocuklar:         Array_Of_cocukBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fcocuklar write Setcocuklar stored cocuklar_Specified;
  end;

  Array_Of_taniBilgisiDVO = array of taniBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : isgoremezlikRaporEkDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  isgoremezlikRaporEkDVO = class(TRemotable)
  private
    FkullaniciTesisKodu: Integer;
    FraporBilgisiDVO: raporBilgisiDVO;
    FraporBilgisiDVO_Specified: boolean;
    FkontrolMu: string;
    FkontrolMu_Specified: boolean;
    FkontrolTarihi: string;
    FkontrolTarihi_Specified: boolean;
    FhastaYatisVarMi: string;
    FhastaYatisVarMi_Specified: boolean;
    Fyatislar: Array_Of_hastaYatisBilgisiDVO;
    Fyatislar_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FduzenlemeTuru: string;
    FduzenlemeTuru_Specified: boolean;
    FprotokolNo: string;
    FprotokolNo_Specified: boolean;
    FprotokolTarihi: string;
    FprotokolTarihi_Specified: boolean;
    Fdurum: string;
    Fdurum_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    Fdoktorlar: Array_Of_doktorBilgisiDVO;
    Fdoktorlar_Specified: boolean;
    Ftanilar: Array_Of_taniBilgisiDVO;
    Ftanilar_Specified: boolean;
    procedure SetraporBilgisiDVO(Index: Integer; const AraporBilgisiDVO: raporBilgisiDVO);
    function  raporBilgisiDVO_Specified(Index: Integer): boolean;
    procedure SetkontrolMu(Index: Integer; const Astring: string);
    function  kontrolMu_Specified(Index: Integer): boolean;
    procedure SetkontrolTarihi(Index: Integer; const Astring: string);
    function  kontrolTarihi_Specified(Index: Integer): boolean;
    procedure SethastaYatisVarMi(Index: Integer; const Astring: string);
    function  hastaYatisVarMi_Specified(Index: Integer): boolean;
    procedure Setyatislar(Index: Integer; const AArray_Of_hastaYatisBilgisiDVO: Array_Of_hastaYatisBilgisiDVO);
    function  yatislar_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure SetduzenlemeTuru(Index: Integer; const Astring: string);
    function  duzenlemeTuru_Specified(Index: Integer): boolean;
    procedure SetprotokolNo(Index: Integer; const Astring: string);
    function  protokolNo_Specified(Index: Integer): boolean;
    procedure SetprotokolTarihi(Index: Integer; const Astring: string);
    function  protokolTarihi_Specified(Index: Integer): boolean;
    procedure Setdurum(Index: Integer; const Astring: string);
    function  durum_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure Setdoktorlar(Index: Integer; const AArray_Of_doktorBilgisiDVO: Array_Of_doktorBilgisiDVO);
    function  doktorlar_Specified(Index: Integer): boolean;
    procedure Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
    function  tanilar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property kullaniciTesisKodu: Integer                        Index (IS_UNQL) read FkullaniciTesisKodu write FkullaniciTesisKodu;
    property raporBilgisiDVO:    raporBilgisiDVO                Index (IS_OPTN or IS_UNQL) read FraporBilgisiDVO write SetraporBilgisiDVO stored raporBilgisiDVO_Specified;
    property kontrolMu:          string                         Index (IS_OPTN or IS_UNQL) read FkontrolMu write SetkontrolMu stored kontrolMu_Specified;
    property kontrolTarihi:      string                         Index (IS_OPTN or IS_UNQL) read FkontrolTarihi write SetkontrolTarihi stored kontrolTarihi_Specified;
    property hastaYatisVarMi:    string                         Index (IS_OPTN or IS_UNQL) read FhastaYatisVarMi write SethastaYatisVarMi stored hastaYatisVarMi_Specified;
    property yatislar:           Array_Of_hastaYatisBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fyatislar write Setyatislar stored yatislar_Specified;
    property bitisTarihi:        string                         Index (IS_OPTN or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property duzenlemeTuru:      string                         Index (IS_OPTN or IS_UNQL) read FduzenlemeTuru write SetduzenlemeTuru stored duzenlemeTuru_Specified;
    property protokolNo:         string                         Index (IS_OPTN or IS_UNQL) read FprotokolNo write SetprotokolNo stored protokolNo_Specified;
    property protokolTarihi:     string                         Index (IS_OPTN or IS_UNQL) read FprotokolTarihi write SetprotokolTarihi stored protokolTarihi_Specified;
    property durum:              string                         Index (IS_OPTN or IS_UNQL) read Fdurum write Setdurum stored durum_Specified;
    property aciklama:           string                         Index (IS_OPTN or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property doktorlar:          Array_Of_doktorBilgisiDVO      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fdoktorlar write Setdoktorlar stored doktorlar_Specified;
    property tanilar:            Array_Of_taniBilgisiDVO        Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftanilar write Settanilar stored tanilar_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporDVO = class(TRemotable)
  private
    FraporBilgisi: raporBilgisiDVO;
    Fturu: string;
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FduzenlemeTuru: string;
    FhakSahibi: hakSahibiBilgisiDVO;
    FhakSahibi_Specified: boolean;
    FprotokolNo: string;
    FprotokolNo_Specified: boolean;
    FprotokolTarihi: string;
    FprotokolTarihi_Specified: boolean;
    Fdurum: string;
    Fdurum_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    Fdoktorlar: Array_Of_doktorBilgisiDVO;
    Ftanilar: Array_Of_taniBilgisiDVO;
    Ftanilar_Specified: boolean;
    Fteshisler: Array_Of_teshisBilgisiDVO;
    Fteshisler_Specified: boolean;
    FilacTeshisler: Array_Of_ilacTeshisBilgiDVO;
    FilacTeshisler_Specified: boolean;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FklinikTani: string;
    FklinikTani_Specified: boolean;
    FozelDurum: Integer;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure SethakSahibi(Index: Integer; const AhakSahibiBilgisiDVO: hakSahibiBilgisiDVO);
    function  hakSahibi_Specified(Index: Integer): boolean;
    procedure SetprotokolNo(Index: Integer; const Astring: string);
    function  protokolNo_Specified(Index: Integer): boolean;
    procedure SetprotokolTarihi(Index: Integer; const Astring: string);
    function  protokolTarihi_Specified(Index: Integer): boolean;
    procedure Setdurum(Index: Integer; const Astring: string);
    function  durum_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
    function  tanilar_Specified(Index: Integer): boolean;
    procedure Setteshisler(Index: Integer; const AArray_Of_teshisBilgisiDVO: Array_Of_teshisBilgisiDVO);
    function  teshisler_Specified(Index: Integer): boolean;
    procedure SetilacTeshisler(Index: Integer; const AArray_Of_ilacTeshisBilgiDVO: Array_Of_ilacTeshisBilgiDVO);
    function  ilacTeshisler_Specified(Index: Integer): boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetklinikTani(Index: Integer; const Astring: string);
    function  klinikTani_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporBilgisi:    raporBilgisiDVO              Index (IS_UNQL) read FraporBilgisi write FraporBilgisi;
    property turu:            string                       Index (IS_UNQL) read Fturu write Fturu;
    property baslangicTarihi: string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:     string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property duzenlemeTuru:   string                       Index (IS_UNQL) read FduzenlemeTuru write FduzenlemeTuru;
    property hakSahibi:       hakSahibiBilgisiDVO          Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhakSahibi write SethakSahibi stored hakSahibi_Specified;
    property protokolNo:      string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FprotokolNo write SetprotokolNo stored protokolNo_Specified;
    property protokolTarihi:  string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FprotokolTarihi write SetprotokolTarihi stored protokolTarihi_Specified;
    property durum:           string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fdurum write Setdurum stored durum_Specified;
    property aciklama:        string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property doktorlar:       Array_Of_doktorBilgisiDVO    Index (IS_UNBD or IS_UNQL) read Fdoktorlar write Fdoktorlar;
    property tanilar:         Array_Of_taniBilgisiDVO      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftanilar write Settanilar stored tanilar_Specified;
    property teshisler:       Array_Of_teshisBilgisiDVO    Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fteshisler write Setteshisler stored teshisler_Specified;
    property ilacTeshisler:   Array_Of_ilacTeshisBilgiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FilacTeshisler write SetilacTeshisler stored ilacTeshisler_Specified;
    property takipNo:         string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property klinikTani:      string                       Index (IS_OPTN or IS_NLBL or IS_UNQL) read FklinikTani write SetklinikTani stored klinikTani_Specified;
    property ozelDurum:       Integer                      Index (IS_NLBL or IS_UNQL) read FozelDurum write FozelDurum;
  end;



  // ************************************************************************ //
  // XML       : eswtRaporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  eswtRaporBilgisiDVO = class(TRemotable)
  private
    FbutKodu: string;
    FeswtVucutBolgesiKodu: Integer;
    FseansSayi: Integer;
    FseansGun: Integer;
  published
    property butKodu:              string   Index (IS_UNQL) read FbutKodu write FbutKodu;
    property eswtVucutBolgesiKodu: Integer  Index (IS_UNQL) read FeswtVucutBolgesiKodu write FeswtVucutBolgesiKodu;
    property seansSayi:            Integer  Index (IS_UNQL) read FseansSayi write FseansSayi;
    property seansGun:             Integer  Index (IS_UNQL) read FseansGun write FseansGun;
  end;



  // ************************************************************************ //
  // XML       : hotRaporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hotRaporBilgisiDVO = class(TRemotable)
  private
    FtedaviSuresi: Integer;
    FseansSayi: Integer;
    FseansGun: Integer;
  published
    property tedaviSuresi: Integer  Index (IS_UNQL) read FtedaviSuresi write FtedaviSuresi;
    property seansSayi:    Integer  Index (IS_UNQL) read FseansSayi write FseansSayi;
    property seansGun:     Integer  Index (IS_UNQL) read FseansGun write FseansGun;
  end;



  // ************************************************************************ //
  // XML       : diyalizRaporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  diyalizRaporBilgisiDVO = class(TRemotable)
  private
    FbutKodu: string;
    FseansSayi: Integer;
    FseansGun: Integer;
    FrefakatVarMi: string;
  published
    property butKodu:      string   Index (IS_UNQL) read FbutKodu write FbutKodu;
    property seansSayi:    Integer  Index (IS_UNQL) read FseansSayi write FseansSayi;
    property seansGun:     Integer  Index (IS_UNQL) read FseansGun write FseansGun;
    property refakatVarMi: string   Index (IS_UNQL) read FrefakatVarMi write FrefakatVarMi;
  end;



  // ************************************************************************ //
  // XML       : tupBebekRaporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tupBebekRaporBilgisiDVO = class(TRemotable)
  private
    FbutKodu: string;
    FtupBebekRaporTuru: Integer;
  published
    property butKodu:           string   Index (IS_UNQL) read FbutKodu write FbutKodu;
    property tupBebekRaporTuru: Integer  Index (IS_UNQL) read FtupBebekRaporTuru write FtupBebekRaporTuru;
  end;



  // ************************************************************************ //
  // XML       : evHemodiyaliziRaporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  evHemodiyaliziRaporBilgisiDVO = class(TRemotable)
  private
    FbutKodu: string;
    FseansSayi: Integer;
    FseansGun: Integer;
  published
    property butKodu:   string   Index (IS_UNQL) read FbutKodu write FbutKodu;
    property seansSayi: Integer  Index (IS_UNQL) read FseansSayi write FseansSayi;
    property seansGun:  Integer  Index (IS_UNQL) read FseansGun write FseansGun;
  end;



  // ************************************************************************ //
  // XML       : eswlRaporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  eswlRaporBilgisiDVO = class(TRemotable)
  private
    FbutKodu: string;
    FeswlRaporuTasSayisi: Integer;
    FeswlRaporuSeansSayisi: Integer;
    FbobrekBilgisi: Integer;
    FeswlRaporuTasBilgileri: Array_Of_eswlTasBilgisiDVO;
  public
    destructor Destroy; override;
  published
    property butKodu:                string                      Index (IS_UNQL) read FbutKodu write FbutKodu;
    property eswlRaporuTasSayisi:    Integer                     Index (IS_UNQL) read FeswlRaporuTasSayisi write FeswlRaporuTasSayisi;
    property eswlRaporuSeansSayisi:  Integer                     Index (IS_UNQL) read FeswlRaporuSeansSayisi write FeswlRaporuSeansSayisi;
    property bobrekBilgisi:          Integer                     Index (IS_UNQL) read FbobrekBilgisi write FbobrekBilgisi;
    property eswlRaporuTasBilgileri: Array_Of_eswlTasBilgisiDVO  Index (IS_UNBD or IS_UNQL) read FeswlRaporuTasBilgileri write FeswlRaporuTasBilgileri;
  end;



  // ************************************************************************ //
  // XML       : ftrRaporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ftrRaporBilgisiDVO = class(TRemotable)
  private
    FbutKodu: string;
    FseansSayi: Integer;
    FseansGun: Integer;
    FftrVucutBolgesiKodu: Integer;
    FtedaviTuru: string;
    FrobotikRehabilitasyon: string;
  published
    property butKodu:               string   Index (IS_UNQL) read FbutKodu write FbutKodu;
    property seansSayi:             Integer  Index (IS_UNQL) read FseansSayi write FseansSayi;
    property seansGun:              Integer  Index (IS_UNQL) read FseansGun write FseansGun;
    property ftrVucutBolgesiKodu:   Integer  Index (IS_UNQL) read FftrVucutBolgesiKodu write FftrVucutBolgesiKodu;
    property tedaviTuru:            string   Index (IS_UNQL) read FtedaviTuru write FtedaviTuru;
    property robotikRehabilitasyon: string   Index (IS_UNQL) read FrobotikRehabilitasyon write FrobotikRehabilitasyon;
  end;



  // ************************************************************************ //
  // XML       : tedaviIslemBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tedaviIslemBilgisiDVO = class(TRemotable)
  private
    FdiyalizRaporBilgisi: diyalizRaporBilgisiDVO;
    FdiyalizRaporBilgisi_Specified: boolean;
    FhotRaporBilgisi: hotRaporBilgisiDVO;
    FhotRaporBilgisi_Specified: boolean;
    FeswtRaporBilgisi: eswtRaporBilgisiDVO;
    FeswtRaporBilgisi_Specified: boolean;
    FtupBebekRaporBilgisi: tupBebekRaporBilgisiDVO;
    FtupBebekRaporBilgisi_Specified: boolean;
    FftrRaporBilgisi: ftrRaporBilgisiDVO;
    FftrRaporBilgisi_Specified: boolean;
    FeswlRaporBilgisi: eswlRaporBilgisiDVO;
    FeswlRaporBilgisi_Specified: boolean;
    FevHemodiyaliziRaporBilgisi: evHemodiyaliziRaporBilgisiDVO;
    FevHemodiyaliziRaporBilgisi_Specified: boolean;
    procedure SetdiyalizRaporBilgisi(Index: Integer; const AdiyalizRaporBilgisiDVO: diyalizRaporBilgisiDVO);
    function  diyalizRaporBilgisi_Specified(Index: Integer): boolean;
    procedure SethotRaporBilgisi(Index: Integer; const AhotRaporBilgisiDVO: hotRaporBilgisiDVO);
    function  hotRaporBilgisi_Specified(Index: Integer): boolean;
    procedure SeteswtRaporBilgisi(Index: Integer; const AeswtRaporBilgisiDVO: eswtRaporBilgisiDVO);
    function  eswtRaporBilgisi_Specified(Index: Integer): boolean;
    procedure SettupBebekRaporBilgisi(Index: Integer; const AtupBebekRaporBilgisiDVO: tupBebekRaporBilgisiDVO);
    function  tupBebekRaporBilgisi_Specified(Index: Integer): boolean;
    procedure SetftrRaporBilgisi(Index: Integer; const AftrRaporBilgisiDVO: ftrRaporBilgisiDVO);
    function  ftrRaporBilgisi_Specified(Index: Integer): boolean;
    procedure SeteswlRaporBilgisi(Index: Integer; const AeswlRaporBilgisiDVO: eswlRaporBilgisiDVO);
    function  eswlRaporBilgisi_Specified(Index: Integer): boolean;
    procedure SetevHemodiyaliziRaporBilgisi(Index: Integer; const AevHemodiyaliziRaporBilgisiDVO: evHemodiyaliziRaporBilgisiDVO);
    function  evHemodiyaliziRaporBilgisi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property diyalizRaporBilgisi:        diyalizRaporBilgisiDVO         Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdiyalizRaporBilgisi write SetdiyalizRaporBilgisi stored diyalizRaporBilgisi_Specified;
    property hotRaporBilgisi:            hotRaporBilgisiDVO             Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhotRaporBilgisi write SethotRaporBilgisi stored hotRaporBilgisi_Specified;
    property eswtRaporBilgisi:           eswtRaporBilgisiDVO            Index (IS_OPTN or IS_NLBL or IS_UNQL) read FeswtRaporBilgisi write SeteswtRaporBilgisi stored eswtRaporBilgisi_Specified;
    property tupBebekRaporBilgisi:       tupBebekRaporBilgisiDVO        Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtupBebekRaporBilgisi write SettupBebekRaporBilgisi stored tupBebekRaporBilgisi_Specified;
    property ftrRaporBilgisi:            ftrRaporBilgisiDVO             Index (IS_OPTN or IS_NLBL or IS_UNQL) read FftrRaporBilgisi write SetftrRaporBilgisi stored ftrRaporBilgisi_Specified;
    property eswlRaporBilgisi:           eswlRaporBilgisiDVO            Index (IS_OPTN or IS_NLBL or IS_UNQL) read FeswlRaporBilgisi write SeteswlRaporBilgisi stored eswlRaporBilgisi_Specified;
    property evHemodiyaliziRaporBilgisi: evHemodiyaliziRaporBilgisiDVO  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FevHemodiyaliziRaporBilgisi write SetevHemodiyaliziRaporBilgisi stored evHemodiyaliziRaporBilgisi_Specified;
  end;



  // ************************************************************************ //
  // XML       : ilacTeshisBilgiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacTeshisBilgiDVO = class(TRemotable)
  private
    FteshisKodu: Integer;
    FbaslangicTarihi: string;
    FbitisTarihi: string;
    FICD10Kodu: Array_Of_taniBilgisiDVO;
  public
    destructor Destroy; override;
  published
    property teshisKodu:      Integer                  Index (IS_UNQL) read FteshisKodu write FteshisKodu;
    property baslangicTarihi: string                   Index (IS_UNQL) read FbaslangicTarihi write FbaslangicTarihi;
    property bitisTarihi:     string                   Index (IS_UNQL) read FbitisTarihi write FbitisTarihi;
    property ICD10Kodu:       Array_Of_taniBilgisiDVO  Index (IS_UNBD or IS_UNQL) read FICD10Kodu write FICD10Kodu;
  end;



  // ************************************************************************ //
  // XML       : teshisBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  teshisBilgisiDVO = class(TRemotable)
  private
    FteshisKodu: Integer;
    FbaslangicTarihi: string;
    FbitisTarihi: string;
  published
    property teshisKodu:      Integer  Index (IS_UNQL) read FteshisKodu write FteshisKodu;
    property baslangicTarihi: string   Index (IS_UNQL) read FbaslangicTarihi write FbaslangicTarihi;
    property bitisTarihi:     string   Index (IS_UNQL) read FbitisTarihi write FbitisTarihi;
  end;



  // ************************************************************************ //
  // XML       : taniBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  taniBilgisiDVO = class(TRemotable)
  private
    FtaniKodu: string;
  published
    property taniKodu: string  Index (IS_UNQL) read FtaniKodu write FtaniKodu;
  end;



  // ************************************************************************ //
  // XML       : hastaYatisBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaYatisBilgisiDVO = class(TRemotable)
  private
    FyatisTarihi: string;
    FyatisTarihi_Specified: boolean;
    FcikisTarihi: string;
    FcikisTarihi_Specified: boolean;
    procedure SetyatisTarihi(Index: Integer; const Astring: string);
    function  yatisTarihi_Specified(Index: Integer): boolean;
    procedure SetcikisTarihi(Index: Integer; const Astring: string);
    function  cikisTarihi_Specified(Index: Integer): boolean;
  published
    property yatisTarihi: string  Index (IS_OPTN or IS_UNQL) read FyatisTarihi write SetyatisTarihi stored yatisTarihi_Specified;
    property cikisTarihi: string  Index (IS_OPTN or IS_UNQL) read FcikisTarihi write SetcikisTarihi stored cikisTarihi_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporEtkinMaddeDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporEtkinMaddeDVO = class(TRemotable)
  private
    FetkinMaddeKodu: string;
    FkullanimDoz1: Integer;
    FkullanimDoz2: Integer;
    FkullanimDozBirim: string;
    FkullanimDozBirim_Specified: boolean;
    FkullanimPeriyot: Integer;
    FkullanimPeriyotBirim: string;
    FkullanimPeriyotBirim_Specified: boolean;
    procedure SetkullanimDozBirim(Index: Integer; const Astring: string);
    function  kullanimDozBirim_Specified(Index: Integer): boolean;
    procedure SetkullanimPeriyotBirim(Index: Integer; const Astring: string);
    function  kullanimPeriyotBirim_Specified(Index: Integer): boolean;
  published
    property etkinMaddeKodu:       string   Index (IS_UNQL) read FetkinMaddeKodu write FetkinMaddeKodu;
    property kullanimDoz1:         Integer  Index (IS_NLBL or IS_UNQL) read FkullanimDoz1 write FkullanimDoz1;
    property kullanimDoz2:         Integer  Index (IS_NLBL or IS_UNQL) read FkullanimDoz2 write FkullanimDoz2;
    property kullanimDozBirim:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FkullanimDozBirim write SetkullanimDozBirim stored kullanimDozBirim_Specified;
    property kullanimPeriyot:      Integer  Index (IS_NLBL or IS_UNQL) read FkullanimPeriyot write FkullanimPeriyot;
    property kullanimPeriyotBirim: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FkullanimPeriyotBirim write SetkullanimPeriyotBirim stored kullanimPeriyotBirim_Specified;
  end;



  // ************************************************************************ //
  // XML       : malzemeBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  malzemeBilgisiDVO = class(TRemotable)
  private
    FmalzemeKodu: string;
    FmalzemeKodu_Specified: boolean;
    FmalzemeAdi: string;
    FmalzemeAdi_Specified: boolean;
    FmalzemeTuru: string;
    FmalzemeTuru_Specified: boolean;
    Fadet: Integer;
    procedure SetmalzemeKodu(Index: Integer; const Astring: string);
    function  malzemeKodu_Specified(Index: Integer): boolean;
    procedure SetmalzemeAdi(Index: Integer; const Astring: string);
    function  malzemeAdi_Specified(Index: Integer): boolean;
    procedure SetmalzemeTuru(Index: Integer; const Astring: string);
    function  malzemeTuru_Specified(Index: Integer): boolean;
  published
    property malzemeKodu: string   Index (IS_OPTN or IS_UNQL) read FmalzemeKodu write SetmalzemeKodu stored malzemeKodu_Specified;
    property malzemeAdi:  string   Index (IS_OPTN or IS_UNQL) read FmalzemeAdi write SetmalzemeAdi stored malzemeAdi_Specified;
    property malzemeTuru: string   Index (IS_OPTN or IS_UNQL) read FmalzemeTuru write SetmalzemeTuru stored malzemeTuru_Specified;
    property adet:        Integer  Index (IS_UNQL) read Fadet write Fadet;
  end;



  // ************************************************************************ //
  // XML       : cocukBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  cocukBilgisiDVO = class(TRemotable)
  private
    Fcinsiyet: string;
    Fcinsiyet_Specified: boolean;
    Fkilo: string;
    Fkilo_Specified: boolean;
    FdogumSaati: string;
    FdogumSaati_Specified: boolean;
    procedure Setcinsiyet(Index: Integer; const Astring: string);
    function  cinsiyet_Specified(Index: Integer): boolean;
    procedure Setkilo(Index: Integer; const Astring: string);
    function  kilo_Specified(Index: Integer): boolean;
    procedure SetdogumSaati(Index: Integer; const Astring: string);
    function  dogumSaati_Specified(Index: Integer): boolean;
  published
    property cinsiyet:   string  Index (IS_OPTN or IS_UNQL) read Fcinsiyet write Setcinsiyet stored cinsiyet_Specified;
    property kilo:       string  Index (IS_OPTN or IS_UNQL) read Fkilo write Setkilo stored kilo_Specified;
    property dogumSaati: string  Index (IS_OPTN or IS_UNQL) read FdogumSaati write SetdogumSaati stored dogumSaati_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporOkuRaporTakipNodanDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporOkuRaporTakipNodanDVO = class(TRemotable)
  private
    FraporTakipNo: string;
    FraporSiraNo: string;
    FsaglikTesisKodu: Integer;
  published
    property raporTakipNo:    string   Index (IS_UNQL) read FraporTakipNo write FraporTakipNo;
    property raporSiraNo:     string   Index (IS_UNQL) read FraporSiraNo write FraporSiraNo;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : emzirmeRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  emzirmeRaporDVO = class(TRemotable)
  private
    FbebekDogumTarihi: string;
    FcanliCocukSayisi: Integer;
    FdoganCocukSayisi: Integer;
    FanneTcKimlikNo: string;
    FanneTcKimlikNo_Specified: boolean;
    procedure SetanneTcKimlikNo(Index: Integer; const Astring: string);
    function  anneTcKimlikNo_Specified(Index: Integer): boolean;
  published
    property bebekDogumTarihi: string   Index (IS_UNQL) read FbebekDogumTarihi write FbebekDogumTarihi;
    property canliCocukSayisi: Integer  Index (IS_NLBL or IS_UNQL) read FcanliCocukSayisi write FcanliCocukSayisi;
    property doganCocukSayisi: Integer  Index (IS_NLBL or IS_UNQL) read FdoganCocukSayisi write FdoganCocukSayisi;
    property anneTcKimlikNo:   string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FanneTcKimlikNo write SetanneTcKimlikNo stored anneTcKimlikNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporCevapTCKimlikNodanDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporCevapTCKimlikNodanDVO = class(TRemotable)
  private
    Fraporlar: Array_Of_raporCevapDVO;
    Fraporlar_Specified: boolean;
    FsonucKodu: Integer;
    FsonucAciklamasi: string;
    FsonucAciklamasi_Specified: boolean;
    procedure Setraporlar(Index: Integer; const AArray_Of_raporCevapDVO: Array_Of_raporCevapDVO);
    function  raporlar_Specified(Index: Integer): boolean;
    procedure SetsonucAciklamasi(Index: Integer; const Astring: string);
    function  sonucAciklamasi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporlar:        Array_Of_raporCevapDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Fraporlar write Setraporlar stored raporlar_Specified;
    property sonucKodu:       Integer                 Index (IS_UNQL) read FsonucKodu write FsonucKodu;
    property sonucAciklamasi: string                  Index (IS_OPTN or IS_UNQL) read FsonucAciklamasi write SetsonucAciklamasi stored sonucAciklamasi_Specified;
  end;



  // ************************************************************************ //
  // XML       : analikRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  analikRaporDVO = class(TRemotable)
  private
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FraporDurumu: string;
    FraporDurumu_Specified: boolean;
    FisKontTarihi: string;
    FisKontTarihi_Specified: boolean;
    FhastaneYatisTarihi: string;
    FhastaneYatisTarihi_Specified: boolean;
    FhastaneCikisTarihi: string;
    FhastaneCikisTarihi_Specified: boolean;
    FbebekDogumTarihi: string;
    FcanliCocukSayisi: Integer;
    FdoganCocukSayisi: Integer;
    FnorSezFor: string;
    FtaburcuTarihi: string;
    FtaburcuTarihi_Specified: boolean;
    FtaburcuKodu: Integer;
    FgebelikTipi: Integer;
    FgebelikHaftasi1: Integer;
    FgebelikHaftasi2: Integer;
    FbebekDogumHaftasi: Integer;
    FaktarmaHaftasi: Integer;
    FanalikRaporTipi: Integer;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure SetraporDurumu(Index: Integer; const Astring: string);
    function  raporDurumu_Specified(Index: Integer): boolean;
    procedure SetisKontTarihi(Index: Integer; const Astring: string);
    function  isKontTarihi_Specified(Index: Integer): boolean;
    procedure SethastaneYatisTarihi(Index: Integer; const Astring: string);
    function  hastaneYatisTarihi_Specified(Index: Integer): boolean;
    procedure SethastaneCikisTarihi(Index: Integer; const Astring: string);
    function  hastaneCikisTarihi_Specified(Index: Integer): boolean;
    procedure SettaburcuTarihi(Index: Integer; const Astring: string);
    function  taburcuTarihi_Specified(Index: Integer): boolean;
  published
    property baslangicTarihi:    string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property raporDurumu:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FraporDurumu write SetraporDurumu stored raporDurumu_Specified;
    property isKontTarihi:       string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FisKontTarihi write SetisKontTarihi stored isKontTarihi_Specified;
    property hastaneYatisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneYatisTarihi write SethastaneYatisTarihi stored hastaneYatisTarihi_Specified;
    property hastaneCikisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneCikisTarihi write SethastaneCikisTarihi stored hastaneCikisTarihi_Specified;
    property bebekDogumTarihi:   string   Index (IS_UNQL) read FbebekDogumTarihi write FbebekDogumTarihi;
    property canliCocukSayisi:   Integer  Index (IS_NLBL or IS_UNQL) read FcanliCocukSayisi write FcanliCocukSayisi;
    property doganCocukSayisi:   Integer  Index (IS_NLBL or IS_UNQL) read FdoganCocukSayisi write FdoganCocukSayisi;
    property norSezFor:          string   Index (IS_UNQL) read FnorSezFor write FnorSezFor;
    property taburcuTarihi:      string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtaburcuTarihi write SettaburcuTarihi stored taburcuTarihi_Specified;
    property taburcuKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtaburcuKodu write FtaburcuKodu;
    property gebelikTipi:        Integer  Index (IS_NLBL or IS_UNQL) read FgebelikTipi write FgebelikTipi;
    property gebelikHaftasi1:    Integer  Index (IS_NLBL or IS_UNQL) read FgebelikHaftasi1 write FgebelikHaftasi1;
    property gebelikHaftasi2:    Integer  Index (IS_NLBL or IS_UNQL) read FgebelikHaftasi2 write FgebelikHaftasi2;
    property bebekDogumHaftasi:  Integer  Index (IS_NLBL or IS_UNQL) read FbebekDogumHaftasi write FbebekDogumHaftasi;
    property aktarmaHaftasi:     Integer  Index (IS_NLBL or IS_UNQL) read FaktarmaHaftasi write FaktarmaHaftasi;
    property analikRaporTipi:    Integer  Index (IS_NLBL or IS_UNQL) read FanalikRaporTipi write FanalikRaporTipi;
  end;



  // ************************************************************************ //
  // XML       : isKazasiRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  isKazasiRaporDVO = class(TRemotable)
  private
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FraporDurumu: string;
    FraporDurumu_Specified: boolean;
    FisKontTarihi: string;
    FhastaneYatisTarihi: string;
    FhastaneYatisTarihi_Specified: boolean;
    FhastaneCikisTarihi: string;
    FhastaneCikisTarihi_Specified: boolean;
    Fnuks: string;
    Fnuks_Specified: boolean;
    FyaraninTuru: string;
    FyaraninTuru_Specified: boolean;
    FyaraninYeri: string;
    FyaraninYeri_Specified: boolean;
    FtaburcuTarihi: string;
    FtaburcuTarihi_Specified: boolean;
    FtaburcuKodu: Integer;
    FisKazasiTarihi: string;
    FisKazasiTarihi_Specified: boolean;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure SetraporDurumu(Index: Integer; const Astring: string);
    function  raporDurumu_Specified(Index: Integer): boolean;
    procedure SethastaneYatisTarihi(Index: Integer; const Astring: string);
    function  hastaneYatisTarihi_Specified(Index: Integer): boolean;
    procedure SethastaneCikisTarihi(Index: Integer; const Astring: string);
    function  hastaneCikisTarihi_Specified(Index: Integer): boolean;
    procedure Setnuks(Index: Integer; const Astring: string);
    function  nuks_Specified(Index: Integer): boolean;
    procedure SetyaraninTuru(Index: Integer; const Astring: string);
    function  yaraninTuru_Specified(Index: Integer): boolean;
    procedure SetyaraninYeri(Index: Integer; const Astring: string);
    function  yaraninYeri_Specified(Index: Integer): boolean;
    procedure SettaburcuTarihi(Index: Integer; const Astring: string);
    function  taburcuTarihi_Specified(Index: Integer): boolean;
    procedure SetisKazasiTarihi(Index: Integer; const Astring: string);
    function  isKazasiTarihi_Specified(Index: Integer): boolean;
  published
    property baslangicTarihi:    string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property raporDurumu:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FraporDurumu write SetraporDurumu stored raporDurumu_Specified;
    property isKontTarihi:       string   Index (IS_UNQL) read FisKontTarihi write FisKontTarihi;
    property hastaneYatisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneYatisTarihi write SethastaneYatisTarihi stored hastaneYatisTarihi_Specified;
    property hastaneCikisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneCikisTarihi write SethastaneCikisTarihi stored hastaneCikisTarihi_Specified;
    property nuks:               string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fnuks write Setnuks stored nuks_Specified;
    property yaraninTuru:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyaraninTuru write SetyaraninTuru stored yaraninTuru_Specified;
    property yaraninYeri:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyaraninYeri write SetyaraninYeri stored yaraninYeri_Specified;
    property taburcuTarihi:      string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtaburcuTarihi write SettaburcuTarihi stored taburcuTarihi_Specified;
    property taburcuKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtaburcuKodu write FtaburcuKodu;
    property isKazasiTarihi:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FisKazasiTarihi write SetisKazasiTarihi stored isKazasiTarihi_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FilacRapor: ilacRaporDVO;
    FilacRapor_Specified: boolean;
    FtedaviRapor: tedaviRaporDVO;
    FtedaviRapor_Specified: boolean;
    FisgoremezlikRapor: isgoremezlikRaporDVO;
    FisgoremezlikRapor_Specified: boolean;
    FmaluliyetRapor: maluliyetRaporDVO;
    FmaluliyetRapor_Specified: boolean;
    procedure SetilacRapor(Index: Integer; const AilacRaporDVO: ilacRaporDVO);
    function  ilacRapor_Specified(Index: Integer): boolean;
    procedure SettedaviRapor(Index: Integer; const AtedaviRaporDVO: tedaviRaporDVO);
    function  tedaviRapor_Specified(Index: Integer): boolean;
    procedure SetisgoremezlikRapor(Index: Integer; const AisgoremezlikRaporDVO: isgoremezlikRaporDVO);
    function  isgoremezlikRapor_Specified(Index: Integer): boolean;
    procedure SetmaluliyetRapor(Index: Integer; const AmaluliyetRaporDVO: maluliyetRaporDVO);
    function  maluliyetRapor_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property saglikTesisKodu:   Integer               Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property ilacRapor:         ilacRaporDVO          Index (IS_OPTN or IS_NLBL or IS_UNQL) read FilacRapor write SetilacRapor stored ilacRapor_Specified;
    property tedaviRapor:       tedaviRaporDVO        Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtedaviRapor write SettedaviRapor stored tedaviRapor_Specified;
    property isgoremezlikRapor: isgoremezlikRaporDVO  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FisgoremezlikRapor write SetisgoremezlikRapor stored isgoremezlikRapor_Specified;
    property maluliyetRapor:    maluliyetRaporDVO     Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmaluliyetRapor write SetmaluliyetRapor stored maluliyetRapor_Specified;
  end;



  // ************************************************************************ //
  // XML       : meslekHastaligiRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  meslekHastaligiRaporDVO = class(TRemotable)
  private
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FraporDurumu: string;
    FraporDurumu_Specified: boolean;
    FisKontTarihi: string;
    FhastaneYatisTarihi: string;
    FhastaneYatisTarihi_Specified: boolean;
    FhastaneCikisTarihi: string;
    FhastaneCikisTarihi_Specified: boolean;
    Fnuks: string;
    Fnuks_Specified: boolean;
    FyaraninTuru: string;
    FyaraninTuru_Specified: boolean;
    FyaraninYeri: string;
    FyaraninYeri_Specified: boolean;
    FtaburcuTarihi: string;
    FtaburcuTarihi_Specified: boolean;
    FtaburcuKodu: Integer;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure SetraporDurumu(Index: Integer; const Astring: string);
    function  raporDurumu_Specified(Index: Integer): boolean;
    procedure SethastaneYatisTarihi(Index: Integer; const Astring: string);
    function  hastaneYatisTarihi_Specified(Index: Integer): boolean;
    procedure SethastaneCikisTarihi(Index: Integer; const Astring: string);
    function  hastaneCikisTarihi_Specified(Index: Integer): boolean;
    procedure Setnuks(Index: Integer; const Astring: string);
    function  nuks_Specified(Index: Integer): boolean;
    procedure SetyaraninTuru(Index: Integer; const Astring: string);
    function  yaraninTuru_Specified(Index: Integer): boolean;
    procedure SetyaraninYeri(Index: Integer; const Astring: string);
    function  yaraninYeri_Specified(Index: Integer): boolean;
    procedure SettaburcuTarihi(Index: Integer; const Astring: string);
    function  taburcuTarihi_Specified(Index: Integer): boolean;
  published
    property baslangicTarihi:    string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property raporDurumu:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FraporDurumu write SetraporDurumu stored raporDurumu_Specified;
    property isKontTarihi:       string   Index (IS_UNQL) read FisKontTarihi write FisKontTarihi;
    property hastaneYatisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneYatisTarihi write SethastaneYatisTarihi stored hastaneYatisTarihi_Specified;
    property hastaneCikisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneCikisTarihi write SethastaneCikisTarihi stored hastaneCikisTarihi_Specified;
    property nuks:               string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fnuks write Setnuks stored nuks_Specified;
    property yaraninTuru:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyaraninTuru write SetyaraninTuru stored yaraninTuru_Specified;
    property yaraninYeri:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyaraninYeri write SetyaraninYeri stored yaraninYeri_Specified;
    property taburcuTarihi:      string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtaburcuTarihi write SettaburcuTarihi stored taburcuTarihi_Specified;
    property taburcuKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtaburcuKodu write FtaburcuKodu;
  end;



  // ************************************************************************ //
  // XML       : hastalikRaporDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastalikRaporDVO = class(TRemotable)
  private
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    FraporDurumu: string;
    FraporDurumu_Specified: boolean;
    FisKontTarihi: string;
    FhastaneYatisTarihi: string;
    FhastaneYatisTarihi_Specified: boolean;
    FhastaneCikisTarihi: string;
    FhastaneCikisTarihi_Specified: boolean;
    FtaburcuTarihi: string;
    FtaburcuTarihi_Specified: boolean;
    FtaburcuKodu: Integer;
    Fnuks: string;
    Fnuks_Specified: boolean;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure SetraporDurumu(Index: Integer; const Astring: string);
    function  raporDurumu_Specified(Index: Integer): boolean;
    procedure SethastaneYatisTarihi(Index: Integer; const Astring: string);
    function  hastaneYatisTarihi_Specified(Index: Integer): boolean;
    procedure SethastaneCikisTarihi(Index: Integer; const Astring: string);
    function  hastaneCikisTarihi_Specified(Index: Integer): boolean;
    procedure SettaburcuTarihi(Index: Integer; const Astring: string);
    function  taburcuTarihi_Specified(Index: Integer): boolean;
    procedure Setnuks(Index: Integer; const Astring: string);
    function  nuks_Specified(Index: Integer): boolean;
  published
    property baslangicTarihi:    string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property raporDurumu:        string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FraporDurumu write SetraporDurumu stored raporDurumu_Specified;
    property isKontTarihi:       string   Index (IS_UNQL) read FisKontTarihi write FisKontTarihi;
    property hastaneYatisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneYatisTarihi write SethastaneYatisTarihi stored hastaneYatisTarihi_Specified;
    property hastaneCikisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaneCikisTarihi write SethastaneCikisTarihi stored hastaneCikisTarihi_Specified;
    property taburcuTarihi:      string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtaburcuTarihi write SettaburcuTarihi stored taburcuTarihi_Specified;
    property taburcuKodu:        Integer  Index (IS_NLBL or IS_UNQL) read FtaburcuKodu write FtaburcuKodu;
    property nuks:               string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fnuks write Setnuks stored nuks_Specified;
  end;



  // ************************************************************************ //
  // XML       : doktorBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  doktorBilgisiDVO = class(TRemotable)
  private
    FdrTescilNo: string;
    FdrAdi: string;
    FdrAdi_Specified: boolean;
    FdrSoyadi: string;
    FdrSoyadi_Specified: boolean;
    FdrBransKodu: string;
    Ftipi: string;
    procedure SetdrAdi(Index: Integer; const Astring: string);
    function  drAdi_Specified(Index: Integer): boolean;
    procedure SetdrSoyadi(Index: Integer; const Astring: string);
    function  drSoyadi_Specified(Index: Integer): boolean;
  published
    property drTescilNo:  string  Index (IS_UNQL) read FdrTescilNo write FdrTescilNo;
    property drAdi:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrAdi write SetdrAdi stored drAdi_Specified;
    property drSoyadi:    string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrSoyadi write SetdrSoyadi stored drSoyadi_Specified;
    property drBransKodu: string  Index (IS_UNQL) read FdrBransKodu write FdrBransKodu;
    property tipi:        string  Index (IS_UNQL) read Ftipi write Ftipi;
  end;



  // ************************************************************************ //
  // XML       : bransGorusBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  bransGorusBilgisiDVO = class(TRemotable)
  private
    FbransKodu: string;
    Faciklama: string;
  published
    property bransKodu: string  Index (IS_UNQL) read FbransKodu write FbransKodu;
    property aciklama:  string  Index (IS_UNQL) read Faciklama write Faciklama;
  end;



  // ************************************************************************ //
  // XML       : eswlTasBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  eswlTasBilgisiDVO = class(TRemotable)
  private
    FtasBoyutu: string;
    FtasLokalizasyonKodu: Integer;
  published
    property tasBoyutu:           string   Index (IS_UNQL) read FtasBoyutu write FtasBoyutu;
    property tasLokalizasyonKodu: Integer  Index (IS_UNQL) read FtasLokalizasyonKodu write FtasLokalizasyonKodu;
  end;



  // ************************************************************************ //
  // XML       : ilacRaporDuzeltDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacRaporDuzeltDVO = class(TRemotable)
  private
    FraporNo: string;
    FraporTarihi: string;
    FsaglikTesisKodu: Integer;
    FraporTuru: string;
    FduzeltmeTarihi: string;
    FduzeltmeBilgisi: string;
    FdrTescilNo: string;
    FraporEtkinMaddeler: Array_Of_raporEtkinMaddeDVO;
    FraporEtkinMaddeler_Specified: boolean;
    Ftanilar: Array_Of_taniBilgisiDVO;
    Ftanilar_Specified: boolean;
    FilacTeshisler: Array_Of_ilacTeshisBilgiDVO;
    FilacTeshisler_Specified: boolean;
    procedure SetraporEtkinMaddeler(Index: Integer; const AArray_Of_raporEtkinMaddeDVO: Array_Of_raporEtkinMaddeDVO);
    function  raporEtkinMaddeler_Specified(Index: Integer): boolean;
    procedure Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
    function  tanilar_Specified(Index: Integer): boolean;
    procedure SetilacTeshisler(Index: Integer; const AArray_Of_ilacTeshisBilgiDVO: Array_Of_ilacTeshisBilgiDVO);
    function  ilacTeshisler_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property raporNo:            string                       Index (IS_UNQL) read FraporNo write FraporNo;
    property raporTarihi:        string                       Index (IS_UNQL) read FraporTarihi write FraporTarihi;
    property saglikTesisKodu:    Integer                      Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property raporTuru:          string                       Index (IS_UNQL) read FraporTuru write FraporTuru;
    property duzeltmeTarihi:     string                       Index (IS_UNQL) read FduzeltmeTarihi write FduzeltmeTarihi;
    property duzeltmeBilgisi:    string                       Index (IS_UNQL) read FduzeltmeBilgisi write FduzeltmeBilgisi;
    property drTescilNo:         string                       Index (IS_UNQL) read FdrTescilNo write FdrTescilNo;
    property raporEtkinMaddeler: Array_Of_raporEtkinMaddeDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FraporEtkinMaddeler write SetraporEtkinMaddeler stored raporEtkinMaddeler_Specified;
    property tanilar:            Array_Of_taniBilgisiDVO      Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftanilar write Settanilar stored tanilar_Specified;
    property ilacTeshisler:      Array_Of_ilacTeshisBilgiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FilacTeshisler write SetilacTeshisler stored ilacTeshisler_Specified;
  end;



  // ************************************************************************ //
  // XML       : raporOkuTCKimlikNodanDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporOkuTCKimlikNodanDVO = class(TRemotable)
  private
    FtckimlikNo: string;
    FraporTuru: string;
    FsaglikTesisKodu: Integer;
  published
    property tckimlikNo:      string   Index (IS_UNQL) read FtckimlikNo write FtckimlikNo;
    property raporTuru:       string   Index (IS_UNQL) read FraporTuru write FraporTuru;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : raporBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  raporBilgisiDVO = class(TRemotable)
  private
    FraporTesisKodu: Integer;
    Ftarih: string;
    Fno: string;
    FraporTakipNo: string;
    FraporSiraNo: Integer;
    FaVakaTKaza: Integer;
  published
    property raporTesisKodu: Integer  Index (IS_UNQL) read FraporTesisKodu write FraporTesisKodu;
    property tarih:          string   Index (IS_UNQL) read Ftarih write Ftarih;
    property no:             string   Index (IS_UNQL) read Fno write Fno;
    property raporTakipNo:   string   Index (IS_UNQL) read FraporTakipNo write FraporTakipNo;
    property raporSiraNo:    Integer  Index (IS_NLBL or IS_UNQL) read FraporSiraNo write FraporSiraNo;
    property aVakaTKaza:     Integer  Index (IS_UNQL) read FaVakaTKaza write FaVakaTKaza;
  end;



  // ************************************************************************ //
  // XML       : hakSahibiBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hakSahibiBilgisiDVO = class(TRemotable)
  private
    FtckimlikNo: string;
    FtckimlikNo_Specified: boolean;
    FkarneNo: string;
    FkarneNo_Specified: boolean;
    FsosyalGuvenlikNo: string;
    FsosyalGuvenlikNo_Specified: boolean;
    FyakinlikKodu: string;
    FyakinlikKodu_Specified: boolean;
    FsigortaliTuru: string;
    FsigortaliTuru_Specified: boolean;
    FdevredilenKurum: string;
    FdevredilenKurum_Specified: boolean;
    FprovizyonTipi: string;
    FprovizyonTipi_Specified: boolean;
    FprovizyonTarihi: string;
    FprovizyonTarihi_Specified: boolean;
    Fadi: string;
    Fadi_Specified: boolean;
    Fsoyadi: string;
    Fsoyadi_Specified: boolean;
    Fadres: string;
    Fadres_Specified: boolean;
    Ftelefon: string;
    Ftelefon_Specified: boolean;
    FbagliBulunanBirim: string;
    FbagliBulunanBirim_Specified: boolean;
    procedure SettckimlikNo(Index: Integer; const Astring: string);
    function  tckimlikNo_Specified(Index: Integer): boolean;
    procedure SetkarneNo(Index: Integer; const Astring: string);
    function  karneNo_Specified(Index: Integer): boolean;
    procedure SetsosyalGuvenlikNo(Index: Integer; const Astring: string);
    function  sosyalGuvenlikNo_Specified(Index: Integer): boolean;
    procedure SetyakinlikKodu(Index: Integer; const Astring: string);
    function  yakinlikKodu_Specified(Index: Integer): boolean;
    procedure SetsigortaliTuru(Index: Integer; const Astring: string);
    function  sigortaliTuru_Specified(Index: Integer): boolean;
    procedure SetdevredilenKurum(Index: Integer; const Astring: string);
    function  devredilenKurum_Specified(Index: Integer): boolean;
    procedure SetprovizyonTipi(Index: Integer; const Astring: string);
    function  provizyonTipi_Specified(Index: Integer): boolean;
    procedure SetprovizyonTarihi(Index: Integer; const Astring: string);
    function  provizyonTarihi_Specified(Index: Integer): boolean;
    procedure Setadi(Index: Integer; const Astring: string);
    function  adi_Specified(Index: Integer): boolean;
    procedure Setsoyadi(Index: Integer; const Astring: string);
    function  soyadi_Specified(Index: Integer): boolean;
    procedure Setadres(Index: Integer; const Astring: string);
    function  adres_Specified(Index: Integer): boolean;
    procedure Settelefon(Index: Integer; const Astring: string);
    function  telefon_Specified(Index: Integer): boolean;
    procedure SetbagliBulunanBirim(Index: Integer; const Astring: string);
    function  bagliBulunanBirim_Specified(Index: Integer): boolean;
  published
    property tckimlikNo:        string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtckimlikNo write SettckimlikNo stored tckimlikNo_Specified;
    property karneNo:           string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FkarneNo write SetkarneNo stored karneNo_Specified;
    property sosyalGuvenlikNo:  string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsosyalGuvenlikNo write SetsosyalGuvenlikNo stored sosyalGuvenlikNo_Specified;
    property yakinlikKodu:      string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyakinlikKodu write SetyakinlikKodu stored yakinlikKodu_Specified;
    property sigortaliTuru:     string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsigortaliTuru write SetsigortaliTuru stored sigortaliTuru_Specified;
    property devredilenKurum:   string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdevredilenKurum write SetdevredilenKurum stored devredilenKurum_Specified;
    property provizyonTipi:     string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FprovizyonTipi write SetprovizyonTipi stored provizyonTipi_Specified;
    property provizyonTarihi:   string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FprovizyonTarihi write SetprovizyonTarihi stored provizyonTarihi_Specified;
    property adi:               string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fadi write Setadi stored adi_Specified;
    property soyadi:            string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fsoyadi write Setsoyadi stored soyadi_Specified;
    property adres:             string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fadres write Setadres stored adres_Specified;
    property telefon:           string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Ftelefon write Settelefon stored telefon_Specified;
    property bagliBulunanBirim: string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbagliBulunanBirim write SetbagliBulunanBirim stored bagliBulunanBirim_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : RaporIslemleriPortBinding
  // service   : RaporIslemleriService
  // port      : RaporIslemleriPort
  // URL       : https://sgkt.sgk.gov.tr:443/medula/hastane/raporIslemleriWS
  // ************************************************************************ //
  RaporIslemleri = interface(IInvokable)
  ['{323522A1-AEC4-220A-9BC4-C06FBEC2BD21}']
    function  ilacRaporDuzelt(const raporDuzelt: ilacRaporDuzeltDVO): raporCevapDVO; stdcall;
    function  raporBilgisiBul(const raporBilgisi: raporSorguDVO): raporCevapDVO; stdcall;
    function  raporBilgisiBulRaporTakipNodan(const raporOku: raporOkuRaporTakipNodanDVO): raporCevapDVO; stdcall;
    function  raporBilgisiBulTCKimlikNodan(const raporOku: raporOkuTCKimlikNodanDVO): raporCevapTCKimlikNodanDVO; stdcall;
    function  raporBilgisiKaydet(const raporGiris: raporGirisDVO): raporCevapDVO; stdcall;
    function  raporBilgisiSil(const raporBilgisi: raporSorguDVO): raporCevapDVO; stdcall;
    function  takipNoileRaporBilgisiKaydet(const raporGiris: raporGirisDVO): raporCevapDVO; stdcall;
  end;

function GetRaporIslemleri(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): RaporIslemleri;


implementation
  uses SysUtils;

function GetRaporIslemleri(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): RaporIslemleri;
const
  defWSDL = 'https://sgkt.sgk.gov.tr/medula/hastane/raporIslemleriWS?wsdl';
  defURL  = 'https://sgkt.sgk.gov.tr:443/medula/hastane/raporIslemleriWS';
  defSvc  = 'RaporIslemleriService';
  defPrt  = 'RaporIslemleriPort';
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
    Result := (RIO as RaporIslemleri);
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


destructor dogumOncesiCalisabilirRaporDVO.Destroy;
begin
  SysUtils.FreeAndNil(FraporDVO);
  inherited Destroy;
end;

procedure dogumOncesiCalisabilirRaporDVO.SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
begin
  FraporDVO := AraporDVO;
  FraporDVO_Specified := True;
end;

function dogumOncesiCalisabilirRaporDVO.raporDVO_Specified(Index: Integer): boolean;
begin
  Result := FraporDVO_Specified;
end;

procedure dogumOncesiCalisabilirRaporDVO.SetbebekDogumTarihi(Index: Integer; const Astring: string);
begin
  FbebekDogumTarihi := Astring;
  FbebekDogumTarihi_Specified := True;
end;

function dogumOncesiCalisabilirRaporDVO.bebekDogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbebekDogumTarihi_Specified;
end;

procedure dogumOncesiCalisabilirRaporDVO.SetdogumIzniBaslangicTarihi(Index: Integer; const Astring: string);
begin
  FdogumIzniBaslangicTarihi := Astring;
  FdogumIzniBaslangicTarihi_Specified := True;
end;

function dogumOncesiCalisabilirRaporDVO.dogumIzniBaslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FdogumIzniBaslangicTarihi_Specified;
end;

destructor analikIsgoremezlikRaporDVO.Destroy;
begin
  SysUtils.FreeAndNil(FraporDVO);
  inherited Destroy;
end;

procedure analikIsgoremezlikRaporDVO.SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
begin
  FraporDVO := AraporDVO;
  FraporDVO_Specified := True;
end;

function analikIsgoremezlikRaporDVO.raporDVO_Specified(Index: Integer): boolean;
begin
  Result := FraporDVO_Specified;
end;

procedure analikIsgoremezlikRaporDVO.SetbebekDogumTarihi(Index: Integer; const Astring: string);
begin
  FbebekDogumTarihi := Astring;
  FbebekDogumTarihi_Specified := True;
end;

function analikIsgoremezlikRaporDVO.bebekDogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbebekDogumTarihi_Specified;
end;

destructor isgoremezlikRaporDVO.Destroy;
begin
  SysUtils.FreeAndNil(FraporDVO);
  SysUtils.FreeAndNil(FisKazasiRaporu);
  SysUtils.FreeAndNil(FmeslekHastaligiRaporu);
  SysUtils.FreeAndNil(FanalikRaporu);
  SysUtils.FreeAndNil(FemzirmeRaporu);
  SysUtils.FreeAndNil(FhastalikRaporu);
  inherited Destroy;
end;

procedure isgoremezlikRaporDVO.SetklinikBulgu(Index: Integer; const Astring: string);
begin
  FklinikBulgu := Astring;
  FklinikBulgu_Specified := True;
end;

function isgoremezlikRaporDVO.klinikBulgu_Specified(Index: Integer): boolean;
begin
  Result := FklinikBulgu_Specified;
end;

procedure isgoremezlikRaporDVO.SetronLabBilgi(Index: Integer; const Astring: string);
begin
  FronLabBilgi := Astring;
  FronLabBilgi_Specified := True;
end;

function isgoremezlikRaporDVO.ronLabBilgi_Specified(Index: Integer): boolean;
begin
  Result := FronLabBilgi_Specified;
end;

procedure isgoremezlikRaporDVO.Setkarar(Index: Integer; const Astring: string);
begin
  Fkarar := Astring;
  Fkarar_Specified := True;
end;

function isgoremezlikRaporDVO.karar_Specified(Index: Integer): boolean;
begin
  Result := Fkarar_Specified;
end;

procedure isgoremezlikRaporDVO.SetisKazasiRaporu(Index: Integer; const AisKazasiRaporDVO: isKazasiRaporDVO);
begin
  FisKazasiRaporu := AisKazasiRaporDVO;
  FisKazasiRaporu_Specified := True;
end;

function isgoremezlikRaporDVO.isKazasiRaporu_Specified(Index: Integer): boolean;
begin
  Result := FisKazasiRaporu_Specified;
end;

procedure isgoremezlikRaporDVO.SetmeslekHastaligiRaporu(Index: Integer; const AmeslekHastaligiRaporDVO: meslekHastaligiRaporDVO);
begin
  FmeslekHastaligiRaporu := AmeslekHastaligiRaporDVO;
  FmeslekHastaligiRaporu_Specified := True;
end;

function isgoremezlikRaporDVO.meslekHastaligiRaporu_Specified(Index: Integer): boolean;
begin
  Result := FmeslekHastaligiRaporu_Specified;
end;

procedure isgoremezlikRaporDVO.SetanalikRaporu(Index: Integer; const AanalikRaporDVO: analikRaporDVO);
begin
  FanalikRaporu := AanalikRaporDVO;
  FanalikRaporu_Specified := True;
end;

function isgoremezlikRaporDVO.analikRaporu_Specified(Index: Integer): boolean;
begin
  Result := FanalikRaporu_Specified;
end;

procedure isgoremezlikRaporDVO.SetemzirmeRaporu(Index: Integer; const AemzirmeRaporDVO: emzirmeRaporDVO);
begin
  FemzirmeRaporu := AemzirmeRaporDVO;
  FemzirmeRaporu_Specified := True;
end;

function isgoremezlikRaporDVO.emzirmeRaporu_Specified(Index: Integer): boolean;
begin
  Result := FemzirmeRaporu_Specified;
end;

procedure isgoremezlikRaporDVO.SethastalikRaporu(Index: Integer; const AhastalikRaporDVO: hastalikRaporDVO);
begin
  FhastalikRaporu := AhastalikRaporDVO;
  FhastalikRaporu_Specified := True;
end;

function isgoremezlikRaporDVO.hastalikRaporu_Specified(Index: Integer): boolean;
begin
  Result := FhastalikRaporu_Specified;
end;

destructor maluliyetRaporDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FbransGorusleri)-1 do
    SysUtils.FreeAndNil(FbransGorusleri[I]);
  System.SetLength(FbransGorusleri, 0);
  SysUtils.FreeAndNil(FraporDVO);
  inherited Destroy;
end;

destructor tedaviRaporDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fislemler)-1 do
    SysUtils.FreeAndNil(Fislemler[I]);
  System.SetLength(Fislemler, 0);
  SysUtils.FreeAndNil(FraporDVO);
  inherited Destroy;
end;

destructor ilacRaporDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FraporEtkinMaddeler)-1 do
    SysUtils.FreeAndNil(FraporEtkinMaddeler[I]);
  System.SetLength(FraporEtkinMaddeler, 0);
  SysUtils.FreeAndNil(FraporDVO);
  inherited Destroy;
end;

procedure ilacRaporDVO.SettakipFormuNo(Index: Integer; const Astring: string);
begin
  FtakipFormuNo := Astring;
  FtakipFormuNo_Specified := True;
end;

function ilacRaporDVO.takipFormuNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipFormuNo_Specified;
end;

destructor raporCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FisgoremezlikRaporEkleri)-1 do
    SysUtils.FreeAndNil(FisgoremezlikRaporEkleri[I]);
  System.SetLength(FisgoremezlikRaporEkleri, 0);
  SysUtils.FreeAndNil(FisgoremezlikRapor);
  SysUtils.FreeAndNil(FdogumOncesiCalisabilirRapor);
  SysUtils.FreeAndNil(FdogumRapor);
  SysUtils.FreeAndNil(FanalikRapor);
  SysUtils.FreeAndNil(FprotezRapor);
  SysUtils.FreeAndNil(FilacRapor);
  SysUtils.FreeAndNil(FtedaviRapor);
  SysUtils.FreeAndNil(FmaluliyetRapor);
  inherited Destroy;
end;

procedure raporCevapDVO.SetsonucAciklamasi(Index: Integer; const Astring: string);
begin
  FsonucAciklamasi := Astring;
  FsonucAciklamasi_Specified := True;
end;

function raporCevapDVO.sonucAciklamasi_Specified(Index: Integer): boolean;
begin
  Result := FsonucAciklamasi_Specified;
end;

procedure raporCevapDVO.SetisgoremezlikRapor(Index: Integer; const AisgoremezlikRaporDVO: isgoremezlikRaporDVO);
begin
  FisgoremezlikRapor := AisgoremezlikRaporDVO;
  FisgoremezlikRapor_Specified := True;
end;

function raporCevapDVO.isgoremezlikRapor_Specified(Index: Integer): boolean;
begin
  Result := FisgoremezlikRapor_Specified;
end;

procedure raporCevapDVO.SetisgoremezlikRaporEkleri(Index: Integer; const AArray_Of_isgoremezlikRaporEkDVO: Array_Of_isgoremezlikRaporEkDVO);
begin
  FisgoremezlikRaporEkleri := AArray_Of_isgoremezlikRaporEkDVO;
  FisgoremezlikRaporEkleri_Specified := True;
end;

function raporCevapDVO.isgoremezlikRaporEkleri_Specified(Index: Integer): boolean;
begin
  Result := FisgoremezlikRaporEkleri_Specified;
end;

procedure raporCevapDVO.SetdogumOncesiCalisabilirRapor(Index: Integer; const AdogumOncesiCalisabilirRaporDVO: dogumOncesiCalisabilirRaporDVO);
begin
  FdogumOncesiCalisabilirRapor := AdogumOncesiCalisabilirRaporDVO;
  FdogumOncesiCalisabilirRapor_Specified := True;
end;

function raporCevapDVO.dogumOncesiCalisabilirRapor_Specified(Index: Integer): boolean;
begin
  Result := FdogumOncesiCalisabilirRapor_Specified;
end;

procedure raporCevapDVO.SetdogumRapor(Index: Integer; const AdogumRaporDVO: dogumRaporDVO);
begin
  FdogumRapor := AdogumRaporDVO;
  FdogumRapor_Specified := True;
end;

function raporCevapDVO.dogumRapor_Specified(Index: Integer): boolean;
begin
  Result := FdogumRapor_Specified;
end;

procedure raporCevapDVO.SetanalikRapor(Index: Integer; const AanalikIsgoremezlikRaporDVO: analikIsgoremezlikRaporDVO);
begin
  FanalikRapor := AanalikIsgoremezlikRaporDVO;
  FanalikRapor_Specified := True;
end;

function raporCevapDVO.analikRapor_Specified(Index: Integer): boolean;
begin
  Result := FanalikRapor_Specified;
end;

procedure raporCevapDVO.SetprotezRapor(Index: Integer; const AprotezRaporDVO: protezRaporDVO);
begin
  FprotezRapor := AprotezRaporDVO;
  FprotezRapor_Specified := True;
end;

function raporCevapDVO.protezRapor_Specified(Index: Integer): boolean;
begin
  Result := FprotezRapor_Specified;
end;

procedure raporCevapDVO.SetilacRapor(Index: Integer; const AilacRaporDVO: ilacRaporDVO);
begin
  FilacRapor := AilacRaporDVO;
  FilacRapor_Specified := True;
end;

function raporCevapDVO.ilacRapor_Specified(Index: Integer): boolean;
begin
  Result := FilacRapor_Specified;
end;

procedure raporCevapDVO.SettedaviRapor(Index: Integer; const AtedaviRaporDVO: tedaviRaporDVO);
begin
  FtedaviRapor := AtedaviRaporDVO;
  FtedaviRapor_Specified := True;
end;

function raporCevapDVO.tedaviRapor_Specified(Index: Integer): boolean;
begin
  Result := FtedaviRapor_Specified;
end;

procedure raporCevapDVO.SetmaluliyetRapor(Index: Integer; const AmaluliyetRaporDVO: maluliyetRaporDVO);
begin
  FmaluliyetRapor := AmaluliyetRaporDVO;
  FmaluliyetRapor_Specified := True;
end;

function raporCevapDVO.maluliyetRapor_Specified(Index: Integer): boolean;
begin
  Result := FmaluliyetRapor_Specified;
end;

procedure raporCevapDVO.SetraporTuru(Index: Integer; const Astring: string);
begin
  FraporTuru := Astring;
  FraporTuru_Specified := True;
end;

function raporCevapDVO.raporTuru_Specified(Index: Integer): boolean;
begin
  Result := FraporTuru_Specified;
end;

destructor raporSorguDVO.Destroy;
begin
  SysUtils.FreeAndNil(FraporBilgisi);
  inherited Destroy;
end;

destructor protezRaporDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fmalzemeler)-1 do
    SysUtils.FreeAndNil(Fmalzemeler[I]);
  System.SetLength(Fmalzemeler, 0);
  SysUtils.FreeAndNil(FraporDVO);
  inherited Destroy;
end;

procedure protezRaporDVO.SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
begin
  FraporDVO := AraporDVO;
  FraporDVO_Specified := True;
end;

function protezRaporDVO.raporDVO_Specified(Index: Integer): boolean;
begin
  Result := FraporDVO_Specified;
end;

procedure protezRaporDVO.Setmalzemeler(Index: Integer; const AArray_Of_malzemeBilgisiDVO: Array_Of_malzemeBilgisiDVO);
begin
  Fmalzemeler := AArray_Of_malzemeBilgisiDVO;
  Fmalzemeler_Specified := True;
end;

function protezRaporDVO.malzemeler_Specified(Index: Integer): boolean;
begin
  Result := Fmalzemeler_Specified;
end;

destructor dogumRaporDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fcocuklar)-1 do
    SysUtils.FreeAndNil(Fcocuklar[I]);
  System.SetLength(Fcocuklar, 0);
  SysUtils.FreeAndNil(FraporDVO);
  inherited Destroy;
end;

procedure dogumRaporDVO.SetraporDVO(Index: Integer; const AraporDVO: raporDVO);
begin
  FraporDVO := AraporDVO;
  FraporDVO_Specified := True;
end;

function dogumRaporDVO.raporDVO_Specified(Index: Integer): boolean;
begin
  Result := FraporDVO_Specified;
end;

procedure dogumRaporDVO.SetbebekDogumTarihi(Index: Integer; const Astring: string);
begin
  FbebekDogumTarihi := Astring;
  FbebekDogumTarihi_Specified := True;
end;

function dogumRaporDVO.bebekDogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbebekDogumTarihi_Specified;
end;

procedure dogumRaporDVO.SetdogumTipi(Index: Integer; const Astring: string);
begin
  FdogumTipi := Astring;
  FdogumTipi_Specified := True;
end;

function dogumRaporDVO.dogumTipi_Specified(Index: Integer): boolean;
begin
  Result := FdogumTipi_Specified;
end;

procedure dogumRaporDVO.Setepizyotemi(Index: Integer; const Astring: string);
begin
  Fepizyotemi := Astring;
  Fepizyotemi_Specified := True;
end;

function dogumRaporDVO.epizyotemi_Specified(Index: Integer): boolean;
begin
  Result := Fepizyotemi_Specified;
end;

procedure dogumRaporDVO.SetanesteziTipi(Index: Integer; const Astring: string);
begin
  FanesteziTipi := Astring;
  FanesteziTipi_Specified := True;
end;

function dogumRaporDVO.anesteziTipi_Specified(Index: Integer): boolean;
begin
  Result := FanesteziTipi_Specified;
end;

procedure dogumRaporDVO.Setcocuklar(Index: Integer; const AArray_Of_cocukBilgisiDVO: Array_Of_cocukBilgisiDVO);
begin
  Fcocuklar := AArray_Of_cocukBilgisiDVO;
  Fcocuklar_Specified := True;
end;

function dogumRaporDVO.cocuklar_Specified(Index: Integer): boolean;
begin
  Result := Fcocuklar_Specified;
end;

destructor isgoremezlikRaporEkDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fyatislar)-1 do
    SysUtils.FreeAndNil(Fyatislar[I]);
  System.SetLength(Fyatislar, 0);
  for I := 0 to System.Length(Fdoktorlar)-1 do
    SysUtils.FreeAndNil(Fdoktorlar[I]);
  System.SetLength(Fdoktorlar, 0);
  for I := 0 to System.Length(Ftanilar)-1 do
    SysUtils.FreeAndNil(Ftanilar[I]);
  System.SetLength(Ftanilar, 0);
  SysUtils.FreeAndNil(FraporBilgisiDVO);
  inherited Destroy;
end;

procedure isgoremezlikRaporEkDVO.SetraporBilgisiDVO(Index: Integer; const AraporBilgisiDVO: raporBilgisiDVO);
begin
  FraporBilgisiDVO := AraporBilgisiDVO;
  FraporBilgisiDVO_Specified := True;
end;

function isgoremezlikRaporEkDVO.raporBilgisiDVO_Specified(Index: Integer): boolean;
begin
  Result := FraporBilgisiDVO_Specified;
end;

procedure isgoremezlikRaporEkDVO.SetkontrolMu(Index: Integer; const Astring: string);
begin
  FkontrolMu := Astring;
  FkontrolMu_Specified := True;
end;

function isgoremezlikRaporEkDVO.kontrolMu_Specified(Index: Integer): boolean;
begin
  Result := FkontrolMu_Specified;
end;

procedure isgoremezlikRaporEkDVO.SetkontrolTarihi(Index: Integer; const Astring: string);
begin
  FkontrolTarihi := Astring;
  FkontrolTarihi_Specified := True;
end;

function isgoremezlikRaporEkDVO.kontrolTarihi_Specified(Index: Integer): boolean;
begin
  Result := FkontrolTarihi_Specified;
end;

procedure isgoremezlikRaporEkDVO.SethastaYatisVarMi(Index: Integer; const Astring: string);
begin
  FhastaYatisVarMi := Astring;
  FhastaYatisVarMi_Specified := True;
end;

function isgoremezlikRaporEkDVO.hastaYatisVarMi_Specified(Index: Integer): boolean;
begin
  Result := FhastaYatisVarMi_Specified;
end;

procedure isgoremezlikRaporEkDVO.Setyatislar(Index: Integer; const AArray_Of_hastaYatisBilgisiDVO: Array_Of_hastaYatisBilgisiDVO);
begin
  Fyatislar := AArray_Of_hastaYatisBilgisiDVO;
  Fyatislar_Specified := True;
end;

function isgoremezlikRaporEkDVO.yatislar_Specified(Index: Integer): boolean;
begin
  Result := Fyatislar_Specified;
end;

procedure isgoremezlikRaporEkDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function isgoremezlikRaporEkDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure isgoremezlikRaporEkDVO.SetduzenlemeTuru(Index: Integer; const Astring: string);
begin
  FduzenlemeTuru := Astring;
  FduzenlemeTuru_Specified := True;
end;

function isgoremezlikRaporEkDVO.duzenlemeTuru_Specified(Index: Integer): boolean;
begin
  Result := FduzenlemeTuru_Specified;
end;

procedure isgoremezlikRaporEkDVO.SetprotokolNo(Index: Integer; const Astring: string);
begin
  FprotokolNo := Astring;
  FprotokolNo_Specified := True;
end;

function isgoremezlikRaporEkDVO.protokolNo_Specified(Index: Integer): boolean;
begin
  Result := FprotokolNo_Specified;
end;

procedure isgoremezlikRaporEkDVO.SetprotokolTarihi(Index: Integer; const Astring: string);
begin
  FprotokolTarihi := Astring;
  FprotokolTarihi_Specified := True;
end;

function isgoremezlikRaporEkDVO.protokolTarihi_Specified(Index: Integer): boolean;
begin
  Result := FprotokolTarihi_Specified;
end;

procedure isgoremezlikRaporEkDVO.Setdurum(Index: Integer; const Astring: string);
begin
  Fdurum := Astring;
  Fdurum_Specified := True;
end;

function isgoremezlikRaporEkDVO.durum_Specified(Index: Integer): boolean;
begin
  Result := Fdurum_Specified;
end;

procedure isgoremezlikRaporEkDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function isgoremezlikRaporEkDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure isgoremezlikRaporEkDVO.Setdoktorlar(Index: Integer; const AArray_Of_doktorBilgisiDVO: Array_Of_doktorBilgisiDVO);
begin
  Fdoktorlar := AArray_Of_doktorBilgisiDVO;
  Fdoktorlar_Specified := True;
end;

function isgoremezlikRaporEkDVO.doktorlar_Specified(Index: Integer): boolean;
begin
  Result := Fdoktorlar_Specified;
end;

procedure isgoremezlikRaporEkDVO.Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
begin
  Ftanilar := AArray_Of_taniBilgisiDVO;
  Ftanilar_Specified := True;
end;

function isgoremezlikRaporEkDVO.tanilar_Specified(Index: Integer): boolean;
begin
  Result := Ftanilar_Specified;
end;

destructor raporDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fdoktorlar)-1 do
    SysUtils.FreeAndNil(Fdoktorlar[I]);
  System.SetLength(Fdoktorlar, 0);
  for I := 0 to System.Length(Ftanilar)-1 do
    SysUtils.FreeAndNil(Ftanilar[I]);
  System.SetLength(Ftanilar, 0);
  for I := 0 to System.Length(Fteshisler)-1 do
    SysUtils.FreeAndNil(Fteshisler[I]);
  System.SetLength(Fteshisler, 0);
  for I := 0 to System.Length(FilacTeshisler)-1 do
    SysUtils.FreeAndNil(FilacTeshisler[I]);
  System.SetLength(FilacTeshisler, 0);
  SysUtils.FreeAndNil(FraporBilgisi);
  SysUtils.FreeAndNil(FhakSahibi);
  inherited Destroy;
end;

procedure raporDVO.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function raporDVO.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure raporDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function raporDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure raporDVO.SethakSahibi(Index: Integer; const AhakSahibiBilgisiDVO: hakSahibiBilgisiDVO);
begin
  FhakSahibi := AhakSahibiBilgisiDVO;
  FhakSahibi_Specified := True;
end;

function raporDVO.hakSahibi_Specified(Index: Integer): boolean;
begin
  Result := FhakSahibi_Specified;
end;

procedure raporDVO.SetprotokolNo(Index: Integer; const Astring: string);
begin
  FprotokolNo := Astring;
  FprotokolNo_Specified := True;
end;

function raporDVO.protokolNo_Specified(Index: Integer): boolean;
begin
  Result := FprotokolNo_Specified;
end;

procedure raporDVO.SetprotokolTarihi(Index: Integer; const Astring: string);
begin
  FprotokolTarihi := Astring;
  FprotokolTarihi_Specified := True;
end;

function raporDVO.protokolTarihi_Specified(Index: Integer): boolean;
begin
  Result := FprotokolTarihi_Specified;
end;

procedure raporDVO.Setdurum(Index: Integer; const Astring: string);
begin
  Fdurum := Astring;
  Fdurum_Specified := True;
end;

function raporDVO.durum_Specified(Index: Integer): boolean;
begin
  Result := Fdurum_Specified;
end;

procedure raporDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function raporDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure raporDVO.Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
begin
  Ftanilar := AArray_Of_taniBilgisiDVO;
  Ftanilar_Specified := True;
end;

function raporDVO.tanilar_Specified(Index: Integer): boolean;
begin
  Result := Ftanilar_Specified;
end;

procedure raporDVO.Setteshisler(Index: Integer; const AArray_Of_teshisBilgisiDVO: Array_Of_teshisBilgisiDVO);
begin
  Fteshisler := AArray_Of_teshisBilgisiDVO;
  Fteshisler_Specified := True;
end;

function raporDVO.teshisler_Specified(Index: Integer): boolean;
begin
  Result := Fteshisler_Specified;
end;

procedure raporDVO.SetilacTeshisler(Index: Integer; const AArray_Of_ilacTeshisBilgiDVO: Array_Of_ilacTeshisBilgiDVO);
begin
  FilacTeshisler := AArray_Of_ilacTeshisBilgiDVO;
  FilacTeshisler_Specified := True;
end;

function raporDVO.ilacTeshisler_Specified(Index: Integer): boolean;
begin
  Result := FilacTeshisler_Specified;
end;

procedure raporDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function raporDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure raporDVO.SetklinikTani(Index: Integer; const Astring: string);
begin
  FklinikTani := Astring;
  FklinikTani_Specified := True;
end;

function raporDVO.klinikTani_Specified(Index: Integer): boolean;
begin
  Result := FklinikTani_Specified;
end;

destructor eswlRaporBilgisiDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FeswlRaporuTasBilgileri)-1 do
    SysUtils.FreeAndNil(FeswlRaporuTasBilgileri[I]);
  System.SetLength(FeswlRaporuTasBilgileri, 0);
  inherited Destroy;
end;

destructor tedaviIslemBilgisiDVO.Destroy;
begin
  SysUtils.FreeAndNil(FdiyalizRaporBilgisi);
  SysUtils.FreeAndNil(FhotRaporBilgisi);
  SysUtils.FreeAndNil(FeswtRaporBilgisi);
  SysUtils.FreeAndNil(FtupBebekRaporBilgisi);
  SysUtils.FreeAndNil(FftrRaporBilgisi);
  SysUtils.FreeAndNil(FeswlRaporBilgisi);
  SysUtils.FreeAndNil(FevHemodiyaliziRaporBilgisi);
  inherited Destroy;
end;

procedure tedaviIslemBilgisiDVO.SetdiyalizRaporBilgisi(Index: Integer; const AdiyalizRaporBilgisiDVO: diyalizRaporBilgisiDVO);
begin
  FdiyalizRaporBilgisi := AdiyalizRaporBilgisiDVO;
  FdiyalizRaporBilgisi_Specified := True;
end;

function tedaviIslemBilgisiDVO.diyalizRaporBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FdiyalizRaporBilgisi_Specified;
end;

procedure tedaviIslemBilgisiDVO.SethotRaporBilgisi(Index: Integer; const AhotRaporBilgisiDVO: hotRaporBilgisiDVO);
begin
  FhotRaporBilgisi := AhotRaporBilgisiDVO;
  FhotRaporBilgisi_Specified := True;
end;

function tedaviIslemBilgisiDVO.hotRaporBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FhotRaporBilgisi_Specified;
end;

procedure tedaviIslemBilgisiDVO.SeteswtRaporBilgisi(Index: Integer; const AeswtRaporBilgisiDVO: eswtRaporBilgisiDVO);
begin
  FeswtRaporBilgisi := AeswtRaporBilgisiDVO;
  FeswtRaporBilgisi_Specified := True;
end;

function tedaviIslemBilgisiDVO.eswtRaporBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FeswtRaporBilgisi_Specified;
end;

procedure tedaviIslemBilgisiDVO.SettupBebekRaporBilgisi(Index: Integer; const AtupBebekRaporBilgisiDVO: tupBebekRaporBilgisiDVO);
begin
  FtupBebekRaporBilgisi := AtupBebekRaporBilgisiDVO;
  FtupBebekRaporBilgisi_Specified := True;
end;

function tedaviIslemBilgisiDVO.tupBebekRaporBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FtupBebekRaporBilgisi_Specified;
end;

procedure tedaviIslemBilgisiDVO.SetftrRaporBilgisi(Index: Integer; const AftrRaporBilgisiDVO: ftrRaporBilgisiDVO);
begin
  FftrRaporBilgisi := AftrRaporBilgisiDVO;
  FftrRaporBilgisi_Specified := True;
end;

function tedaviIslemBilgisiDVO.ftrRaporBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FftrRaporBilgisi_Specified;
end;

procedure tedaviIslemBilgisiDVO.SeteswlRaporBilgisi(Index: Integer; const AeswlRaporBilgisiDVO: eswlRaporBilgisiDVO);
begin
  FeswlRaporBilgisi := AeswlRaporBilgisiDVO;
  FeswlRaporBilgisi_Specified := True;
end;

function tedaviIslemBilgisiDVO.eswlRaporBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FeswlRaporBilgisi_Specified;
end;

procedure tedaviIslemBilgisiDVO.SetevHemodiyaliziRaporBilgisi(Index: Integer; const AevHemodiyaliziRaporBilgisiDVO: evHemodiyaliziRaporBilgisiDVO);
begin
  FevHemodiyaliziRaporBilgisi := AevHemodiyaliziRaporBilgisiDVO;
  FevHemodiyaliziRaporBilgisi_Specified := True;
end;

function tedaviIslemBilgisiDVO.evHemodiyaliziRaporBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FevHemodiyaliziRaporBilgisi_Specified;
end;

destructor ilacTeshisBilgiDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FICD10Kodu)-1 do
    SysUtils.FreeAndNil(FICD10Kodu[I]);
  System.SetLength(FICD10Kodu, 0);
  inherited Destroy;
end;

procedure hastaYatisBilgisiDVO.SetyatisTarihi(Index: Integer; const Astring: string);
begin
  FyatisTarihi := Astring;
  FyatisTarihi_Specified := True;
end;

function hastaYatisBilgisiDVO.yatisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyatisTarihi_Specified;
end;

procedure hastaYatisBilgisiDVO.SetcikisTarihi(Index: Integer; const Astring: string);
begin
  FcikisTarihi := Astring;
  FcikisTarihi_Specified := True;
end;

function hastaYatisBilgisiDVO.cikisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FcikisTarihi_Specified;
end;

procedure raporEtkinMaddeDVO.SetkullanimDozBirim(Index: Integer; const Astring: string);
begin
  FkullanimDozBirim := Astring;
  FkullanimDozBirim_Specified := True;
end;

function raporEtkinMaddeDVO.kullanimDozBirim_Specified(Index: Integer): boolean;
begin
  Result := FkullanimDozBirim_Specified;
end;

procedure raporEtkinMaddeDVO.SetkullanimPeriyotBirim(Index: Integer; const Astring: string);
begin
  FkullanimPeriyotBirim := Astring;
  FkullanimPeriyotBirim_Specified := True;
end;

function raporEtkinMaddeDVO.kullanimPeriyotBirim_Specified(Index: Integer): boolean;
begin
  Result := FkullanimPeriyotBirim_Specified;
end;

procedure malzemeBilgisiDVO.SetmalzemeKodu(Index: Integer; const Astring: string);
begin
  FmalzemeKodu := Astring;
  FmalzemeKodu_Specified := True;
end;

function malzemeBilgisiDVO.malzemeKodu_Specified(Index: Integer): boolean;
begin
  Result := FmalzemeKodu_Specified;
end;

procedure malzemeBilgisiDVO.SetmalzemeAdi(Index: Integer; const Astring: string);
begin
  FmalzemeAdi := Astring;
  FmalzemeAdi_Specified := True;
end;

function malzemeBilgisiDVO.malzemeAdi_Specified(Index: Integer): boolean;
begin
  Result := FmalzemeAdi_Specified;
end;

procedure malzemeBilgisiDVO.SetmalzemeTuru(Index: Integer; const Astring: string);
begin
  FmalzemeTuru := Astring;
  FmalzemeTuru_Specified := True;
end;

function malzemeBilgisiDVO.malzemeTuru_Specified(Index: Integer): boolean;
begin
  Result := FmalzemeTuru_Specified;
end;

procedure cocukBilgisiDVO.Setcinsiyet(Index: Integer; const Astring: string);
begin
  Fcinsiyet := Astring;
  Fcinsiyet_Specified := True;
end;

function cocukBilgisiDVO.cinsiyet_Specified(Index: Integer): boolean;
begin
  Result := Fcinsiyet_Specified;
end;

procedure cocukBilgisiDVO.Setkilo(Index: Integer; const Astring: string);
begin
  Fkilo := Astring;
  Fkilo_Specified := True;
end;

function cocukBilgisiDVO.kilo_Specified(Index: Integer): boolean;
begin
  Result := Fkilo_Specified;
end;

procedure cocukBilgisiDVO.SetdogumSaati(Index: Integer; const Astring: string);
begin
  FdogumSaati := Astring;
  FdogumSaati_Specified := True;
end;

function cocukBilgisiDVO.dogumSaati_Specified(Index: Integer): boolean;
begin
  Result := FdogumSaati_Specified;
end;

procedure emzirmeRaporDVO.SetanneTcKimlikNo(Index: Integer; const Astring: string);
begin
  FanneTcKimlikNo := Astring;
  FanneTcKimlikNo_Specified := True;
end;

function emzirmeRaporDVO.anneTcKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FanneTcKimlikNo_Specified;
end;

destructor raporCevapTCKimlikNodanDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fraporlar)-1 do
    SysUtils.FreeAndNil(Fraporlar[I]);
  System.SetLength(Fraporlar, 0);
  inherited Destroy;
end;

procedure raporCevapTCKimlikNodanDVO.Setraporlar(Index: Integer; const AArray_Of_raporCevapDVO: Array_Of_raporCevapDVO);
begin
  Fraporlar := AArray_Of_raporCevapDVO;
  Fraporlar_Specified := True;
end;

function raporCevapTCKimlikNodanDVO.raporlar_Specified(Index: Integer): boolean;
begin
  Result := Fraporlar_Specified;
end;

procedure raporCevapTCKimlikNodanDVO.SetsonucAciklamasi(Index: Integer; const Astring: string);
begin
  FsonucAciklamasi := Astring;
  FsonucAciklamasi_Specified := True;
end;

function raporCevapTCKimlikNodanDVO.sonucAciklamasi_Specified(Index: Integer): boolean;
begin
  Result := FsonucAciklamasi_Specified;
end;

procedure analikRaporDVO.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function analikRaporDVO.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure analikRaporDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function analikRaporDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure analikRaporDVO.SetraporDurumu(Index: Integer; const Astring: string);
begin
  FraporDurumu := Astring;
  FraporDurumu_Specified := True;
end;

function analikRaporDVO.raporDurumu_Specified(Index: Integer): boolean;
begin
  Result := FraporDurumu_Specified;
end;

procedure analikRaporDVO.SetisKontTarihi(Index: Integer; const Astring: string);
begin
  FisKontTarihi := Astring;
  FisKontTarihi_Specified := True;
end;

function analikRaporDVO.isKontTarihi_Specified(Index: Integer): boolean;
begin
  Result := FisKontTarihi_Specified;
end;

procedure analikRaporDVO.SethastaneYatisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneYatisTarihi := Astring;
  FhastaneYatisTarihi_Specified := True;
end;

function analikRaporDVO.hastaneYatisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneYatisTarihi_Specified;
end;

procedure analikRaporDVO.SethastaneCikisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneCikisTarihi := Astring;
  FhastaneCikisTarihi_Specified := True;
end;

function analikRaporDVO.hastaneCikisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneCikisTarihi_Specified;
end;

procedure analikRaporDVO.SettaburcuTarihi(Index: Integer; const Astring: string);
begin
  FtaburcuTarihi := Astring;
  FtaburcuTarihi_Specified := True;
end;

function analikRaporDVO.taburcuTarihi_Specified(Index: Integer): boolean;
begin
  Result := FtaburcuTarihi_Specified;
end;

procedure isKazasiRaporDVO.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function isKazasiRaporDVO.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure isKazasiRaporDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function isKazasiRaporDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure isKazasiRaporDVO.SetraporDurumu(Index: Integer; const Astring: string);
begin
  FraporDurumu := Astring;
  FraporDurumu_Specified := True;
end;

function isKazasiRaporDVO.raporDurumu_Specified(Index: Integer): boolean;
begin
  Result := FraporDurumu_Specified;
end;

procedure isKazasiRaporDVO.SethastaneYatisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneYatisTarihi := Astring;
  FhastaneYatisTarihi_Specified := True;
end;

function isKazasiRaporDVO.hastaneYatisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneYatisTarihi_Specified;
end;

procedure isKazasiRaporDVO.SethastaneCikisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneCikisTarihi := Astring;
  FhastaneCikisTarihi_Specified := True;
end;

function isKazasiRaporDVO.hastaneCikisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneCikisTarihi_Specified;
end;

procedure isKazasiRaporDVO.Setnuks(Index: Integer; const Astring: string);
begin
  Fnuks := Astring;
  Fnuks_Specified := True;
end;

function isKazasiRaporDVO.nuks_Specified(Index: Integer): boolean;
begin
  Result := Fnuks_Specified;
end;

procedure isKazasiRaporDVO.SetyaraninTuru(Index: Integer; const Astring: string);
begin
  FyaraninTuru := Astring;
  FyaraninTuru_Specified := True;
end;

function isKazasiRaporDVO.yaraninTuru_Specified(Index: Integer): boolean;
begin
  Result := FyaraninTuru_Specified;
end;

procedure isKazasiRaporDVO.SetyaraninYeri(Index: Integer; const Astring: string);
begin
  FyaraninYeri := Astring;
  FyaraninYeri_Specified := True;
end;

function isKazasiRaporDVO.yaraninYeri_Specified(Index: Integer): boolean;
begin
  Result := FyaraninYeri_Specified;
end;

procedure isKazasiRaporDVO.SettaburcuTarihi(Index: Integer; const Astring: string);
begin
  FtaburcuTarihi := Astring;
  FtaburcuTarihi_Specified := True;
end;

function isKazasiRaporDVO.taburcuTarihi_Specified(Index: Integer): boolean;
begin
  Result := FtaburcuTarihi_Specified;
end;

procedure isKazasiRaporDVO.SetisKazasiTarihi(Index: Integer; const Astring: string);
begin
  FisKazasiTarihi := Astring;
  FisKazasiTarihi_Specified := True;
end;

function isKazasiRaporDVO.isKazasiTarihi_Specified(Index: Integer): boolean;
begin
  Result := FisKazasiTarihi_Specified;
end;

destructor raporGirisDVO.Destroy;
begin
  SysUtils.FreeAndNil(FilacRapor);
  SysUtils.FreeAndNil(FtedaviRapor);
  SysUtils.FreeAndNil(FisgoremezlikRapor);
  SysUtils.FreeAndNil(FmaluliyetRapor);
  inherited Destroy;
end;

procedure raporGirisDVO.SetilacRapor(Index: Integer; const AilacRaporDVO: ilacRaporDVO);
begin
  FilacRapor := AilacRaporDVO;
  FilacRapor_Specified := True;
end;

function raporGirisDVO.ilacRapor_Specified(Index: Integer): boolean;
begin
  Result := FilacRapor_Specified;
end;

procedure raporGirisDVO.SettedaviRapor(Index: Integer; const AtedaviRaporDVO: tedaviRaporDVO);
begin
  FtedaviRapor := AtedaviRaporDVO;
  FtedaviRapor_Specified := True;
end;

function raporGirisDVO.tedaviRapor_Specified(Index: Integer): boolean;
begin
  Result := FtedaviRapor_Specified;
end;

procedure raporGirisDVO.SetisgoremezlikRapor(Index: Integer; const AisgoremezlikRaporDVO: isgoremezlikRaporDVO);
begin
  FisgoremezlikRapor := AisgoremezlikRaporDVO;
  FisgoremezlikRapor_Specified := True;
end;

function raporGirisDVO.isgoremezlikRapor_Specified(Index: Integer): boolean;
begin
  Result := FisgoremezlikRapor_Specified;
end;

procedure raporGirisDVO.SetmaluliyetRapor(Index: Integer; const AmaluliyetRaporDVO: maluliyetRaporDVO);
begin
  FmaluliyetRapor := AmaluliyetRaporDVO;
  FmaluliyetRapor_Specified := True;
end;

function raporGirisDVO.maluliyetRapor_Specified(Index: Integer): boolean;
begin
  Result := FmaluliyetRapor_Specified;
end;

procedure meslekHastaligiRaporDVO.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function meslekHastaligiRaporDVO.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure meslekHastaligiRaporDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function meslekHastaligiRaporDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure meslekHastaligiRaporDVO.SetraporDurumu(Index: Integer; const Astring: string);
begin
  FraporDurumu := Astring;
  FraporDurumu_Specified := True;
end;

function meslekHastaligiRaporDVO.raporDurumu_Specified(Index: Integer): boolean;
begin
  Result := FraporDurumu_Specified;
end;

procedure meslekHastaligiRaporDVO.SethastaneYatisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneYatisTarihi := Astring;
  FhastaneYatisTarihi_Specified := True;
end;

function meslekHastaligiRaporDVO.hastaneYatisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneYatisTarihi_Specified;
end;

procedure meslekHastaligiRaporDVO.SethastaneCikisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneCikisTarihi := Astring;
  FhastaneCikisTarihi_Specified := True;
end;

function meslekHastaligiRaporDVO.hastaneCikisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneCikisTarihi_Specified;
end;

procedure meslekHastaligiRaporDVO.Setnuks(Index: Integer; const Astring: string);
begin
  Fnuks := Astring;
  Fnuks_Specified := True;
end;

function meslekHastaligiRaporDVO.nuks_Specified(Index: Integer): boolean;
begin
  Result := Fnuks_Specified;
end;

procedure meslekHastaligiRaporDVO.SetyaraninTuru(Index: Integer; const Astring: string);
begin
  FyaraninTuru := Astring;
  FyaraninTuru_Specified := True;
end;

function meslekHastaligiRaporDVO.yaraninTuru_Specified(Index: Integer): boolean;
begin
  Result := FyaraninTuru_Specified;
end;

procedure meslekHastaligiRaporDVO.SetyaraninYeri(Index: Integer; const Astring: string);
begin
  FyaraninYeri := Astring;
  FyaraninYeri_Specified := True;
end;

function meslekHastaligiRaporDVO.yaraninYeri_Specified(Index: Integer): boolean;
begin
  Result := FyaraninYeri_Specified;
end;

procedure meslekHastaligiRaporDVO.SettaburcuTarihi(Index: Integer; const Astring: string);
begin
  FtaburcuTarihi := Astring;
  FtaburcuTarihi_Specified := True;
end;

function meslekHastaligiRaporDVO.taburcuTarihi_Specified(Index: Integer): boolean;
begin
  Result := FtaburcuTarihi_Specified;
end;

procedure hastalikRaporDVO.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function hastalikRaporDVO.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure hastalikRaporDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function hastalikRaporDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure hastalikRaporDVO.SetraporDurumu(Index: Integer; const Astring: string);
begin
  FraporDurumu := Astring;
  FraporDurumu_Specified := True;
end;

function hastalikRaporDVO.raporDurumu_Specified(Index: Integer): boolean;
begin
  Result := FraporDurumu_Specified;
end;

procedure hastalikRaporDVO.SethastaneYatisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneYatisTarihi := Astring;
  FhastaneYatisTarihi_Specified := True;
end;

function hastalikRaporDVO.hastaneYatisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneYatisTarihi_Specified;
end;

procedure hastalikRaporDVO.SethastaneCikisTarihi(Index: Integer; const Astring: string);
begin
  FhastaneCikisTarihi := Astring;
  FhastaneCikisTarihi_Specified := True;
end;

function hastalikRaporDVO.hastaneCikisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FhastaneCikisTarihi_Specified;
end;

procedure hastalikRaporDVO.SettaburcuTarihi(Index: Integer; const Astring: string);
begin
  FtaburcuTarihi := Astring;
  FtaburcuTarihi_Specified := True;
end;

function hastalikRaporDVO.taburcuTarihi_Specified(Index: Integer): boolean;
begin
  Result := FtaburcuTarihi_Specified;
end;

procedure hastalikRaporDVO.Setnuks(Index: Integer; const Astring: string);
begin
  Fnuks := Astring;
  Fnuks_Specified := True;
end;

function hastalikRaporDVO.nuks_Specified(Index: Integer): boolean;
begin
  Result := Fnuks_Specified;
end;

procedure doktorBilgisiDVO.SetdrAdi(Index: Integer; const Astring: string);
begin
  FdrAdi := Astring;
  FdrAdi_Specified := True;
end;

function doktorBilgisiDVO.drAdi_Specified(Index: Integer): boolean;
begin
  Result := FdrAdi_Specified;
end;

procedure doktorBilgisiDVO.SetdrSoyadi(Index: Integer; const Astring: string);
begin
  FdrSoyadi := Astring;
  FdrSoyadi_Specified := True;
end;

function doktorBilgisiDVO.drSoyadi_Specified(Index: Integer): boolean;
begin
  Result := FdrSoyadi_Specified;
end;

destructor ilacRaporDuzeltDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FraporEtkinMaddeler)-1 do
    SysUtils.FreeAndNil(FraporEtkinMaddeler[I]);
  System.SetLength(FraporEtkinMaddeler, 0);
  for I := 0 to System.Length(Ftanilar)-1 do
    SysUtils.FreeAndNil(Ftanilar[I]);
  System.SetLength(Ftanilar, 0);
  for I := 0 to System.Length(FilacTeshisler)-1 do
    SysUtils.FreeAndNil(FilacTeshisler[I]);
  System.SetLength(FilacTeshisler, 0);
  inherited Destroy;
end;

procedure ilacRaporDuzeltDVO.SetraporEtkinMaddeler(Index: Integer; const AArray_Of_raporEtkinMaddeDVO: Array_Of_raporEtkinMaddeDVO);
begin
  FraporEtkinMaddeler := AArray_Of_raporEtkinMaddeDVO;
  FraporEtkinMaddeler_Specified := True;
end;

function ilacRaporDuzeltDVO.raporEtkinMaddeler_Specified(Index: Integer): boolean;
begin
  Result := FraporEtkinMaddeler_Specified;
end;

procedure ilacRaporDuzeltDVO.Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
begin
  Ftanilar := AArray_Of_taniBilgisiDVO;
  Ftanilar_Specified := True;
end;

function ilacRaporDuzeltDVO.tanilar_Specified(Index: Integer): boolean;
begin
  Result := Ftanilar_Specified;
end;

procedure ilacRaporDuzeltDVO.SetilacTeshisler(Index: Integer; const AArray_Of_ilacTeshisBilgiDVO: Array_Of_ilacTeshisBilgiDVO);
begin
  FilacTeshisler := AArray_Of_ilacTeshisBilgiDVO;
  FilacTeshisler_Specified := True;
end;

function ilacRaporDuzeltDVO.ilacTeshisler_Specified(Index: Integer): boolean;
begin
  Result := FilacTeshisler_Specified;
end;

procedure hakSahibiBilgisiDVO.SettckimlikNo(Index: Integer; const Astring: string);
begin
  FtckimlikNo := Astring;
  FtckimlikNo_Specified := True;
end;

function hakSahibiBilgisiDVO.tckimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FtckimlikNo_Specified;
end;

procedure hakSahibiBilgisiDVO.SetkarneNo(Index: Integer; const Astring: string);
begin
  FkarneNo := Astring;
  FkarneNo_Specified := True;
end;

function hakSahibiBilgisiDVO.karneNo_Specified(Index: Integer): boolean;
begin
  Result := FkarneNo_Specified;
end;

procedure hakSahibiBilgisiDVO.SetsosyalGuvenlikNo(Index: Integer; const Astring: string);
begin
  FsosyalGuvenlikNo := Astring;
  FsosyalGuvenlikNo_Specified := True;
end;

function hakSahibiBilgisiDVO.sosyalGuvenlikNo_Specified(Index: Integer): boolean;
begin
  Result := FsosyalGuvenlikNo_Specified;
end;

procedure hakSahibiBilgisiDVO.SetyakinlikKodu(Index: Integer; const Astring: string);
begin
  FyakinlikKodu := Astring;
  FyakinlikKodu_Specified := True;
end;

function hakSahibiBilgisiDVO.yakinlikKodu_Specified(Index: Integer): boolean;
begin
  Result := FyakinlikKodu_Specified;
end;

procedure hakSahibiBilgisiDVO.SetsigortaliTuru(Index: Integer; const Astring: string);
begin
  FsigortaliTuru := Astring;
  FsigortaliTuru_Specified := True;
end;

function hakSahibiBilgisiDVO.sigortaliTuru_Specified(Index: Integer): boolean;
begin
  Result := FsigortaliTuru_Specified;
end;

procedure hakSahibiBilgisiDVO.SetdevredilenKurum(Index: Integer; const Astring: string);
begin
  FdevredilenKurum := Astring;
  FdevredilenKurum_Specified := True;
end;

function hakSahibiBilgisiDVO.devredilenKurum_Specified(Index: Integer): boolean;
begin
  Result := FdevredilenKurum_Specified;
end;

procedure hakSahibiBilgisiDVO.SetprovizyonTipi(Index: Integer; const Astring: string);
begin
  FprovizyonTipi := Astring;
  FprovizyonTipi_Specified := True;
end;

function hakSahibiBilgisiDVO.provizyonTipi_Specified(Index: Integer): boolean;
begin
  Result := FprovizyonTipi_Specified;
end;

procedure hakSahibiBilgisiDVO.SetprovizyonTarihi(Index: Integer; const Astring: string);
begin
  FprovizyonTarihi := Astring;
  FprovizyonTarihi_Specified := True;
end;

function hakSahibiBilgisiDVO.provizyonTarihi_Specified(Index: Integer): boolean;
begin
  Result := FprovizyonTarihi_Specified;
end;

procedure hakSahibiBilgisiDVO.Setadi(Index: Integer; const Astring: string);
begin
  Fadi := Astring;
  Fadi_Specified := True;
end;

function hakSahibiBilgisiDVO.adi_Specified(Index: Integer): boolean;
begin
  Result := Fadi_Specified;
end;

procedure hakSahibiBilgisiDVO.Setsoyadi(Index: Integer; const Astring: string);
begin
  Fsoyadi := Astring;
  Fsoyadi_Specified := True;
end;

function hakSahibiBilgisiDVO.soyadi_Specified(Index: Integer): boolean;
begin
  Result := Fsoyadi_Specified;
end;

procedure hakSahibiBilgisiDVO.Setadres(Index: Integer; const Astring: string);
begin
  Fadres := Astring;
  Fadres_Specified := True;
end;

function hakSahibiBilgisiDVO.adres_Specified(Index: Integer): boolean;
begin
  Result := Fadres_Specified;
end;

procedure hakSahibiBilgisiDVO.Settelefon(Index: Integer; const Astring: string);
begin
  Ftelefon := Astring;
  Ftelefon_Specified := True;
end;

function hakSahibiBilgisiDVO.telefon_Specified(Index: Integer): boolean;
begin
  Result := Ftelefon_Specified;
end;

procedure hakSahibiBilgisiDVO.SetbagliBulunanBirim(Index: Integer; const Astring: string);
begin
  FbagliBulunanBirim := Astring;
  FbagliBulunanBirim_Specified := True;
end;

function hakSahibiBilgisiDVO.bagliBulunanBirim_Specified(Index: Integer): boolean;
begin
  Result := FbagliBulunanBirim_Specified;
end;

initialization
  { RaporIslemleri }
  InvRegistry.RegisterInterface(TypeInfo(RaporIslemleri), 'http://servisler.ws.gss.sgk.gov.tr', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(RaporIslemleri), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(RaporIslemleri), ioDocument);
  { RaporIslemleri.ilacRaporDuzelt }
  InvRegistry.RegisterMethodInfo(TypeInfo(RaporIslemleri), 'ilacRaporDuzelt', '',
                                 '[ReturnName="ilacRaporDuzeltReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'ilacRaporDuzelt', 'raporDuzelt', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'ilacRaporDuzelt', 'ilacRaporDuzeltReturn', '',
                                '', IS_UNQL);
  { RaporIslemleri.raporBilgisiBul }
  InvRegistry.RegisterMethodInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBul', '',
                                 '[ReturnName="raporBilgisiBulReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBul', 'raporBilgisi', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBul', 'raporBilgisiBulReturn', '',
                                '', IS_UNQL);
  { RaporIslemleri.raporBilgisiBulRaporTakipNodan }
  InvRegistry.RegisterMethodInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBulRaporTakipNodan', '',
                                 '[ReturnName="raporBilgisiBulRaporTakipNodanReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBulRaporTakipNodan', 'raporOku', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBulRaporTakipNodan', 'raporBilgisiBulRaporTakipNodanReturn', '',
                                '', IS_UNQL);
  { RaporIslemleri.raporBilgisiBulTCKimlikNodan }
  InvRegistry.RegisterMethodInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBulTCKimlikNodan', '',
                                 '[ReturnName="raporBilgisiBulTCKimlikNodanReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBulTCKimlikNodan', 'raporOku', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiBulTCKimlikNodan', 'raporBilgisiBulTCKimlikNodanReturn', '',
                                '', IS_UNQL);
  { RaporIslemleri.raporBilgisiKaydet }
  InvRegistry.RegisterMethodInfo(TypeInfo(RaporIslemleri), 'raporBilgisiKaydet', '',
                                 '[ReturnName="raporBilgisiKaydetReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiKaydet', 'raporGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiKaydet', 'raporBilgisiKaydetReturn', '',
                                '', IS_UNQL);
  { RaporIslemleri.raporBilgisiSil }
  InvRegistry.RegisterMethodInfo(TypeInfo(RaporIslemleri), 'raporBilgisiSil', '',
                                 '[ReturnName="raporBilgisiSilReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiSil', 'raporBilgisi', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'raporBilgisiSil', 'raporBilgisiSilReturn', '',
                                '', IS_UNQL);
  { RaporIslemleri.takipNoileRaporBilgisiKaydet }
  InvRegistry.RegisterMethodInfo(TypeInfo(RaporIslemleri), 'takipNoileRaporBilgisiKaydet', '',
                                 '[ReturnName="takipNoileRaporBilgisiKaydetReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'takipNoileRaporBilgisiKaydet', 'raporGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(RaporIslemleri), 'takipNoileRaporBilgisiKaydet', 'takipNoileRaporBilgisiKaydetReturn', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSClass(dogumOncesiCalisabilirRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'dogumOncesiCalisabilirRaporDVO');
  RemClassRegistry.RegisterXSClass(analikIsgoremezlikRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'analikIsgoremezlikRaporDVO');
  RemClassRegistry.RegisterXSClass(raporOkuDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporOkuDVO');
  RemClassRegistry.RegisterXSClass(isgoremezlikRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'isgoremezlikRaporDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_bransGorusBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_bransGorusBilgisiDVO');
  RemClassRegistry.RegisterXSClass(maluliyetRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'maluliyetRaporDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_tedaviIslemBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_tedaviIslemBilgisiDVO');
  RemClassRegistry.RegisterXSClass(tedaviRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tedaviRaporDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_raporEtkinMaddeDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_raporEtkinMaddeDVO');
  RemClassRegistry.RegisterXSClass(ilacRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacRaporDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_teshisBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_teshisBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_raporCevapDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_raporCevapDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_eswlTasBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_eswlTasBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ilacTeshisBilgiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_ilacTeshisBilgiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_hastaYatisBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_hastaYatisBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_isgoremezlikRaporEkDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_isgoremezlikRaporEkDVO');
  RemClassRegistry.RegisterXSClass(raporCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporCevapDVO');
  RemClassRegistry.RegisterXSClass(raporSorguDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporSorguDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_doktorBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_doktorBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_malzemeBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_malzemeBilgisiDVO');
  RemClassRegistry.RegisterXSClass(protezRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'protezRaporDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_cocukBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_cocukBilgisiDVO');
  RemClassRegistry.RegisterXSClass(dogumRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'dogumRaporDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_taniBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_taniBilgisiDVO');
  RemClassRegistry.RegisterXSClass(isgoremezlikRaporEkDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'isgoremezlikRaporEkDVO');
  RemClassRegistry.RegisterXSClass(raporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporDVO');
  RemClassRegistry.RegisterXSClass(eswtRaporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'eswtRaporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(hotRaporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hotRaporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(diyalizRaporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'diyalizRaporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(tupBebekRaporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tupBebekRaporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(evHemodiyaliziRaporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'evHemodiyaliziRaporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(eswlRaporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'eswlRaporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(ftrRaporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ftrRaporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(tedaviIslemBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tedaviIslemBilgisiDVO');
  RemClassRegistry.RegisterXSClass(ilacTeshisBilgiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacTeshisBilgiDVO');
  RemClassRegistry.RegisterXSClass(teshisBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'teshisBilgisiDVO');
  RemClassRegistry.RegisterXSClass(taniBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'taniBilgisiDVO');
  RemClassRegistry.RegisterXSClass(hastaYatisBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaYatisBilgisiDVO');
  RemClassRegistry.RegisterXSClass(raporEtkinMaddeDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporEtkinMaddeDVO');
  RemClassRegistry.RegisterXSClass(malzemeBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'malzemeBilgisiDVO');
  RemClassRegistry.RegisterXSClass(cocukBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'cocukBilgisiDVO');
  RemClassRegistry.RegisterXSClass(raporOkuRaporTakipNodanDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporOkuRaporTakipNodanDVO');
  RemClassRegistry.RegisterXSClass(emzirmeRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'emzirmeRaporDVO');
  RemClassRegistry.RegisterXSClass(raporCevapTCKimlikNodanDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporCevapTCKimlikNodanDVO');
  RemClassRegistry.RegisterXSClass(analikRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'analikRaporDVO');
  RemClassRegistry.RegisterXSClass(isKazasiRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'isKazasiRaporDVO');
  RemClassRegistry.RegisterXSClass(raporGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporGirisDVO');
  RemClassRegistry.RegisterXSClass(meslekHastaligiRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'meslekHastaligiRaporDVO');
  RemClassRegistry.RegisterXSClass(hastalikRaporDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastalikRaporDVO');
  RemClassRegistry.RegisterXSClass(doktorBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'doktorBilgisiDVO');
  RemClassRegistry.RegisterXSClass(bransGorusBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'bransGorusBilgisiDVO');
  RemClassRegistry.RegisterXSClass(eswlTasBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'eswlTasBilgisiDVO');
  RemClassRegistry.RegisterXSClass(ilacRaporDuzeltDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacRaporDuzeltDVO');
  RemClassRegistry.RegisterXSClass(raporOkuTCKimlikNodanDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporOkuTCKimlikNodanDVO');
  RemClassRegistry.RegisterXSClass(raporBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'raporBilgisiDVO');
  RemClassRegistry.RegisterXSClass(hakSahibiBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hakSahibiBilgisiDVO');

end.