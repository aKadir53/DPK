// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Projeler\MedulaServiceWSDL\faturaKayitIslemleriWS.wsdl
//  >Import : D:\Projeler\MedulaServiceWSDL\faturaKayitIslemleriWS.wsdl>0
//  >Import : D:\Projeler\MedulaServiceWSDL\faturaKayitIslemleriWS.xsd
// Encoding : utf-8
// Version  : 1.0
// (01.12.2018 12:02:41 - - $Rev: 45757 $)
// ************************************************************************ //

unit faturaKayitIslemleriWS;

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
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:double          - "http://www.w3.org/2001/XMLSchema"[Gbl]

  hizmetDetayDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaHataDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaIptalHataliKayitDVO = class;            { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaIptalGirisDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaIptalCevapDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaOkuGirisDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaCevapDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  islemDetayDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaGirisDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaCevapDetayDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaDetayDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  faturaOkuCevapDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }

  Array_Of_hizmetDetayDVO = array of hizmetDetayDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }
  Array_Of_faturaIptalHataliKayitDVO = array of faturaIptalHataliKayitDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_faturaCevapDetayDVO = array of faturaCevapDetayDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_faturaDetayDVO = array of faturaDetayDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_faturaHataDVO = array of faturaHataDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_islemDetayDVO = array of islemDetayDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : hizmetDetayDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetDetayDVO = class(TRemotable)
  private
    FtakipNo: string;
    FprotokolNo: string;
    FtaburcuKodu: string;
    Faciklama: string;
    Faciklama_Specified: boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
  published
    property takipNo:     string  Index (IS_UNQL) read FtakipNo write FtakipNo;
    property protokolNo:  string  Index (IS_UNQL) read FprotokolNo write FprotokolNo;
    property taburcuKodu: string  Index (IS_UNQL) read FtaburcuKodu write FtaburcuKodu;
    property aciklama:    string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaHataDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaHataDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FhataKodu: string;
    FhataKodu_Specified: boolean;
    FhataMesaji: string;
    FhataMesaji_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SethataKodu(Index: Integer; const Astring: string);
    function  hataKodu_Specified(Index: Integer): boolean;
    procedure SethataMesaji(Index: Integer; const Astring: string);
    function  hataMesaji_Specified(Index: Integer): boolean;
  published
    property takipNo:    string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property hataKodu:   string  Index (IS_OPTN or IS_UNQL) read FhataKodu write SethataKodu stored hataKodu_Specified;
    property hataMesaji: string  Index (IS_OPTN or IS_UNQL) read FhataMesaji write SethataMesaji stored hataMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaIptalHataliKayitDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaIptalHataliKayitDVO = class(TRemotable)
  private
    FfaturaTeslimNo: string;
    FfaturaTeslimNo_Specified: boolean;
    FhataKodu: string;
    FhataKodu_Specified: boolean;
    FhataMesaji: string;
    FhataMesaji_Specified: boolean;
    procedure SetfaturaTeslimNo(Index: Integer; const Astring: string);
    function  faturaTeslimNo_Specified(Index: Integer): boolean;
    procedure SethataKodu(Index: Integer; const Astring: string);
    function  hataKodu_Specified(Index: Integer): boolean;
    procedure SethataMesaji(Index: Integer; const Astring: string);
    function  hataMesaji_Specified(Index: Integer): boolean;
  published
    property faturaTeslimNo: string  Index (IS_OPTN or IS_UNQL) read FfaturaTeslimNo write SetfaturaTeslimNo stored faturaTeslimNo_Specified;
    property hataKodu:       string  Index (IS_OPTN or IS_UNQL) read FhataKodu write SethataKodu stored hataKodu_Specified;
    property hataMesaji:     string  Index (IS_OPTN or IS_UNQL) read FhataMesaji write SethataMesaji stored hataMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaIptalGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaIptalGirisDVO = class(TRemotable)
  private
    FfaturaTeslimNo: Array_Of_string;
    FsaglikTesisKodu: Integer;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property faturaTeslimNo:  Array_Of_string  Index (IS_UNBD or IS_UNQL) read FfaturaTeslimNo write FfaturaTeslimNo;
    property saglikTesisKodu: Integer          Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property ktsHbysKodu:     string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaIptalCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaIptalCevapDVO = class(TRemotable)
  private
    FhataliKayitlar: Array_Of_faturaIptalHataliKayitDVO;
    FhataliKayitlar_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SethataliKayitlar(Index: Integer; const AArray_Of_faturaIptalHataliKayitDVO: Array_Of_faturaIptalHataliKayitDVO);
    function  hataliKayitlar_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property hataliKayitlar: Array_Of_faturaIptalHataliKayitDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FhataliKayitlar write SethataliKayitlar stored hataliKayitlar_Specified;
    property sonucKodu:      string                              Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:    string                              Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaOkuGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaOkuGirisDVO = class(TRemotable)
  private
    FfaturaTeslimNo: string;
    FfaturaTeslimNo_Specified: boolean;
    FfaturaRefNo: string;
    FfaturaRefNo_Specified: boolean;
    FfaturaTarihi: string;
    FfaturaTarihi_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetfaturaTeslimNo(Index: Integer; const Astring: string);
    function  faturaTeslimNo_Specified(Index: Integer): boolean;
    procedure SetfaturaRefNo(Index: Integer; const Astring: string);
    function  faturaRefNo_Specified(Index: Integer): boolean;
    procedure SetfaturaTarihi(Index: Integer; const Astring: string);
    function  faturaTarihi_Specified(Index: Integer): boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property faturaTeslimNo:  string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FfaturaTeslimNo write SetfaturaTeslimNo stored faturaTeslimNo_Specified;
    property faturaRefNo:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FfaturaRefNo write SetfaturaRefNo stored faturaRefNo_Specified;
    property faturaTarihi:    string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FfaturaTarihi write SetfaturaTarihi stored faturaTarihi_Specified;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property ktsHbysKodu:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaCevapDVO = class(TRemotable)
  private
    FfaturaTeslimNo: string;
    FfaturaTeslimNo_Specified: boolean;
    FfaturaTutari: Double;
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FfaturaRefNo: string;
    FfaturaRefNo_Specified: boolean;
    FfaturaDetaylari: Array_Of_faturaDetayDVO;
    FfaturaDetaylari_Specified: boolean;
    FhataliKayitlar: Array_Of_faturaHataDVO;
    FhataliKayitlar_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetfaturaTeslimNo(Index: Integer; const Astring: string);
    function  faturaTeslimNo_Specified(Index: Integer): boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SetfaturaRefNo(Index: Integer; const Astring: string);
    function  faturaRefNo_Specified(Index: Integer): boolean;
    procedure SetfaturaDetaylari(Index: Integer; const AArray_Of_faturaDetayDVO: Array_Of_faturaDetayDVO);
    function  faturaDetaylari_Specified(Index: Integer): boolean;
    procedure SethataliKayitlar(Index: Integer; const AArray_Of_faturaHataDVO: Array_Of_faturaHataDVO);
    function  hataliKayitlar_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property faturaTeslimNo:  string                   Index (IS_OPTN or IS_UNQL) read FfaturaTeslimNo write SetfaturaTeslimNo stored faturaTeslimNo_Specified;
    property faturaTutari:    Double                   Index (IS_UNQL) read FfaturaTutari write FfaturaTutari;
    property hastaBasvuruNo:  string                   Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property faturaRefNo:     string                   Index (IS_OPTN or IS_UNQL) read FfaturaRefNo write SetfaturaRefNo stored faturaRefNo_Specified;
    property faturaDetaylari: Array_Of_faturaDetayDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FfaturaDetaylari write SetfaturaDetaylari stored faturaDetaylari_Specified;
    property hataliKayitlar:  Array_Of_faturaHataDVO   Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FhataliKayitlar write SethataliKayitlar stored hataliKayitlar_Specified;
    property sonucKodu:       string                   Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:     string                   Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : islemDetayDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  islemDetayDVO = class(TRemotable)
  private
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTutari: Double;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
  published
    property islemSiraNo: string  Index (IS_OPTN or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTutari: Double  Index (IS_UNQL) read FislemTutari write FislemTutari;
  end;



  // ************************************************************************ //
  // XML       : faturaGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaGirisDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FfaturaTarihi: string;
    FfaturaRefNo: string;
    FsaglikTesisKodu: Integer;
    FhizmetDetaylari: Array_Of_hizmetDetayDVO;
    FyesilKartSevkEdilenBransKodu: string;
    FyesilKartSevkEdilenBransKodu_Specified: boolean;
    FyesilKartSevkEdilenTesisKodu: Integer;
    FyesilKartSevkEdilenTesisAdi: string;
    FyesilKartSevkEdilenTesisAdi_Specified: boolean;
    FyesilKartSevkEdilenTakipTipi: string;
    FyesilKartSevkEdilenTakipTipi_Specified: boolean;
    FyesilKartSevkEdilenAciklama: string;
    FyesilKartSevkEdilenAciklama_Specified: boolean;
    FtrafikKazasiOdemeYuzdesi: Integer;
    FilaveUcret: Double;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetyesilKartSevkEdilenBransKodu(Index: Integer; const Astring: string);
    function  yesilKartSevkEdilenBransKodu_Specified(Index: Integer): boolean;
    procedure SetyesilKartSevkEdilenTesisAdi(Index: Integer; const Astring: string);
    function  yesilKartSevkEdilenTesisAdi_Specified(Index: Integer): boolean;
    procedure SetyesilKartSevkEdilenTakipTipi(Index: Integer; const Astring: string);
    function  yesilKartSevkEdilenTakipTipi_Specified(Index: Integer): boolean;
    procedure SetyesilKartSevkEdilenAciklama(Index: Integer; const Astring: string);
    function  yesilKartSevkEdilenAciklama_Specified(Index: Integer): boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property hastaBasvuruNo:               string                   Index (IS_UNQL) read FhastaBasvuruNo write FhastaBasvuruNo;
    property faturaTarihi:                 string                   Index (IS_UNQL) read FfaturaTarihi write FfaturaTarihi;
    property faturaRefNo:                  string                   Index (IS_UNQL) read FfaturaRefNo write FfaturaRefNo;
    property saglikTesisKodu:              Integer                  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property hizmetDetaylari:              Array_Of_hizmetDetayDVO  Index (IS_UNBD or IS_UNQL) read FhizmetDetaylari write FhizmetDetaylari;
    property yesilKartSevkEdilenBransKodu: string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyesilKartSevkEdilenBransKodu write SetyesilKartSevkEdilenBransKodu stored yesilKartSevkEdilenBransKodu_Specified;
    property yesilKartSevkEdilenTesisKodu: Integer                  Index (IS_NLBL or IS_UNQL) read FyesilKartSevkEdilenTesisKodu write FyesilKartSevkEdilenTesisKodu;
    property yesilKartSevkEdilenTesisAdi:  string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyesilKartSevkEdilenTesisAdi write SetyesilKartSevkEdilenTesisAdi stored yesilKartSevkEdilenTesisAdi_Specified;
    property yesilKartSevkEdilenTakipTipi: string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyesilKartSevkEdilenTakipTipi write SetyesilKartSevkEdilenTakipTipi stored yesilKartSevkEdilenTakipTipi_Specified;
    property yesilKartSevkEdilenAciklama:  string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyesilKartSevkEdilenAciklama write SetyesilKartSevkEdilenAciklama stored yesilKartSevkEdilenAciklama_Specified;
    property trafikKazasiOdemeYuzdesi:     Integer                  Index (IS_NLBL or IS_UNQL) read FtrafikKazasiOdemeYuzdesi write FtrafikKazasiOdemeYuzdesi;
    property ilaveUcret:                   Double                   Index (IS_UNQL) read FilaveUcret write FilaveUcret;
    property ktsHbysKodu:                  string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaCevapDetayDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaCevapDetayDVO = class(TRemotable)
  private
    Faciklama: string;
    Faciklama_Specified: boolean;
    FislemDetaylari: Array_Of_islemDetayDVO;
    FislemDetaylari_Specified: boolean;
    FprotokolNo: string;
    FprotokolNo_Specified: boolean;
    FtaburcuKodu: string;
    FtaburcuKodu_Specified: boolean;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FtakipToplamTutar: Double;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure SetislemDetaylari(Index: Integer; const AArray_Of_islemDetayDVO: Array_Of_islemDetayDVO);
    function  islemDetaylari_Specified(Index: Integer): boolean;
    procedure SetprotokolNo(Index: Integer; const Astring: string);
    function  protokolNo_Specified(Index: Integer): boolean;
    procedure SettaburcuKodu(Index: Integer; const Astring: string);
    function  taburcuKodu_Specified(Index: Integer): boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property aciklama:         string                  Index (IS_OPTN or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property islemDetaylari:   Array_Of_islemDetayDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FislemDetaylari write SetislemDetaylari stored islemDetaylari_Specified;
    property protokolNo:       string                  Index (IS_OPTN or IS_UNQL) read FprotokolNo write SetprotokolNo stored protokolNo_Specified;
    property taburcuKodu:      string                  Index (IS_OPTN or IS_UNQL) read FtaburcuKodu write SettaburcuKodu stored taburcuKodu_Specified;
    property takipNo:          string                  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property takipToplamTutar: Double                  Index (IS_UNQL) read FtakipToplamTutar write FtakipToplamTutar;
  end;



  // ************************************************************************ //
  // XML       : faturaDetayDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaDetayDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FtakipToplamTutar: Double;
    FislemDetaylari: Array_Of_islemDetayDVO;
    FislemDetaylari_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetislemDetaylari(Index: Integer; const AArray_Of_islemDetayDVO: Array_Of_islemDetayDVO);
    function  islemDetaylari_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property takipNo:          string                  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property takipToplamTutar: Double                  Index (IS_UNQL) read FtakipToplamTutar write FtakipToplamTutar;
    property islemDetaylari:   Array_Of_islemDetayDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FislemDetaylari write SetislemDetaylari stored islemDetaylari_Specified;
  end;



  // ************************************************************************ //
  // XML       : faturaOkuCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  faturaOkuCevapDVO = class(TRemotable)
  private
    FfaturaDetaylari: Array_Of_faturaCevapDetayDVO;
    FfaturaDetaylari_Specified: boolean;
    FfaturaRefNo: string;
    FfaturaRefNo_Specified: boolean;
    FfaturaTarihi: string;
    FfaturaTarihi_Specified: boolean;
    FfaturaTeslimNo: string;
    FfaturaTeslimNo_Specified: boolean;
    FfaturaTutari: Double;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetfaturaDetaylari(Index: Integer; const AArray_Of_faturaCevapDetayDVO: Array_Of_faturaCevapDetayDVO);
    function  faturaDetaylari_Specified(Index: Integer): boolean;
    procedure SetfaturaRefNo(Index: Integer; const Astring: string);
    function  faturaRefNo_Specified(Index: Integer): boolean;
    procedure SetfaturaTarihi(Index: Integer; const Astring: string);
    function  faturaTarihi_Specified(Index: Integer): boolean;
    procedure SetfaturaTeslimNo(Index: Integer; const Astring: string);
    function  faturaTeslimNo_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property faturaDetaylari: Array_Of_faturaCevapDetayDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FfaturaDetaylari write SetfaturaDetaylari stored faturaDetaylari_Specified;
    property faturaRefNo:     string                        Index (IS_OPTN or IS_UNQL) read FfaturaRefNo write SetfaturaRefNo stored faturaRefNo_Specified;
    property faturaTarihi:    string                        Index (IS_OPTN or IS_UNQL) read FfaturaTarihi write SetfaturaTarihi stored faturaTarihi_Specified;
    property faturaTeslimNo:  string                        Index (IS_OPTN or IS_UNQL) read FfaturaTeslimNo write SetfaturaTeslimNo stored faturaTeslimNo_Specified;
    property faturaTutari:    Double                        Index (IS_UNQL) read FfaturaTutari write FfaturaTutari;
    property sonucKodu:       string                        Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:     string                        Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : FaturaKayitIslemleriPortBinding
  // service   : FaturaKayitIslemleriService
  // port      : FaturaKayitIslemleriPort
  // URL       : http://sgkt.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS
  // ************************************************************************ //
  FaturaKayitIslemleri = interface(IInvokable)
  ['{91F3BEE0-E419-B7D7-EAEC-4604030C5766}']
    function  faturaKayit(const faturaGiris: faturaGirisDVO): faturaCevapDVO; stdcall;
    function  faturaIptal(const faturaIptalGiris: faturaIptalGirisDVO): faturaIptalCevapDVO; stdcall;
    function  faturaOku(const faturaOkuGiris: faturaOkuGirisDVO): faturaOkuCevapDVO; stdcall;
    function  faturaTutarOku(const faturaOkuGiris: faturaGirisDVO): faturaCevapDVO; stdcall;
  end;

function GetFaturaKayitIslemleri(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): FaturaKayitIslemleri;


implementation
  uses SysUtils;

function GetFaturaKayitIslemleri(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): FaturaKayitIslemleri;
const
  defWSDL = 'D:\Projeler\MedulaServiceWSDL\faturaKayitIslemleriWS.wsdl';
  defURL  = 'http://sgkt.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';
  defSvc  = 'FaturaKayitIslemleriService';
  defPrt  = 'FaturaKayitIslemleriPort';
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
    Result := (RIO as FaturaKayitIslemleri);
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


procedure hizmetDetayDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function hizmetDetayDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure faturaHataDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function faturaHataDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure faturaHataDVO.SethataKodu(Index: Integer; const Astring: string);
begin
  FhataKodu := Astring;
  FhataKodu_Specified := True;
end;

function faturaHataDVO.hataKodu_Specified(Index: Integer): boolean;
begin
  Result := FhataKodu_Specified;
end;

procedure faturaHataDVO.SethataMesaji(Index: Integer; const Astring: string);
begin
  FhataMesaji := Astring;
  FhataMesaji_Specified := True;
end;

function faturaHataDVO.hataMesaji_Specified(Index: Integer): boolean;
begin
  Result := FhataMesaji_Specified;
end;

procedure faturaIptalHataliKayitDVO.SetfaturaTeslimNo(Index: Integer; const Astring: string);
begin
  FfaturaTeslimNo := Astring;
  FfaturaTeslimNo_Specified := True;
end;

function faturaIptalHataliKayitDVO.faturaTeslimNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTeslimNo_Specified;
end;

procedure faturaIptalHataliKayitDVO.SethataKodu(Index: Integer; const Astring: string);
begin
  FhataKodu := Astring;
  FhataKodu_Specified := True;
end;

function faturaIptalHataliKayitDVO.hataKodu_Specified(Index: Integer): boolean;
begin
  Result := FhataKodu_Specified;
end;

procedure faturaIptalHataliKayitDVO.SethataMesaji(Index: Integer; const Astring: string);
begin
  FhataMesaji := Astring;
  FhataMesaji_Specified := True;
end;

function faturaIptalHataliKayitDVO.hataMesaji_Specified(Index: Integer): boolean;
begin
  Result := FhataMesaji_Specified;
end;

procedure faturaIptalGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function faturaIptalGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

destructor faturaIptalCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FhataliKayitlar)-1 do
    SysUtils.FreeAndNil(FhataliKayitlar[I]);
  System.SetLength(FhataliKayitlar, 0);
  inherited Destroy;
end;

procedure faturaIptalCevapDVO.SethataliKayitlar(Index: Integer; const AArray_Of_faturaIptalHataliKayitDVO: Array_Of_faturaIptalHataliKayitDVO);
begin
  FhataliKayitlar := AArray_Of_faturaIptalHataliKayitDVO;
  FhataliKayitlar_Specified := True;
end;

function faturaIptalCevapDVO.hataliKayitlar_Specified(Index: Integer): boolean;
begin
  Result := FhataliKayitlar_Specified;
end;

procedure faturaIptalCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function faturaIptalCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure faturaIptalCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function faturaIptalCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure faturaOkuGirisDVO.SetfaturaTeslimNo(Index: Integer; const Astring: string);
begin
  FfaturaTeslimNo := Astring;
  FfaturaTeslimNo_Specified := True;
end;

function faturaOkuGirisDVO.faturaTeslimNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTeslimNo_Specified;
end;

procedure faturaOkuGirisDVO.SetfaturaRefNo(Index: Integer; const Astring: string);
begin
  FfaturaRefNo := Astring;
  FfaturaRefNo_Specified := True;
end;

function faturaOkuGirisDVO.faturaRefNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaRefNo_Specified;
end;

procedure faturaOkuGirisDVO.SetfaturaTarihi(Index: Integer; const Astring: string);
begin
  FfaturaTarihi := Astring;
  FfaturaTarihi_Specified := True;
end;

function faturaOkuGirisDVO.faturaTarihi_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTarihi_Specified;
end;

procedure faturaOkuGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function faturaOkuGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

destructor faturaCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FfaturaDetaylari)-1 do
    SysUtils.FreeAndNil(FfaturaDetaylari[I]);
  System.SetLength(FfaturaDetaylari, 0);
  for I := 0 to System.Length(FhataliKayitlar)-1 do
    SysUtils.FreeAndNil(FhataliKayitlar[I]);
  System.SetLength(FhataliKayitlar, 0);
  inherited Destroy;
