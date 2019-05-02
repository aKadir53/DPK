// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Projeler\MedulaServiceWSDL\hastaKabulIslemleriWS.wsdl
//  >Import : D:\Projeler\MedulaServiceWSDL\hastaKabulIslemleriWS.wsdl>0
//  >Import : D:\Projeler\MedulaServiceWSDL\hastaKabulIslemleriWS.xsd
// Encoding : utf-8
// Version  : 1.0
// (17.10.2018 10:52:28 - - $Rev: 45757 $)
// ************************************************************************ //

unit hastaKabulIslemleriWS;

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
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]

  sigortaliAdliGecmisDVO = class;               { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaBilgileriDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipSilCevapDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  provizyonCevapDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  Exception            = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[Flt][GblElm] }
  takipSilGirisDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipDVO             = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipOkuGirisDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  provizyonGirisDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  yeniDoganBilgisiDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  mustehaklikGirisDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  basvuruTakipOkuCevapDVO = class;              { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  basvuruTakipDVO      = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  mustehaklikCevapDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  basvuruTakipOkuDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaYatisOkuDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  yesilKartliHastaSevkBilgileriDVO = class;     { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  Exception2           = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  yesilKartliSevkliHastaGirisDVO = class;       { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  yesilKartliSevkliHastaCevapDVO = class;       { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  sevkBildirGirisDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  sevkBildirSonucDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tedaviTuruDegistirGirisDVO = class;           { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tedaviTuruDegistirCevapDVO = class;           { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaCikisIptalDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  provizyonDegistirGirisDVO = class;            { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  provizyonDegistirCevapDVO = class;            { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaYatisOkuCevapDVO = class;                { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  basvuruYatisBilgileriDVO = class;             { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipTipiDegistirGirisDVO = class;            { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  takipTipiDegistirCevapDVO = class;            { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaCikisDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaCikisCevapDVO   = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }

  Array_Of_yesilKartliHastaSevkBilgileriDVO = array of yesilKartliHastaSevkBilgileriDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_basvuruTakipDVO = array of basvuruTakipDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_sigortaliAdliGecmisDVO = array of sigortaliAdliGecmisDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_basvuruYatisBilgileriDVO = array of basvuruYatisBilgileriDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : sigortaliAdliGecmisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  sigortaliAdliGecmisDVO = class(TRemotable)
  private
    FtckNo: string;
    FtckNo_Specified: boolean;
    FprovTipi: string;
    FprovTipi_Specified: boolean;
    FprovTarihi: string;
    FprovTarihi_Specified: boolean;
    FvakaTarihi: string;
    FvakaTarihi_Specified: boolean;
    FplakaNo: string;
    FplakaNo_Specified: boolean;
    procedure SettckNo(Index: Integer; const Astring: string);
    function  tckNo_Specified(Index: Integer): boolean;
    procedure SetprovTipi(Index: Integer; const Astring: string);
    function  provTipi_Specified(Index: Integer): boolean;
    procedure SetprovTarihi(Index: Integer; const Astring: string);
    function  provTarihi_Specified(Index: Integer): boolean;
    procedure SetvakaTarihi(Index: Integer; const Astring: string);
    function  vakaTarihi_Specified(Index: Integer): boolean;
    procedure SetplakaNo(Index: Integer; const Astring: string);
    function  plakaNo_Specified(Index: Integer): boolean;
  published
    property tckNo:      string  Index (IS_OPTN or IS_UNQL) read FtckNo write SettckNo stored tckNo_Specified;
    property provTipi:   string  Index (IS_OPTN or IS_UNQL) read FprovTipi write SetprovTipi stored provTipi_Specified;
    property provTarihi: string  Index (IS_OPTN or IS_UNQL) read FprovTarihi write SetprovTarihi stored provTarihi_Specified;
    property vakaTarihi: string  Index (IS_OPTN or IS_UNQL) read FvakaTarihi write SetvakaTarihi stored vakaTarihi_Specified;
    property plakaNo:    string  Index (IS_OPTN or IS_UNQL) read FplakaNo write SetplakaNo stored plakaNo_Specified;
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
  // XML       : takipSilCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipSilCevapDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property takipNo:     string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property sonucKodu:   string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : provizyonCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  provizyonCevapDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FhastaBilgileri: hastaBilgileriDVO;
    FhastaBilgileri_Specified: boolean;
    FsigortaliAdliGecmisi: Array_Of_sigortaliAdliGecmisDVO;
    FsigortaliAdliGecmisi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SethastaBilgileri(Index: Integer; const AhastaBilgileriDVO: hastaBilgileriDVO);
    function  hastaBilgileri_Specified(Index: Integer): boolean;
    procedure SetsigortaliAdliGecmisi(Index: Integer; const AArray_Of_sigortaliAdliGecmisDVO: Array_Of_sigortaliAdliGecmisDVO);
    function  sigortaliAdliGecmisi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property takipNo:              string                           Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property hastaBasvuruNo:       string                           Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property hastaBilgileri:       hastaBilgileriDVO                Index (IS_OPTN or IS_UNQL) read FhastaBilgileri write SethastaBilgileri stored hastaBilgileri_Specified;
    property sigortaliAdliGecmisi: Array_Of_sigortaliAdliGecmisDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FsigortaliAdliGecmisi write SetsigortaliAdliGecmisi stored sigortaliAdliGecmisi_Specified;
    property sonucKodu:            string                           Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:          string                           Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <element>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // Info      : Fault
  // Base Types: Exception
  // ************************************************************************ //
  Exception = class(ERemotableException)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : takipSilGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipSilGirisDVO = class(TRemotable)
  private
    FsaglikTesisKodu: Integer;
    FtakipNo: string;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property takipNo:         string   Index (IS_UNQL) read FtakipNo write FtakipNo;
    property ktsHbysKodu:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
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
  // XML       : takipOkuGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipOkuGirisDVO = class(TRemotable)
  private
    FtakipNo: string;
    FyeniTedaviTipi: Integer;
    FsaglikTesisKodu: Integer;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property takipNo:         string   Index (IS_UNQL) read FtakipNo write FtakipNo;
    property yeniTedaviTipi:  Integer  Index (IS_NLBL or IS_UNQL) read FyeniTedaviTipi write FyeniTedaviTipi;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property ktsHbysKodu:     string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : provizyonGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  provizyonGirisDVO = class(TRemotable)
  private
    FhastaTCKimlikNo: string;
    FprovizyonTarihi: string;
    FsaglikTesisKodu: Integer;
    FbransKodu: string;
    FprovizyonTipi: string;
    FtedaviTuru: string;
    FtedaviTipi: string;
    FtakipTipi: string;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FistisnaiHal: string;
    FistisnaiHal_Specified: boolean;
    FyatisBitisTarihi: string;
    FyatisBitisTarihi_Specified: boolean;
    FyeniDoganBilgisi: yeniDoganBilgisiDVO;
    FyeniDoganBilgisi_Specified: boolean;
    FdonorTCKimlikNo: string;
    FdonorTCKimlikNo_Specified: boolean;
    FyesilKartSevkEdenTesisKodu: Integer;
    FyesilKartSevkEdenTedaviTipi: Integer;
    FyesilKartSevkEdenTakipTipi: string;
    FyesilKartSevkEdenTakipTipi_Specified: boolean;
    FyardimHakkiID: Integer;
    FplakaNo: string;
    FplakaNo_Specified: boolean;
    FdevredilenKurum: string;
    FdevredilenKurum_Specified: boolean;
    FsigortaliTuru: string;
    FsigortaliTuru_Specified: boolean;
    FyakinlikKodu: string;
    FyakinlikKodu_Specified: boolean;
    FhastaTelefon: string;
    FhastaTelefon_Specified: boolean;
    FhastaAdres: string;
    FhastaAdres_Specified: boolean;
    FvakaTarihi: string;
    FvakaTarihi_Specified: boolean;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetistisnaiHal(Index: Integer; const Astring: string);
    function  istisnaiHal_Specified(Index: Integer): boolean;
    procedure SetyatisBitisTarihi(Index: Integer; const Astring: string);
    function  yatisBitisTarihi_Specified(Index: Integer): boolean;
    procedure SetyeniDoganBilgisi(Index: Integer; const AyeniDoganBilgisiDVO: yeniDoganBilgisiDVO);
    function  yeniDoganBilgisi_Specified(Index: Integer): boolean;
    procedure SetdonorTCKimlikNo(Index: Integer; const Astring: string);
    function  donorTCKimlikNo_Specified(Index: Integer): boolean;
    procedure SetyesilKartSevkEdenTakipTipi(Index: Integer; const Astring: string);
    function  yesilKartSevkEdenTakipTipi_Specified(Index: Integer): boolean;
    procedure SetplakaNo(Index: Integer; const Astring: string);
    function  plakaNo_Specified(Index: Integer): boolean;
    procedure SetdevredilenKurum(Index: Integer; const Astring: string);
    function  devredilenKurum_Specified(Index: Integer): boolean;
    procedure SetsigortaliTuru(Index: Integer; const Astring: string);
    function  sigortaliTuru_Specified(Index: Integer): boolean;
    procedure SetyakinlikKodu(Index: Integer; const Astring: string);
    function  yakinlikKodu_Specified(Index: Integer): boolean;
    procedure SethastaTelefon(Index: Integer; const Astring: string);
    function  hastaTelefon_Specified(Index: Integer): boolean;
    procedure SethastaAdres(Index: Integer; const Astring: string);
    function  hastaAdres_Specified(Index: Integer): boolean;
    procedure SetvakaTarihi(Index: Integer; const Astring: string);
    function  vakaTarihi_Specified(Index: Integer): boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property hastaTCKimlikNo:             string               Index (IS_UNQL) read FhastaTCKimlikNo write FhastaTCKimlikNo;
    property provizyonTarihi:             string               Index (IS_UNQL) read FprovizyonTarihi write FprovizyonTarihi;
    property saglikTesisKodu:             Integer              Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property bransKodu:                   string               Index (IS_UNQL) read FbransKodu write FbransKodu;
    property provizyonTipi:               string               Index (IS_UNQL) read FprovizyonTipi write FprovizyonTipi;
    property tedaviTuru:                  string               Index (IS_UNQL) read FtedaviTuru write FtedaviTuru;
    property tedaviTipi:                  string               Index (IS_UNQL) read FtedaviTipi write FtedaviTipi;
    property takipTipi:                   string               Index (IS_UNQL) read FtakipTipi write FtakipTipi;
    property takipNo:                     string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property istisnaiHal:                 string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FistisnaiHal write SetistisnaiHal stored istisnaiHal_Specified;
    property yatisBitisTarihi:            string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyatisBitisTarihi write SetyatisBitisTarihi stored yatisBitisTarihi_Specified;
    property yeniDoganBilgisi:            yeniDoganBilgisiDVO  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyeniDoganBilgisi write SetyeniDoganBilgisi stored yeniDoganBilgisi_Specified;
    property donorTCKimlikNo:             string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdonorTCKimlikNo write SetdonorTCKimlikNo stored donorTCKimlikNo_Specified;
    property yesilKartSevkEdenTesisKodu:  Integer              Index (IS_NLBL or IS_UNQL) read FyesilKartSevkEdenTesisKodu write FyesilKartSevkEdenTesisKodu;
    property yesilKartSevkEdenTedaviTipi: Integer              Index (IS_NLBL or IS_UNQL) read FyesilKartSevkEdenTedaviTipi write FyesilKartSevkEdenTedaviTipi;
    property yesilKartSevkEdenTakipTipi:  string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyesilKartSevkEdenTakipTipi write SetyesilKartSevkEdenTakipTipi stored yesilKartSevkEdenTakipTipi_Specified;
    property yardimHakkiID:               Integer              Index (IS_NLBL or IS_UNQL) read FyardimHakkiID write FyardimHakkiID;
    property plakaNo:                     string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FplakaNo write SetplakaNo stored plakaNo_Specified;
    property devredilenKurum:             string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdevredilenKurum write SetdevredilenKurum stored devredilenKurum_Specified;
    property sigortaliTuru:               string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsigortaliTuru write SetsigortaliTuru stored sigortaliTuru_Specified;
    property yakinlikKodu:                string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyakinlikKodu write SetyakinlikKodu stored yakinlikKodu_Specified;
    property hastaTelefon:                string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaTelefon write SethastaTelefon stored hastaTelefon_Specified;
    property hastaAdres:                  string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhastaAdres write SethastaAdres stored hastaAdres_Specified;
    property vakaTarihi:                  string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FvakaTarihi write SetvakaTarihi stored vakaTarihi_Specified;
    property ktsHbysKodu:                 string               Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : yeniDoganBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  yeniDoganBilgisiDVO = class(TRemotable)
  private
    FdogumTarihi: string;
    FdogumTarihi_Specified: boolean;
    FcocukSira: Integer;
    procedure SetdogumTarihi(Index: Integer; const Astring: string);
    function  dogumTarihi_Specified(Index: Integer): boolean;
  published
    property dogumTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdogumTarihi write SetdogumTarihi stored dogumTarihi_Specified;
    property cocukSira:   Integer  Index (IS_NLBL or IS_UNQL) read FcocukSira write FcocukSira;
  end;



  // ************************************************************************ //
  // XML       : mustehaklikGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  mustehaklikGirisDVO = class(TRemotable)
  private
    FtcKimlikNo: Int64;
    Ftarih: string;
    FsaglikTesisKodu: Integer;
  published
    property tcKimlikNo:      Int64    Index (IS_UNQL) read FtcKimlikNo write FtcKimlikNo;
    property tarih:           string   Index (IS_UNQL) read Ftarih write Ftarih;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : basvuruTakipOkuCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  basvuruTakipOkuCevapDVO = class(TRemotable)
  private
    FbasvuruTakip: Array_Of_basvuruTakipDVO;
    FbasvuruTakip_Specified: boolean;
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetbasvuruTakip(Index: Integer; const AArray_Of_basvuruTakipDVO: Array_Of_basvuruTakipDVO);
    function  basvuruTakip_Specified(Index: Integer): boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property basvuruTakip:   Array_Of_basvuruTakipDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FbasvuruTakip write SetbasvuruTakip stored basvuruTakip_Specified;
    property hastaBasvuruNo: string                    Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property sonucKodu:      string                    Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:    string                    Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : basvuruTakipDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  basvuruTakipDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FtakipFaturaDurumu: string;
    FtakipFaturaDurumu_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SettakipFaturaDurumu(Index: Integer; const Astring: string);
    function  takipFaturaDurumu_Specified(Index: Integer): boolean;
  published
    property takipNo:           string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property takipFaturaDurumu: string  Index (IS_OPTN or IS_UNQL) read FtakipFaturaDurumu write SettakipFaturaDurumu stored takipFaturaDurumu_Specified;
  end;



  // ************************************************************************ //
  // XML       : mustehaklikCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  mustehaklikCevapDVO = class(TRemotable)
  private
    FkapsamTuru: Int64;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property kapsamTuru:  Int64   Index (IS_UNQL) read FkapsamTuru write FkapsamTuru;
    property sonucKodu:   string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : basvuruTakipOkuDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  basvuruTakipOkuDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FsaglikTesisKodu: Integer;
  published
    property hastaBasvuruNo:  string   Index (IS_UNQL) read FhastaBasvuruNo write FhastaBasvuruNo;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : hastaYatisOkuDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaYatisOkuDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FsaglikTesisKodu: Integer;
  published
    property hastaBasvuruNo:  string   Index (IS_UNQL) read FhastaBasvuruNo write FhastaBasvuruNo;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : yesilKartliHastaSevkBilgileriDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  yesilKartliHastaSevkBilgileriDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FsevkEdilmeTarihi: string;
    FsevkEdilmeTarihi_Specified: boolean;
    FsevkEdenTesisKodu: Integer;
    FsevkEdilenBransKodu: string;
    FsevkEdilenBransKodu_Specified: boolean;
    FprovizyonTipi: string;
    FprovizyonTipi_Specified: boolean;
    FtedaviTuru: string;
    FtedaviTuru_Specified: boolean;
    FtedaviTipi: string;
    FtedaviTipi_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FtakipTipi: string;
    FtakipTipi_Specified: boolean;
    FsevkEdilenTesisAdi: string;
    FsevkEdilenTesisAdi_Specified: boolean;
    FsevkEdilenTakipTipi: string;
    FsevkEdilenTakipTipi_Specified: boolean;
    FsevkEdilenTedaviTipi: string;
    FsevkEdilenTedaviTipi_Specified: boolean;
    FsevkAciklama: string;
    FsevkAciklama_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetsevkEdilmeTarihi(Index: Integer; const Astring: string);
    function  sevkEdilmeTarihi_Specified(Index: Integer): boolean;
    procedure SetsevkEdilenBransKodu(Index: Integer; const Astring: string);
    function  sevkEdilenBransKodu_Specified(Index: Integer): boolean;
    procedure SetprovizyonTipi(Index: Integer; const Astring: string);
    function  provizyonTipi_Specified(Index: Integer): boolean;
    procedure SettedaviTuru(Index: Integer; const Astring: string);
    function  tedaviTuru_Specified(Index: Integer): boolean;
    procedure SettedaviTipi(Index: Integer; const Astring: string);
    function  tedaviTipi_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SettakipTipi(Index: Integer; const Astring: string);
    function  takipTipi_Specified(Index: Integer): boolean;
    procedure SetsevkEdilenTesisAdi(Index: Integer; const Astring: string);
    function  sevkEdilenTesisAdi_Specified(Index: Integer): boolean;
    procedure SetsevkEdilenTakipTipi(Index: Integer; const Astring: string);
    function  sevkEdilenTakipTipi_Specified(Index: Integer): boolean;
    procedure SetsevkEdilenTedaviTipi(Index: Integer; const Astring: string);
    function  sevkEdilenTedaviTipi_Specified(Index: Integer): boolean;
    procedure SetsevkAciklama(Index: Integer; const Astring: string);
    function  sevkAciklama_Specified(Index: Integer): boolean;
  published
    property takipNo:              string   Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property sevkEdilmeTarihi:     string   Index (IS_OPTN or IS_UNQL) read FsevkEdilmeTarihi write SetsevkEdilmeTarihi stored sevkEdilmeTarihi_Specified;
    property sevkEdenTesisKodu:    Integer  Index (IS_UNQL) read FsevkEdenTesisKodu write FsevkEdenTesisKodu;
    property sevkEdilenBransKodu:  string   Index (IS_OPTN or IS_UNQL) read FsevkEdilenBransKodu write SetsevkEdilenBransKodu stored sevkEdilenBransKodu_Specified;
    property provizyonTipi:        string   Index (IS_OPTN or IS_UNQL) read FprovizyonTipi write SetprovizyonTipi stored provizyonTipi_Specified;
    property tedaviTuru:           string   Index (IS_OPTN or IS_UNQL) read FtedaviTuru write SettedaviTuru stored tedaviTuru_Specified;
    property tedaviTipi:           string   Index (IS_OPTN or IS_UNQL) read FtedaviTipi write SettedaviTipi stored tedaviTipi_Specified;
    property bransKodu:            string   Index (IS_OPTN or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property takipTipi:            string   Index (IS_OPTN or IS_UNQL) read FtakipTipi write SettakipTipi stored takipTipi_Specified;
    property sevkEdilenTesisAdi:   string   Index (IS_OPTN or IS_UNQL) read FsevkEdilenTesisAdi write SetsevkEdilenTesisAdi stored sevkEdilenTesisAdi_Specified;
    property sevkEdilenTakipTipi:  string   Index (IS_OPTN or IS_UNQL) read FsevkEdilenTakipTipi write SetsevkEdilenTakipTipi stored sevkEdilenTakipTipi_Specified;
    property sevkEdilenTedaviTipi: string   Index (IS_OPTN or IS_UNQL) read FsevkEdilenTedaviTipi write SetsevkEdilenTedaviTipi stored sevkEdilenTedaviTipi_Specified;
    property sevkAciklama:         string   Index (IS_OPTN or IS_UNQL) read FsevkAciklama write SetsevkAciklama stored sevkAciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : Exception, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  Exception2 = class(TRemotable)
  private
    Fmessage_: string;
    Fmessage__Specified: boolean;
    procedure Setmessage_(Index: Integer; const Astring: string);
    function  message__Specified(Index: Integer): boolean;
  published
    property message_: string  Index (IS_OPTN or IS_UNQL) read Fmessage_ write Setmessage_ stored message__Specified;
  end;



  // ************************************************************************ //
  // XML       : yesilKartliSevkliHastaGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  yesilKartliSevkliHastaGirisDVO = class(TRemotable)
  private
    FhastaTCKNo: string;
    FsaglikTesisKodu: Integer;
  published
    property hastaTCKNo:      string   Index (IS_UNQL) read FhastaTCKNo write FhastaTCKNo;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : yesilKartliSevkliHastaCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  yesilKartliSevkliHastaCevapDVO = class(TRemotable)
  private
    FhastaBilgileri: hastaBilgileriDVO;
    FhastaBilgileri_Specified: boolean;
    FyesilKartliHastaSevkBilgileri: Array_Of_yesilKartliHastaSevkBilgileriDVO;
    FyesilKartliHastaSevkBilgileri_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SethastaBilgileri(Index: Integer; const AhastaBilgileriDVO: hastaBilgileriDVO);
    function  hastaBilgileri_Specified(Index: Integer): boolean;
    procedure SetyesilKartliHastaSevkBilgileri(Index: Integer; const AArray_Of_yesilKartliHastaSevkBilgileriDVO: Array_Of_yesilKartliHastaSevkBilgileriDVO);
    function  yesilKartliHastaSevkBilgileri_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property hastaBilgileri:                hastaBilgileriDVO                          Index (IS_OPTN or IS_UNQL) read FhastaBilgileri write SethastaBilgileri stored hastaBilgileri_Specified;
    property yesilKartliHastaSevkBilgileri: Array_Of_yesilKartliHastaSevkBilgileriDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FyesilKartliHastaSevkBilgileri write SetyesilKartliHastaSevkBilgileri stored yesilKartliHastaSevkBilgileri_Specified;
    property sonucKodu:                     string                                     Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:                   string                                     Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : sevkBildirGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  sevkBildirGirisDVO = class(TRemotable)
  private
    FtakipNo: string;
    FsevkEdilisTarihi: string;
    FsaglikTesisKodu: Integer;
    FyesilKartSevkEdilenBransKodu: string;
    FyesilKartSevkEdilenBransKodu_Specified: boolean;
    FyesilKartSevkEdilenTedaviTipi: Integer;
    FyesilKartSevkEdilenTakipTipi: string;
    FyesilKartSevkEdilenTakipTipi_Specified: boolean;
    procedure SetyesilKartSevkEdilenBransKodu(Index: Integer; const Astring: string);
    function  yesilKartSevkEdilenBransKodu_Specified(Index: Integer): boolean;
    procedure SetyesilKartSevkEdilenTakipTipi(Index: Integer; const Astring: string);
    function  yesilKartSevkEdilenTakipTipi_Specified(Index: Integer): boolean;
  published
    property takipNo:                       string   Index (IS_UNQL) read FtakipNo write FtakipNo;
    property sevkEdilisTarihi:              string   Index (IS_UNQL) read FsevkEdilisTarihi write FsevkEdilisTarihi;
    property saglikTesisKodu:               Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property yesilKartSevkEdilenBransKodu:  string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyesilKartSevkEdilenBransKodu write SetyesilKartSevkEdilenBransKodu stored yesilKartSevkEdilenBransKodu_Specified;
    property yesilKartSevkEdilenTedaviTipi: Integer  Index (IS_UNQL) read FyesilKartSevkEdilenTedaviTipi write FyesilKartSevkEdilenTedaviTipi;
    property yesilKartSevkEdilenTakipTipi:  string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyesilKartSevkEdilenTakipTipi write SetyesilKartSevkEdilenTakipTipi stored yesilKartSevkEdilenTakipTipi_Specified;
  end;



  // ************************************************************************ //
  // XML       : sevkBildirSonucDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  sevkBildirSonucDVO = class(TRemotable)
  private
    FsevkEdilisTarihi: string;
    FsevkEdilisTarihi_Specified: boolean;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetsevkEdilisTarihi(Index: Integer; const Astring: string);
    function  sevkEdilisTarihi_Specified(Index: Integer): boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property sevkEdilisTarihi: string  Index (IS_OPTN or IS_UNQL) read FsevkEdilisTarihi write SetsevkEdilisTarihi stored sevkEdilisTarihi_Specified;
    property takipNo:          string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property sonucKodu:        string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:      string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : tedaviTuruDegistirGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tedaviTuruDegistirGirisDVO = class(TRemotable)
  private
    FtakipNo: string;
    FyeniTedaviTuru: string;
    FyatisBitisTarihi: string;
    FyatisBitisTarihi_Specified: boolean;
    FsaglikTesisKodu: Integer;
    procedure SetyatisBitisTarihi(Index: Integer; const Astring: string);
    function  yatisBitisTarihi_Specified(Index: Integer): boolean;
  published
    property takipNo:          string   Index (IS_UNQL) read FtakipNo write FtakipNo;
    property yeniTedaviTuru:   string   Index (IS_UNQL) read FyeniTedaviTuru write FyeniTedaviTuru;
    property yatisBitisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyatisBitisTarihi write SetyatisBitisTarihi stored yatisBitisTarihi_Specified;
    property saglikTesisKodu:  Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : tedaviTuruDegistirCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tedaviTuruDegistirCevapDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FyeniTedaviTuru: string;
    FyeniTedaviTuru_Specified: boolean;
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetyeniTedaviTuru(Index: Integer; const Astring: string);
    function  yeniTedaviTuru_Specified(Index: Integer): boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property takipNo:        string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property yeniTedaviTuru: string  Index (IS_OPTN or IS_UNQL) read FyeniTedaviTuru write SetyeniTedaviTuru stored yeniTedaviTuru_Specified;
    property hastaBasvuruNo: string  Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property sonucKodu:      string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:    string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : hastaCikisIptalDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaCikisIptalDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FhastaCikisTarihi: string;
    FyeniHastaCikisTarihi: string;
    FyeniHastaCikisTarihi_Specified: boolean;
    FsaglikTesisKodu: Integer;
    procedure SetyeniHastaCikisTarihi(Index: Integer; const Astring: string);
    function  yeniHastaCikisTarihi_Specified(Index: Integer): boolean;
  published
    property hastaBasvuruNo:       string   Index (IS_UNQL) read FhastaBasvuruNo write FhastaBasvuruNo;
    property hastaCikisTarihi:     string   Index (IS_UNQL) read FhastaCikisTarihi write FhastaCikisTarihi;
    property yeniHastaCikisTarihi: string   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyeniHastaCikisTarihi write SetyeniHastaCikisTarihi stored yeniHastaCikisTarihi_Specified;
    property saglikTesisKodu:      Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : provizyonDegistirGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  provizyonDegistirGirisDVO = class(TRemotable)
  private
    FtakipNo: string;
    FyeniProvizyonTipi: string;
    FsaglikTesisKodu: Integer;
  published
    property takipNo:           string   Index (IS_UNQL) read FtakipNo write FtakipNo;
    property yeniProvizyonTipi: string   Index (IS_UNQL) read FyeniProvizyonTipi write FyeniProvizyonTipi;
    property saglikTesisKodu:   Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : provizyonDegistirCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  provizyonDegistirCevapDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FyeniProvizyonTipi: string;
    FyeniProvizyonTipi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetyeniProvizyonTipi(Index: Integer; const Astring: string);
    function  yeniProvizyonTipi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property hastaBasvuruNo:    string  Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property takipNo:           string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property yeniProvizyonTipi: string  Index (IS_OPTN or IS_UNQL) read FyeniProvizyonTipi write SetyeniProvizyonTipi stored yeniProvizyonTipi_Specified;
    property sonucKodu:         string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:       string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : hastaYatisOkuCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaYatisOkuCevapDVO = class(TRemotable)
  private
    FdonorTck: string;
    FdonorTck_Specified: boolean;
    FyeniDoganCocukSiraNo: string;
    FyeniDoganCocukSiraNo_Specified: boolean;
    FyeniDoganDogumTarihi: string;
    FyeniDoganDogumTarihi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FbasvuruYatisBilgileri: Array_Of_basvuruYatisBilgileriDVO;
    FbasvuruYatisBilgileri_Specified: boolean;
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FsaglikTesisiKodu: Integer;
    procedure SetdonorTck(Index: Integer; const Astring: string);
    function  donorTck_Specified(Index: Integer): boolean;
    procedure SetyeniDoganCocukSiraNo(Index: Integer; const Astring: string);
    function  yeniDoganCocukSiraNo_Specified(Index: Integer): boolean;
    procedure SetyeniDoganDogumTarihi(Index: Integer; const Astring: string);
    function  yeniDoganDogumTarihi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SetbasvuruYatisBilgileri(Index: Integer; const AArray_Of_basvuruYatisBilgileriDVO: Array_Of_basvuruYatisBilgileriDVO);
    function  basvuruYatisBilgileri_Specified(Index: Integer): boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property donorTck:              string                             Index (IS_OPTN or IS_UNQL) read FdonorTck write SetdonorTck stored donorTck_Specified;
    property yeniDoganCocukSiraNo:  string                             Index (IS_OPTN or IS_UNQL) read FyeniDoganCocukSiraNo write SetyeniDoganCocukSiraNo stored yeniDoganCocukSiraNo_Specified;
    property yeniDoganDogumTarihi:  string                             Index (IS_OPTN or IS_UNQL) read FyeniDoganDogumTarihi write SetyeniDoganDogumTarihi stored yeniDoganDogumTarihi_Specified;
    property sonucKodu:             string                             Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:           string                             Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property basvuruYatisBilgileri: Array_Of_basvuruYatisBilgileriDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FbasvuruYatisBilgileri write SetbasvuruYatisBilgileri stored basvuruYatisBilgileri_Specified;
    property hastaBasvuruNo:        string                             Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property saglikTesisiKodu:      Integer                            Index (IS_UNQL) read FsaglikTesisiKodu write FsaglikTesisiKodu;
  end;



  // ************************************************************************ //
  // XML       : basvuruYatisBilgileriDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  basvuruYatisBilgileriDVO = class(TRemotable)
  private
    FbaslangicTarihi: string;
    FbaslangicTarihi_Specified: boolean;
    FbitisTarihi: string;
    FbitisTarihi_Specified: boolean;
    Fdurum: string;
    Fdurum_Specified: boolean;
    procedure SetbaslangicTarihi(Index: Integer; const Astring: string);
    function  baslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetbitisTarihi(Index: Integer; const Astring: string);
    function  bitisTarihi_Specified(Index: Integer): boolean;
    procedure Setdurum(Index: Integer; const Astring: string);
    function  durum_Specified(Index: Integer): boolean;
  published
    property baslangicTarihi: string  Index (IS_OPTN or IS_UNQL) read FbaslangicTarihi write SetbaslangicTarihi stored baslangicTarihi_Specified;
    property bitisTarihi:     string  Index (IS_OPTN or IS_UNQL) read FbitisTarihi write SetbitisTarihi stored bitisTarihi_Specified;
    property durum:           string  Index (IS_OPTN or IS_UNQL) read Fdurum write Setdurum stored durum_Specified;
  end;



  // ************************************************************************ //
  // XML       : takipTipiDegistirGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipTipiDegistirGirisDVO = class(TRemotable)
  private
    FtakipNo: string;
    FyeniTakiTipi: string;
    FsaglikTesisKodu: Integer;
  published
    property takipNo:         string   Index (IS_UNQL) read FtakipNo write FtakipNo;
    property yeniTakiTipi:    string   Index (IS_UNQL) read FyeniTakiTipi write FyeniTakiTipi;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : takipTipiDegistirCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  takipTipiDegistirCevapDVO = class(TRemotable)
  private
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    FyeniTakipTipi: string;
    FyeniTakipTipi_Specified: boolean;
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure SetyeniTakipTipi(Index: Integer; const Astring: string);
    function  yeniTakipTipi_Specified(Index: Integer): boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property takipNo:        string  Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property yeniTakipTipi:  string  Index (IS_OPTN or IS_UNQL) read FyeniTakipTipi write SetyeniTakipTipi stored yeniTakipTipi_Specified;
    property hastaBasvuruNo: string  Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property sonucKodu:      string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:    string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : hastaCikisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaCikisDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FhastaCikisTarihi: string;
    FsaglikTesisKodu: Integer;
  published
    property hastaBasvuruNo:   string   Index (IS_UNQL) read FhastaBasvuruNo write FhastaBasvuruNo;
    property hastaCikisTarihi: string   Index (IS_UNQL) read FhastaCikisTarihi write FhastaCikisTarihi;
    property saglikTesisKodu:  Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : hastaCikisCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaCikisCevapDVO = class(TRemotable)
  private
    FyatisBaslangicTarihi: string;
    FyatisBaslangicTarihi_Specified: boolean;
    FyatisBitisTarihi: string;
    FyatisBitisTarihi_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetyatisBaslangicTarihi(Index: Integer; const Astring: string);
    function  yatisBaslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetyatisBitisTarihi(Index: Integer; const Astring: string);
    function  yatisBitisTarihi_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property yatisBaslangicTarihi: string  Index (IS_OPTN or IS_UNQL) read FyatisBaslangicTarihi write SetyatisBaslangicTarihi stored yatisBaslangicTarihi_Specified;
    property yatisBitisTarihi:     string  Index (IS_OPTN or IS_UNQL) read FyatisBitisTarihi write SetyatisBitisTarihi stored yatisBitisTarihi_Specified;
    property sonucKodu:            string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:          string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : HastaKabulIslemleriPortBinding
  // service   : HastaKabulIslemleriService
  // port      : HastaKabulIslemleriPort
  // URL       : http://sgkt.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS
  // ************************************************************************ //
  HastaKabulIslemleri = interface(IInvokable)
  ['{5C291AD6-4A7A-1E89-AEB3-D9859250807B}']
    function  hastaKabul(const provizyonGiris: provizyonGirisDVO): provizyonCevapDVO; stdcall;
    function  hastaKabulKimlikDogrulama(const provizyonGiris: provizyonGirisDVO): provizyonCevapDVO; stdcall;
    function  hastaKabulOku(const takipOkuGiris: takipOkuGirisDVO): takipDVO; stdcall;
    function  hastaKabulIptal(const takipSilGiris: takipSilGirisDVO): takipSilCevapDVO; stdcall;
    function  hastaCikisKayit(const hastaCikis: hastaCikisDVO): hastaCikisCevapDVO; stdcall;
    function  hastaCikisIptal(const hastaCikisIptal: hastaCikisIptalDVO): hastaCikisCevapDVO; stdcall;
    function  hastaYatisOku(const hastaYatisOkuDVO: hastaYatisOkuDVO): hastaYatisOkuCevapDVO; stdcall;
    function  basvuruTakipOku(const basvuruTakipOkuDVO: basvuruTakipOkuDVO): basvuruTakipOkuCevapDVO; stdcall;
    function  sevkBildir(const sevkBildirGiris: sevkBildirGirisDVO): sevkBildirSonucDVO; stdcall;
    function  updateTedaviTipi(const takipOkuDVO: takipOkuGirisDVO): takipDVO; stdcall;
    function  updateProvizyonTipi(const provizyonDegistirDVO: provizyonDegistirGirisDVO): provizyonDegistirCevapDVO; stdcall;
    function  getYesilKartliSevkliHasta(const yesilKartliSevkliHastaGiris: yesilKartliSevkliHastaGirisDVO): yesilKartliSevkliHastaCevapDVO; stdcall;
    function  updateTedaviTuru(const tedaviTuruDegistirDVO: tedaviTuruDegistirGirisDVO): tedaviTuruDegistirCevapDVO; stdcall;
    function  updateTakipTipi(const takipTipiDegistirDVO: takipTipiDegistirGirisDVO): takipTipiDegistirCevapDVO; stdcall;
    function  getMustehaklikKapsamKodu(const mustehaklikGirisDVO: mustehaklikGirisDVO): mustehaklikCevapDVO; stdcall;
  end;

function GetHastaKabulIslemleri(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): HastaKabulIslemleri;


implementation
  uses SysUtils;

function GetHastaKabulIslemleri(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): HastaKabulIslemleri;
const
  defWSDL = 'D:\Projeler\MedulaServiceWSDL\hastaKabulIslemleriWS.wsdl';
  defURL  = 'http://sgkt.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';
  defSvc  = 'HastaKabulIslemleriService';
  defPrt  = 'HastaKabulIslemleriPort';
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
    Result := (RIO as HastaKabulIslemleri);
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


procedure sigortaliAdliGecmisDVO.SettckNo(Index: Integer; const Astring: string);
begin
  FtckNo := Astring;
  FtckNo_Specified := True;
end;

function sigortaliAdliGecmisDVO.tckNo_Specified(Index: Integer): boolean;
begin
  Result := FtckNo_Specified;
end;

procedure sigortaliAdliGecmisDVO.SetprovTipi(Index: Integer; const Astring: string);
begin
  FprovTipi := Astring;
  FprovTipi_Specified := True;
end;

function sigortaliAdliGecmisDVO.provTipi_Specified(Index: Integer): boolean;
begin
  Result := FprovTipi_Specified;
end;

procedure sigortaliAdliGecmisDVO.SetprovTarihi(Index: Integer; const Astring: string);
begin
  FprovTarihi := Astring;
  FprovTarihi_Specified := True;
end;

function sigortaliAdliGecmisDVO.provTarihi_Specified(Index: Integer): boolean;
begin
  Result := FprovTarihi_Specified;
end;

procedure sigortaliAdliGecmisDVO.SetvakaTarihi(Index: Integer; const Astring: string);
begin
  FvakaTarihi := Astring;
  FvakaTarihi_Specified := True;
end;

function sigortaliAdliGecmisDVO.vakaTarihi_Specified(Index: Integer): boolean;
begin
  Result := FvakaTarihi_Specified;
end;

procedure sigortaliAdliGecmisDVO.SetplakaNo(Index: Integer; const Astring: string);
begin
  FplakaNo := Astring;
  FplakaNo_Specified := True;
end;

function sigortaliAdliGecmisDVO.plakaNo_Specified(Index: Integer): boolean;
begin
  Result := FplakaNo_Specified;
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

procedure takipSilCevapDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function takipSilCevapDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure takipSilCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function takipSilCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure takipSilCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function takipSilCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor provizyonCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FsigortaliAdliGecmisi)-1 do
    SysUtils.FreeAndNil(FsigortaliAdliGecmisi[I]);
  System.SetLength(FsigortaliAdliGecmisi, 0);
  SysUtils.FreeAndNil(FhastaBilgileri);
  inherited Destroy;
end;

procedure provizyonCevapDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function provizyonCevapDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure provizyonCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function provizyonCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure provizyonCevapDVO.SethastaBilgileri(Index: Integer; const AhastaBilgileriDVO: hastaBilgileriDVO);
begin
  FhastaBilgileri := AhastaBilgileriDVO;
  FhastaBilgileri_Specified := True;
end;

function provizyonCevapDVO.hastaBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FhastaBilgileri_Specified;
end;

procedure provizyonCevapDVO.SetsigortaliAdliGecmisi(Index: Integer; const AArray_Of_sigortaliAdliGecmisDVO: Array_Of_sigortaliAdliGecmisDVO);
begin
  FsigortaliAdliGecmisi := AArray_Of_sigortaliAdliGecmisDVO;
  FsigortaliAdliGecmisi_Specified := True;
end;

function provizyonCevapDVO.sigortaliAdliGecmisi_Specified(Index: Integer): boolean;
begin
  Result := FsigortaliAdliGecmisi_Specified;
end;

procedure provizyonCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function provizyonCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure provizyonCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function provizyonCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure Exception.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

procedure takipSilGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function takipSilGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
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

procedure takipOkuGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function takipOkuGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

destructor provizyonGirisDVO.Destroy;
begin
  SysUtils.FreeAndNil(FyeniDoganBilgisi);
  inherited Destroy;
end;

procedure provizyonGirisDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function provizyonGirisDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure provizyonGirisDVO.SetistisnaiHal(Index: Integer; const Astring: string);
begin
  FistisnaiHal := Astring;
  FistisnaiHal_Specified := True;
end;

function provizyonGirisDVO.istisnaiHal_Specified(Index: Integer): boolean;
begin
  Result := FistisnaiHal_Specified;
end;

procedure provizyonGirisDVO.SetyatisBitisTarihi(Index: Integer; const Astring: string);
begin
  FyatisBitisTarihi := Astring;
  FyatisBitisTarihi_Specified := True;
end;

function provizyonGirisDVO.yatisBitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyatisBitisTarihi_Specified;
end;

procedure provizyonGirisDVO.SetyeniDoganBilgisi(Index: Integer; const AyeniDoganBilgisiDVO: yeniDoganBilgisiDVO);
begin
  FyeniDoganBilgisi := AyeniDoganBilgisiDVO;
  FyeniDoganBilgisi_Specified := True;
end;

function provizyonGirisDVO.yeniDoganBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FyeniDoganBilgisi_Specified;
end;

procedure provizyonGirisDVO.SetdonorTCKimlikNo(Index: Integer; const Astring: string);
begin
  FdonorTCKimlikNo := Astring;
  FdonorTCKimlikNo_Specified := True;
end;

function provizyonGirisDVO.donorTCKimlikNo_Specified(Index: Integer): boolean;
begin
  Result := FdonorTCKimlikNo_Specified;
end;

procedure provizyonGirisDVO.SetyesilKartSevkEdenTakipTipi(Index: Integer; const Astring: string);
begin
  FyesilKartSevkEdenTakipTipi := Astring;
  FyesilKartSevkEdenTakipTipi_Specified := True;
end;

function provizyonGirisDVO.yesilKartSevkEdenTakipTipi_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartSevkEdenTakipTipi_Specified;
end;

procedure provizyonGirisDVO.SetplakaNo(Index: Integer; const Astring: string);
begin
  FplakaNo := Astring;
  FplakaNo_Specified := True;
end;

function provizyonGirisDVO.plakaNo_Specified(Index: Integer): boolean;
begin
  Result := FplakaNo_Specified;
end;

procedure provizyonGirisDVO.SetdevredilenKurum(Index: Integer; const Astring: string);
begin
  FdevredilenKurum := Astring;
  FdevredilenKurum_Specified := True;
end;

function provizyonGirisDVO.devredilenKurum_Specified(Index: Integer): boolean;
begin
  Result := FdevredilenKurum_Specified;
end;

procedure provizyonGirisDVO.SetsigortaliTuru(Index: Integer; const Astring: string);
begin
  FsigortaliTuru := Astring;
  FsigortaliTuru_Specified := True;
end;

function provizyonGirisDVO.sigortaliTuru_Specified(Index: Integer): boolean;
begin
  Result := FsigortaliTuru_Specified;
end;

procedure provizyonGirisDVO.SetyakinlikKodu(Index: Integer; const Astring: string);
begin
  FyakinlikKodu := Astring;
  FyakinlikKodu_Specified := True;
end;

function provizyonGirisDVO.yakinlikKodu_Specified(Index: Integer): boolean;
begin
  Result := FyakinlikKodu_Specified;
end;

procedure provizyonGirisDVO.SethastaTelefon(Index: Integer; const Astring: string);
begin
  FhastaTelefon := Astring;
  FhastaTelefon_Specified := True;
end;

function provizyonGirisDVO.hastaTelefon_Specified(Index: Integer): boolean;
begin
  Result := FhastaTelefon_Specified;
end;

procedure provizyonGirisDVO.SethastaAdres(Index: Integer; const Astring: string);
begin
  FhastaAdres := Astring;
  FhastaAdres_Specified := True;
end;

function provizyonGirisDVO.hastaAdres_Specified(Index: Integer): boolean;
begin
  Result := FhastaAdres_Specified;
end;

procedure provizyonGirisDVO.SetvakaTarihi(Index: Integer; const Astring: string);
begin
  FvakaTarihi := Astring;
  FvakaTarihi_Specified := True;
end;

function provizyonGirisDVO.vakaTarihi_Specified(Index: Integer): boolean;
begin
  Result := FvakaTarihi_Specified;
end;

procedure provizyonGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function provizyonGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

procedure yeniDoganBilgisiDVO.SetdogumTarihi(Index: Integer; const Astring: string);
begin
  FdogumTarihi := Astring;
  FdogumTarihi_Specified := True;
end;

function yeniDoganBilgisiDVO.dogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FdogumTarihi_Specified;
end;

destructor basvuruTakipOkuCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FbasvuruTakip)-1 do
    SysUtils.FreeAndNil(FbasvuruTakip[I]);
  System.SetLength(FbasvuruTakip, 0);
  inherited Destroy;
end;

procedure basvuruTakipOkuCevapDVO.SetbasvuruTakip(Index: Integer; const AArray_Of_basvuruTakipDVO: Array_Of_basvuruTakipDVO);
begin
  FbasvuruTakip := AArray_Of_basvuruTakipDVO;
  FbasvuruTakip_Specified := True;
end;

function basvuruTakipOkuCevapDVO.basvuruTakip_Specified(Index: Integer): boolean;
begin
  Result := FbasvuruTakip_Specified;
end;

procedure basvuruTakipOkuCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function basvuruTakipOkuCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure basvuruTakipOkuCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function basvuruTakipOkuCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure basvuruTakipOkuCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function basvuruTakipOkuCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure basvuruTakipDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function basvuruTakipDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure basvuruTakipDVO.SettakipFaturaDurumu(Index: Integer; const Astring: string);
begin
  FtakipFaturaDurumu := Astring;
  FtakipFaturaDurumu_Specified := True;
end;

function basvuruTakipDVO.takipFaturaDurumu_Specified(Index: Integer): boolean;
begin
  Result := FtakipFaturaDurumu_Specified;
end;

procedure mustehaklikCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function mustehaklikCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure mustehaklikCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function mustehaklikCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetsevkEdilmeTarihi(Index: Integer; const Astring: string);
begin
  FsevkEdilmeTarihi := Astring;
  FsevkEdilmeTarihi_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.sevkEdilmeTarihi_Specified(Index: Integer): boolean;
begin
  Result := FsevkEdilmeTarihi_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetsevkEdilenBransKodu(Index: Integer; const Astring: string);
begin
  FsevkEdilenBransKodu := Astring;
  FsevkEdilenBransKodu_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.sevkEdilenBransKodu_Specified(Index: Integer): boolean;
begin
  Result := FsevkEdilenBransKodu_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetprovizyonTipi(Index: Integer; const Astring: string);
begin
  FprovizyonTipi := Astring;
  FprovizyonTipi_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.provizyonTipi_Specified(Index: Integer): boolean;
begin
  Result := FprovizyonTipi_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SettedaviTuru(Index: Integer; const Astring: string);
begin
  FtedaviTuru := Astring;
  FtedaviTuru_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.tedaviTuru_Specified(Index: Integer): boolean;
begin
  Result := FtedaviTuru_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SettedaviTipi(Index: Integer; const Astring: string);
begin
  FtedaviTipi := Astring;
  FtedaviTipi_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.tedaviTipi_Specified(Index: Integer): boolean;
begin
  Result := FtedaviTipi_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SettakipTipi(Index: Integer; const Astring: string);
begin
  FtakipTipi := Astring;
  FtakipTipi_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.takipTipi_Specified(Index: Integer): boolean;
begin
  Result := FtakipTipi_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetsevkEdilenTesisAdi(Index: Integer; const Astring: string);
begin
  FsevkEdilenTesisAdi := Astring;
  FsevkEdilenTesisAdi_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.sevkEdilenTesisAdi_Specified(Index: Integer): boolean;
begin
  Result := FsevkEdilenTesisAdi_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetsevkEdilenTakipTipi(Index: Integer; const Astring: string);
begin
  FsevkEdilenTakipTipi := Astring;
  FsevkEdilenTakipTipi_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.sevkEdilenTakipTipi_Specified(Index: Integer): boolean;
begin
  Result := FsevkEdilenTakipTipi_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetsevkEdilenTedaviTipi(Index: Integer; const Astring: string);
begin
  FsevkEdilenTedaviTipi := Astring;
  FsevkEdilenTedaviTipi_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.sevkEdilenTedaviTipi_Specified(Index: Integer): boolean;
begin
  Result := FsevkEdilenTedaviTipi_Specified;
end;

procedure yesilKartliHastaSevkBilgileriDVO.SetsevkAciklama(Index: Integer; const Astring: string);
begin
  FsevkAciklama := Astring;
  FsevkAciklama_Specified := True;
end;

function yesilKartliHastaSevkBilgileriDVO.sevkAciklama_Specified(Index: Integer): boolean;
begin
  Result := FsevkAciklama_Specified;
end;

procedure Exception2.Setmessage_(Index: Integer; const Astring: string);
begin
  Fmessage_ := Astring;
  Fmessage__Specified := True;
end;

function Exception2.message__Specified(Index: Integer): boolean;
begin
  Result := Fmessage__Specified;
end;

destructor yesilKartliSevkliHastaCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FyesilKartliHastaSevkBilgileri)-1 do
    SysUtils.FreeAndNil(FyesilKartliHastaSevkBilgileri[I]);
  System.SetLength(FyesilKartliHastaSevkBilgileri, 0);
  SysUtils.FreeAndNil(FhastaBilgileri);
  inherited Destroy;
end;

procedure yesilKartliSevkliHastaCevapDVO.SethastaBilgileri(Index: Integer; const AhastaBilgileriDVO: hastaBilgileriDVO);
begin
  FhastaBilgileri := AhastaBilgileriDVO;
  FhastaBilgileri_Specified := True;
end;

function yesilKartliSevkliHastaCevapDVO.hastaBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FhastaBilgileri_Specified;
end;

procedure yesilKartliSevkliHastaCevapDVO.SetyesilKartliHastaSevkBilgileri(Index: Integer; const AArray_Of_yesilKartliHastaSevkBilgileriDVO: Array_Of_yesilKartliHastaSevkBilgileriDVO);
begin
  FyesilKartliHastaSevkBilgileri := AArray_Of_yesilKartliHastaSevkBilgileriDVO;
  FyesilKartliHastaSevkBilgileri_Specified := True;
end;

function yesilKartliSevkliHastaCevapDVO.yesilKartliHastaSevkBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartliHastaSevkBilgileri_Specified;
end;

procedure yesilKartliSevkliHastaCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function yesilKartliSevkliHastaCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure yesilKartliSevkliHastaCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function yesilKartliSevkliHastaCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure sevkBildirGirisDVO.SetyesilKartSevkEdilenBransKodu(Index: Integer; const Astring: string);
begin
  FyesilKartSevkEdilenBransKodu := Astring;
  FyesilKartSevkEdilenBransKodu_Specified := True;
end;

function sevkBildirGirisDVO.yesilKartSevkEdilenBransKodu_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartSevkEdilenBransKodu_Specified;
end;

procedure sevkBildirGirisDVO.SetyesilKartSevkEdilenTakipTipi(Index: Integer; const Astring: string);
begin
  FyesilKartSevkEdilenTakipTipi := Astring;
  FyesilKartSevkEdilenTakipTipi_Specified := True;
end;

function sevkBildirGirisDVO.yesilKartSevkEdilenTakipTipi_Specified(Index: Integer): boolean;
begin
  Result := FyesilKartSevkEdilenTakipTipi_Specified;
end;

procedure sevkBildirSonucDVO.SetsevkEdilisTarihi(Index: Integer; const Astring: string);
begin
  FsevkEdilisTarihi := Astring;
  FsevkEdilisTarihi_Specified := True;
end;

function sevkBildirSonucDVO.sevkEdilisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FsevkEdilisTarihi_Specified;
end;

procedure sevkBildirSonucDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function sevkBildirSonucDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure sevkBildirSonucDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function sevkBildirSonucDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure sevkBildirSonucDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function sevkBildirSonucDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure tedaviTuruDegistirGirisDVO.SetyatisBitisTarihi(Index: Integer; const Astring: string);
begin
  FyatisBitisTarihi := Astring;
  FyatisBitisTarihi_Specified := True;
end;

function tedaviTuruDegistirGirisDVO.yatisBitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyatisBitisTarihi_Specified;
end;

procedure tedaviTuruDegistirCevapDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function tedaviTuruDegistirCevapDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure tedaviTuruDegistirCevapDVO.SetyeniTedaviTuru(Index: Integer; const Astring: string);
begin
  FyeniTedaviTuru := Astring;
  FyeniTedaviTuru_Specified := True;
end;

function tedaviTuruDegistirCevapDVO.yeniTedaviTuru_Specified(Index: Integer): boolean;
begin
  Result := FyeniTedaviTuru_Specified;
end;

procedure tedaviTuruDegistirCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function tedaviTuruDegistirCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure tedaviTuruDegistirCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function tedaviTuruDegistirCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure tedaviTuruDegistirCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function tedaviTuruDegistirCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure hastaCikisIptalDVO.SetyeniHastaCikisTarihi(Index: Integer; const Astring: string);
begin
  FyeniHastaCikisTarihi := Astring;
  FyeniHastaCikisTarihi_Specified := True;
end;

function hastaCikisIptalDVO.yeniHastaCikisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyeniHastaCikisTarihi_Specified;
end;

procedure provizyonDegistirCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function provizyonDegistirCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure provizyonDegistirCevapDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function provizyonDegistirCevapDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure provizyonDegistirCevapDVO.SetyeniProvizyonTipi(Index: Integer; const Astring: string);
begin
  FyeniProvizyonTipi := Astring;
  FyeniProvizyonTipi_Specified := True;
end;

function provizyonDegistirCevapDVO.yeniProvizyonTipi_Specified(Index: Integer): boolean;
begin
  Result := FyeniProvizyonTipi_Specified;
end;

procedure provizyonDegistirCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function provizyonDegistirCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure provizyonDegistirCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function provizyonDegistirCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor hastaYatisOkuCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FbasvuruYatisBilgileri)-1 do
    SysUtils.FreeAndNil(FbasvuruYatisBilgileri[I]);
  System.SetLength(FbasvuruYatisBilgileri, 0);
  inherited Destroy;
end;

procedure hastaYatisOkuCevapDVO.SetdonorTck(Index: Integer; const Astring: string);
begin
  FdonorTck := Astring;
  FdonorTck_Specified := True;
end;

function hastaYatisOkuCevapDVO.donorTck_Specified(Index: Integer): boolean;
begin
  Result := FdonorTck_Specified;
end;

procedure hastaYatisOkuCevapDVO.SetyeniDoganCocukSiraNo(Index: Integer; const Astring: string);
begin
  FyeniDoganCocukSiraNo := Astring;
  FyeniDoganCocukSiraNo_Specified := True;
end;

function hastaYatisOkuCevapDVO.yeniDoganCocukSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FyeniDoganCocukSiraNo_Specified;
end;

procedure hastaYatisOkuCevapDVO.SetyeniDoganDogumTarihi(Index: Integer; const Astring: string);
begin
  FyeniDoganDogumTarihi := Astring;
  FyeniDoganDogumTarihi_Specified := True;
end;

function hastaYatisOkuCevapDVO.yeniDoganDogumTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyeniDoganDogumTarihi_Specified;
end;

procedure hastaYatisOkuCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function hastaYatisOkuCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure hastaYatisOkuCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function hastaYatisOkuCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure hastaYatisOkuCevapDVO.SetbasvuruYatisBilgileri(Index: Integer; const AArray_Of_basvuruYatisBilgileriDVO: Array_Of_basvuruYatisBilgileriDVO);
begin
  FbasvuruYatisBilgileri := AArray_Of_basvuruYatisBilgileriDVO;
  FbasvuruYatisBilgileri_Specified := True;
end;

function hastaYatisOkuCevapDVO.basvuruYatisBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FbasvuruYatisBilgileri_Specified;
end;

procedure hastaYatisOkuCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function hastaYatisOkuCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure basvuruYatisBilgileriDVO.SetbaslangicTarihi(Index: Integer; const Astring: string);
begin
  FbaslangicTarihi := Astring;
  FbaslangicTarihi_Specified := True;
end;

function basvuruYatisBilgileriDVO.baslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbaslangicTarihi_Specified;
end;

procedure basvuruYatisBilgileriDVO.SetbitisTarihi(Index: Integer; const Astring: string);
begin
  FbitisTarihi := Astring;
  FbitisTarihi_Specified := True;
end;

function basvuruYatisBilgileriDVO.bitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FbitisTarihi_Specified;
end;

procedure basvuruYatisBilgileriDVO.Setdurum(Index: Integer; const Astring: string);
begin
  Fdurum := Astring;
  Fdurum_Specified := True;
end;

function basvuruYatisBilgileriDVO.durum_Specified(Index: Integer): boolean;
begin
  Result := Fdurum_Specified;
end;

procedure takipTipiDegistirCevapDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function takipTipiDegistirCevapDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure takipTipiDegistirCevapDVO.SetyeniTakipTipi(Index: Integer; const Astring: string);
begin
  FyeniTakipTipi := Astring;
  FyeniTakipTipi_Specified := True;
end;

function takipTipiDegistirCevapDVO.yeniTakipTipi_Specified(Index: Integer): boolean;
begin
  Result := FyeniTakipTipi_Specified;
end;

procedure takipTipiDegistirCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function takipTipiDegistirCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure takipTipiDegistirCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function takipTipiDegistirCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure takipTipiDegistirCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function takipTipiDegistirCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure hastaCikisCevapDVO.SetyatisBaslangicTarihi(Index: Integer; const Astring: string);
begin
  FyatisBaslangicTarihi := Astring;
  FyatisBaslangicTarihi_Specified := True;
end;

function hastaCikisCevapDVO.yatisBaslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyatisBaslangicTarihi_Specified;
end;

procedure hastaCikisCevapDVO.SetyatisBitisTarihi(Index: Integer; const Astring: string);
begin
  FyatisBitisTarihi := Astring;
  FyatisBitisTarihi_Specified := True;
end;

function hastaCikisCevapDVO.yatisBitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyatisBitisTarihi_Specified;
end;

procedure hastaCikisCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function hastaCikisCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure hastaCikisCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function hastaCikisCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

initialization
  { HastaKabulIslemleri }
  InvRegistry.RegisterInterface(TypeInfo(HastaKabulIslemleri), 'http://servisler.ws.gss.sgk.gov.tr', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(HastaKabulIslemleri), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(HastaKabulIslemleri), ioDocument);
  { HastaKabulIslemleri.hastaKabul }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabul', '',
                                 '[ReturnName="hastaKabulReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabul', 'provizyonGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabul', 'hastaKabulReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.hastaKabulKimlikDogrulama }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulKimlikDogrulama', '',
                                 '[ReturnName="hastaKabulKimlikDogrulamaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulKimlikDogrulama', 'provizyonGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulKimlikDogrulama', 'hastaKabulKimlikDogrulamaReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.hastaKabulOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulOku', '',
                                 '[ReturnName="hastaKabulOkuReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulOku', 'takipOkuGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulOku', 'hastaKabulOkuReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.hastaKabulIptal }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulIptal', '',
                                 '[ReturnName="hastaKabulIptalReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulIptal', 'takipSilGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaKabulIptal', 'hastaKabulIptalReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.hastaCikisKayit }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'hastaCikisKayit', '',
                                 '[ReturnName="hastaCikisKayitReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaCikisKayit', 'hastaCikis', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaCikisKayit', 'hastaCikisKayitReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.hastaCikisIptal }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'hastaCikisIptal', '',
                                 '[ReturnName="hastaCikisIptalReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaCikisIptal', 'hastaCikisIptal', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaCikisIptal', 'hastaCikisIptalReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.hastaYatisOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'hastaYatisOku', '',
                                 '[ReturnName="hastaYatisOkuReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaYatisOku', 'hastaYatisOkuDVO', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'hastaYatisOku', 'hastaYatisOkuReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.basvuruTakipOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'basvuruTakipOku', '',
                                 '[ReturnName="basvuruTakipOkuReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'basvuruTakipOku', 'basvuruTakipOkuDVO', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'basvuruTakipOku', 'basvuruTakipOkuReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.sevkBildir }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'sevkBildir', '',
                                 '[ReturnName="sevkBildirReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'sevkBildir', 'sevkBildirGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'sevkBildir', 'sevkBildirReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.updateTedaviTipi }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'updateTedaviTipi', '',
                                 '[ReturnName="updateTedaviTipiReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateTedaviTipi', 'takipOkuDVO', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateTedaviTipi', 'updateTedaviTipiReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.updateProvizyonTipi }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'updateProvizyonTipi', '',
                                 '[ReturnName="updateProvizyonTipiReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateProvizyonTipi', 'provizyonDegistirDVO', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateProvizyonTipi', 'updateProvizyonTipiReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.getYesilKartliSevkliHasta }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'getYesilKartliSevkliHasta', '',
                                 '[ReturnName="getYesilKartliSevkliHastaReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'getYesilKartliSevkliHasta', 'yesilKartliSevkliHastaGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'getYesilKartliSevkliHasta', 'getYesilKartliSevkliHastaReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.updateTedaviTuru }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'updateTedaviTuru', '',
                                 '[ReturnName="updateTedaviTuruReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateTedaviTuru', 'tedaviTuruDegistirDVO', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateTedaviTuru', 'updateTedaviTuruReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.updateTakipTipi }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'updateTakipTipi', '',
                                 '[ReturnName="updateTakipTipiReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateTakipTipi', 'takipTipiDegistirDVO', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'updateTakipTipi', 'updateTakipTipiReturn', '',
                                '', IS_UNQL);
  { HastaKabulIslemleri.getMustehaklikKapsamKodu }
  InvRegistry.RegisterMethodInfo(TypeInfo(HastaKabulIslemleri), 'getMustehaklikKapsamKodu', '',
                                 '[ReturnName="getMustehaklikKapsamKoduReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'getMustehaklikKapsamKodu', 'mustehaklikGirisDVO', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HastaKabulIslemleri), 'getMustehaklikKapsamKodu', 'getMustehaklikKapsamKoduReturn', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_yesilKartliHastaSevkBilgileriDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_yesilKartliHastaSevkBilgileriDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_basvuruTakipDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_basvuruTakipDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_sigortaliAdliGecmisDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_sigortaliAdliGecmisDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_basvuruYatisBilgileriDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_basvuruYatisBilgileriDVO');
  RemClassRegistry.RegisterXSClass(sigortaliAdliGecmisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'sigortaliAdliGecmisDVO');
  RemClassRegistry.RegisterXSClass(hastaBilgileriDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaBilgileriDVO');
  RemClassRegistry.RegisterXSClass(takipSilCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipSilCevapDVO');
  RemClassRegistry.RegisterXSClass(provizyonCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'provizyonCevapDVO');
  RemClassRegistry.RegisterXSClass(Exception, 'http://servisler.ws.gss.sgk.gov.tr', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(takipSilGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipSilGirisDVO');
  RemClassRegistry.RegisterXSClass(takipDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipDVO');
  RemClassRegistry.RegisterXSClass(takipOkuGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipOkuGirisDVO');
  RemClassRegistry.RegisterXSClass(provizyonGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'provizyonGirisDVO');
  RemClassRegistry.RegisterXSClass(yeniDoganBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'yeniDoganBilgisiDVO');
  RemClassRegistry.RegisterXSClass(mustehaklikGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'mustehaklikGirisDVO');
  RemClassRegistry.RegisterXSClass(basvuruTakipOkuCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'basvuruTakipOkuCevapDVO');
  RemClassRegistry.RegisterXSClass(basvuruTakipDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'basvuruTakipDVO');
  RemClassRegistry.RegisterXSClass(mustehaklikCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'mustehaklikCevapDVO');
  RemClassRegistry.RegisterXSClass(basvuruTakipOkuDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'basvuruTakipOkuDVO');
  RemClassRegistry.RegisterXSClass(hastaYatisOkuDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaYatisOkuDVO');
  RemClassRegistry.RegisterXSClass(yesilKartliHastaSevkBilgileriDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'yesilKartliHastaSevkBilgileriDVO');
  RemClassRegistry.RegisterXSClass(Exception2, 'http://servisler.ws.gss.sgk.gov.tr', 'Exception2', 'Exception');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(Exception2), 'message_', '[ExtName="message"]');
  RemClassRegistry.RegisterXSClass(yesilKartliSevkliHastaGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'yesilKartliSevkliHastaGirisDVO');
  RemClassRegistry.RegisterXSClass(yesilKartliSevkliHastaCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'yesilKartliSevkliHastaCevapDVO');
  RemClassRegistry.RegisterXSClass(sevkBildirGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'sevkBildirGirisDVO');
  RemClassRegistry.RegisterXSClass(sevkBildirSonucDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'sevkBildirSonucDVO');
  RemClassRegistry.RegisterXSClass(tedaviTuruDegistirGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tedaviTuruDegistirGirisDVO');
  RemClassRegistry.RegisterXSClass(tedaviTuruDegistirCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tedaviTuruDegistirCevapDVO');
  RemClassRegistry.RegisterXSClass(hastaCikisIptalDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaCikisIptalDVO');
  RemClassRegistry.RegisterXSClass(provizyonDegistirGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'provizyonDegistirGirisDVO');
  RemClassRegistry.RegisterXSClass(provizyonDegistirCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'provizyonDegistirCevapDVO');
  RemClassRegistry.RegisterXSClass(hastaYatisOkuCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaYatisOkuCevapDVO');
  RemClassRegistry.RegisterXSClass(basvuruYatisBilgileriDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'basvuruYatisBilgileriDVO');
  RemClassRegistry.RegisterXSClass(takipTipiDegistirGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipTipiDegistirGirisDVO');
  RemClassRegistry.RegisterXSClass(takipTipiDegistirCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'takipTipiDegistirCevapDVO');
  RemClassRegistry.RegisterXSClass(hastaCikisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaCikisDVO');
  RemClassRegistry.RegisterXSClass(hastaCikisCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaCikisCevapDVO');

end.