end;

procedure faturaCevapDVO.SetfaturaTeslimNo(Index: Integer; const Astring: string);
begin
  FfaturaTeslimNo := Astring;
  FfaturaTeslimNo_Specified := True;
end;

function faturaCevapDVO.faturaTeslimNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTeslimNo_Specified;
end;

procedure faturaCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function faturaCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure faturaCevapDVO.SetfaturaRefNo(Index: Integer; const Astring: string);
begin
  FfaturaRefNo := Astring;
  FfaturaRefNo_Specified := True;
end;

function faturaCevapDVO.faturaRefNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaRefNo_Specified;
end;

procedure faturaCevapDVO.SetfaturaDetaylari(Index: Integer; const AArray_Of_faturaDetayDVO: Array_Of_faturaDetayDVO);
begin
  FfaturaDetaylari := AArray_Of_faturaDetayDVO;
  FfaturaDetaylari_Specified := True;
end;

function faturaCevapDVO.faturaDetaylari_Specified(Index: Integer): boolean;
begin
  Result := FfaturaDetaylari_Specified;
end;

procedure faturaCevapDVO.SethataliKayitlar(Index: Integer; const AArray_Of_faturaHataDVO: Array_Of_faturaHataDVO);
begin
  FhataliKayitlar := AArray_Of_faturaHataDVO;
  FhataliKayitlar_Specified := True;
end;

function faturaCevapDVO.hataliKayitlar_Specified(Index: Integer): boolean;
begin
  Result := FhataliKayitlar_Specified;
end;

procedure faturaCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function faturaCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure faturaCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function faturaCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure islemDetayDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function islemDetayDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

destructor faturaGirisDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FhizmetDetaylari)-1 do
    SysUtils.FreeAndNil(FhizmetDetaylari[I]);
  System.SetLength(FhizmetDetaylari, 0);
  inherited Destroy;
end;

procedure faturaGirisDVO.SetyesilKartSevkEdilenBransKodu(Index: Integer; const Astring: string);
begin
  FyesilKartSevkEdilenBransKodu := Astring;
  FyesilKartSevkEdilenBransKodu_Specified := True;
end;

function faturaGirisDVO.yesilKartSevkEdilenBransKodu_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartSevkEdilenBransKodu_Specified;
end;

procedure faturaGirisDVO.SetyesilKartSevkEdilenTesisAdi(Index: Integer; const Astring: string);
begin
  FyesilKartSevkEdilenTesisAdi := Astring;
  FyesilKartSevkEdilenTesisAdi_Specified := True;
end;

function faturaGirisDVO.yesilKartSevkEdilenTesisAdi_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartSevkEdilenTesisAdi_Specified;
end;

procedure faturaGirisDVO.SetyesilKartSevkEdilenTakipTipi(Index: Integer; const Astring: string);
begin
  FyesilKartSevkEdilenTakipTipi := Astring;
  FyesilKartSevkEdilenTakipTipi_Specified := True;
end;

function faturaGirisDVO.yesilKartSevkEdilenTakipTipi_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartSevkEdilenTakipTipi_Specified;
end;

procedure faturaGirisDVO.SetyesilKartSevkEdilenAciklama(Index: Integer; const Astring: string);
begin
  FyesilKartSevkEdilenAciklama := Astring;
  FyesilKartSevkEdilenAciklama_Specified := True;
end;

function faturaGirisDVO.yesilKartSevkEdilenAciklama_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartSevkEdilenAciklama_Specified;
end;

procedure faturaGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function faturaGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

destructor faturaCevapDetayDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FislemDetaylari)-1 do
    SysUtils.FreeAndNil(FislemDetaylari[I]);
  System.SetLength(FislemDetaylari, 0);
  inherited Destroy;
end;

procedure faturaCevapDetayDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function faturaCevapDetayDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure faturaCevapDetayDVO.SetislemDetaylari(Index: Integer; const AArray_Of_islemDetayDVO: Array_Of_islemDetayDVO);
begin
  FislemDetaylari := AArray_Of_islemDetayDVO;
  FislemDetaylari_Specified := True;
end;

function faturaCevapDetayDVO.islemDetaylari_Specified(Index: Integer): boolean;
begin
  Result := FislemDetaylari_Specified;
end;

procedure faturaCevapDetayDVO.SetprotokolNo(Index: Integer; const Astring: string);
begin
  FprotokolNo := Astring;
  FprotokolNo_Specified := True;
end;

function faturaCevapDetayDVO.protokolNo_Specified(Index: Integer): boolean;
begin
  Result := FprotokolNo_Specified;
end;

procedure faturaCevapDetayDVO.SettaburcuKodu(Index: Integer; const Astring: string);
begin
  FtaburcuKodu := Astring;
  FtaburcuKodu_Specified := True;
end;

function faturaCevapDetayDVO.taburcuKodu_Specified(Index: Integer): boolean;
begin
  Result := FtaburcuKodu_Specified;
end;

procedure faturaCevapDetayDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function faturaCevapDetayDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

destructor faturaDetayDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FislemDetaylari)-1 do
    SysUtils.FreeAndNil(FislemDetaylari[I]);
  System.SetLength(FislemDetaylari, 0);
  inherited Destroy;
end;

procedure faturaDetayDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function faturaDetayDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure faturaDetayDVO.SetislemDetaylari(Index: Integer; const AArray_Of_islemDetayDVO: Array_Of_islemDetayDVO);
begin
  FislemDetaylari := AArray_Of_islemDetayDVO;
  FislemDetaylari_Specified := True;
end;

function faturaDetayDVO.islemDetaylari_Specified(Index: Integer): boolean;
begin
  Result := FislemDetaylari_Specified;
end;

destructor faturaOkuCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FfaturaDetaylari)-1 do
    SysUtils.FreeAndNil(FfaturaDetaylari[I]);
  System.SetLength(FfaturaDetaylari, 0);
  inherited Destroy;
end;

procedure faturaOkuCevapDVO.SetfaturaDetaylari(Index: Integer; const AArray_Of_faturaCevapDetayDVO: Array_Of_faturaCevapDetayDVO);
begin
  FfaturaDetaylari := AArray_Of_faturaCevapDetayDVO;
  FfaturaDetaylari_Specified := True;
end;

function faturaOkuCevapDVO.faturaDetaylari_Specified(Index: Integer): boolean;
begin
  Result := FfaturaDetaylari_Specified;
end;

procedure faturaOkuCevapDVO.SetfaturaRefNo(Index: Integer; const Astring: string);
begin
  FfaturaRefNo := Astring;
  FfaturaRefNo_Specified := True;
end;

function faturaOkuCevapDVO.faturaRefNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaRefNo_Specified;
end;

procedure faturaOkuCevapDVO.SetfaturaTarihi(Index: Integer; const Astring: string);
begin
  FfaturaTarihi := Astring;
  FfaturaTarihi_Specified := True;
end;

function faturaOkuCevapDVO.faturaTarihi_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTarihi_Specified;
end;

procedure faturaOkuCevapDVO.SetfaturaTeslimNo(Index: Integer; const Astring: string);
begin
  FfaturaTeslimNo := Astring;
  FfaturaTeslimNo_Specified := True;
end;

function faturaOkuCevapDVO.faturaTeslimNo_Specified(Index: Integer): boolean;
begin
  Result := FfaturaTeslimNo_Specified;
end;

procedure faturaOkuCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function faturaOkuCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure faturaOkuCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function faturaOkuCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

initialization
  { FaturaKayitIslemleri }
  InvRegistry.RegisterInterface(TypeInfo(FaturaKayitIslemleri), 'http://servisler.ws.gss.sgk.gov.tr', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(FaturaKayitIslemleri), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(FaturaKayitIslemleri), ioDocument);
  { FaturaKayitIslemleri.faturaKayit }
  InvRegistry.RegisterMethodInfo(TypeInfo(FaturaKayitIslemleri), 'faturaKayit', '',
                                 '[ReturnName="faturaKayitReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaKayit', 'faturaGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaKayit', 'faturaKayitReturn', '',
                                '', IS_UNQL);
  { FaturaKayitIslemleri.faturaIptal }
  InvRegistry.RegisterMethodInfo(TypeInfo(FaturaKayitIslemleri), 'faturaIptal', '',
                                 '[ReturnName="faturaIptalReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaIptal', 'faturaIptalGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaIptal', 'faturaIptalReturn', '',
                                '', IS_UNQL);
  { FaturaKayitIslemleri.faturaOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(FaturaKayitIslemleri), 'faturaOku', '',
                                 '[ReturnName="faturaOkuReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaOku', 'faturaOkuGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaOku', 'faturaOkuReturn', '',
                                '', IS_UNQL);
  { FaturaKayitIslemleri.faturaTutarOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(FaturaKayitIslemleri), 'faturaTutarOku', '',
                                 '[ReturnName="faturaTutarOkuReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaTutarOku', 'faturaOkuGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(FaturaKayitIslemleri), 'faturaTutarOku', 'faturaTutarOkuReturn', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_hizmetDetayDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_hizmetDetayDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_faturaIptalHataliKayitDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_faturaIptalHataliKayitDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_faturaCevapDetayDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_faturaCevapDetayDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_faturaDetayDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_faturaDetayDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_faturaHataDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_faturaHataDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_islemDetayDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_islemDetayDVO');
  RemClassRegistry.RegisterXSClass(hizmetDetayDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetDetayDVO');
  RemClassRegistry.RegisterXSClass(faturaHataDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaHataDVO');
  RemClassRegistry.RegisterXSClass(faturaIptalHataliKayitDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaIptalHataliKayitDVO');
  RemClassRegistry.RegisterXSClass(faturaIptalGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaIptalGirisDVO');
  RemClassRegistry.RegisterXSClass(faturaIptalCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaIptalCevapDVO');
  RemClassRegistry.RegisterXSClass(faturaOkuGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaOkuGirisDVO');
  RemClassRegistry.RegisterXSClass(faturaCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaCevapDVO');
  RemClassRegistry.RegisterXSClass(islemDetayDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'islemDetayDVO');
  RemClassRegistry.RegisterXSClass(faturaGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaGirisDVO');
  RemClassRegistry.RegisterXSClass(faturaCevapDetayDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaCevapDetayDVO');
  RemClassRegistry.RegisterXSClass(faturaDetayDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaDetayDVO');
  RemClassRegistry.RegisterXSClass(faturaOkuCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'faturaOkuCevapDVO');

end.