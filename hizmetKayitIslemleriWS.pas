// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : D:\Projeler\MedulaServiceWSDL\hizmetKayitIslemleriWS.wsdl
//  >Import : D:\Projeler\MedulaServiceWSDL\hizmetKayitIslemleriWS.wsdl>0
//  >Import : D:\Projeler\MedulaServiceWSDL\hizmetKayitIslemleriWS.xsd
// Encoding : utf-8
// Version  : 1.0
// (02.11.2018 11:38:27 - - $Rev: 45757 $)
// ************************************************************************ //

unit hizmetKayitIslemleriWS;

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

  utsKesinlestirmeIptalGirisDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  utsKesinlestirmeIptalCevapDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hizmetDVO            = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hastaYatisBilgisiDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  disBilgisiDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  konsultasyonBilgisiDVO = class;               { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  kanBilgisiDVO        = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  digerIslemBilgisiDVO = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ameliyatveGirisimBilgisiDVO = class;          { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  utsKesinlestirmeKayitCevapDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  utsKesinlestirmeKayitMalzemeDVO = class;      { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hizmetOkuGirisDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hizmetOkuCevapDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hizmetIptalGirisDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hizmetIptalCevapDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hizmetKayitGirisDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hizmetKayitCevapDVO  = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  utsKesinlestirmeSorguCevapDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  utsKesinlestirmeKayitDVO = class;             { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  oncekiIslemBilgisiDVO = class;                { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  utsKesinlestirmeKayitGirisDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  hataliIslemBilgisiDVO = class;                { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  kayitliIslemBilgisiDVO = class;               { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tahlilBilgisiDVO     = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  taniBilgisiDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  muayeneBilgisiDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tahlilSonucDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  utsKesinlestirmeSorguGirisDVO = class;        { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  tetkikveRadyolojiBilgisiDVO = class;          { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  malzemeBilgisiDVO    = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }
  ilacBilgisiDVO       = class;                 { "http://servisler.ws.gss.sgk.gov.tr"[GblCplx] }

  Array_Of_tetkikveRadyolojiBilgisiDVO = array of tetkikveRadyolojiBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_tahlilSonucDVO = array of tahlilSonucDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_tahlilBilgisiDVO = array of tahlilBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_taniBilgisiDVO = array of taniBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_kayitliIslemBilgisiDVO = array of kayitliIslemBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_utsKesinlestirmeKayitMalzemeDVO = array of utsKesinlestirmeKayitMalzemeDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_utsKesinlestirmeKayitDVO = array of utsKesinlestirmeKayitDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_hataliIslemBilgisiDVO = array of hataliIslemBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_malzemeBilgisiDVO = array of malzemeBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_ameliyatveGirisimBilgisiDVO = array of ameliyatveGirisimBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_digerIslemBilgisiDVO = array of digerIslemBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_kanBilgisiDVO = array of kanBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_ilacBilgisiDVO = array of ilacBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_konsultasyonBilgisiDVO = array of konsultasyonBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_disBilgisiDVO = array of disBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }
  Array_Of_hastaYatisBilgisiDVO = array of hastaYatisBilgisiDVO;   { "http://servisler.ws.gss.sgk.gov.tr"[GblUbnd] }


  // ************************************************************************ //
  // XML       : utsKesinlestirmeIptalGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeIptalGirisDVO = class(TRemotable)
  private
    FkullanimBildirimID: string;
    FsaglikTesisKodu: Integer;
  published
    property kullanimBildirimID: string   Index (IS_UNQL) read FkullanimBildirimID write FkullanimBildirimID;
    property saglikTesisKodu:    Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : utsKesinlestirmeIptalCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeIptalCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property sonucKodu:   string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : hizmetDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetDVO = class(TRemotable)
  private
    FtriajBeyani: string;
    FtriajBeyani_Specified: boolean;
    FkanBilgileri: Array_Of_kanBilgisiDVO;
    FkanBilgileri_Specified: boolean;
    FodemeSorguDurum: string;
    FodemeSorguDurum_Specified: boolean;
    FameliyatveGirisimBilgileri: Array_Of_ameliyatveGirisimBilgisiDVO;
    FameliyatveGirisimBilgileri_Specified: boolean;
    FdigerIslemBilgileri: Array_Of_digerIslemBilgisiDVO;
    FdigerIslemBilgileri_Specified: boolean;
    FdisBilgileri: Array_Of_disBilgisiDVO;
    FdisBilgileri_Specified: boolean;
    FhastaYatisBilgileri: Array_Of_hastaYatisBilgisiDVO;
    FhastaYatisBilgileri_Specified: boolean;
    FilacBilgileri: Array_Of_ilacBilgisiDVO;
    FilacBilgileri_Specified: boolean;
    FkonsultasyonBilgileri: Array_Of_konsultasyonBilgisiDVO;
    FkonsultasyonBilgileri_Specified: boolean;
    FmalzemeBilgileri: Array_Of_malzemeBilgisiDVO;
    FmalzemeBilgileri_Specified: boolean;
    FmuayeneBilgisi: muayeneBilgisiDVO;
    FmuayeneBilgisi_Specified: boolean;
    FtahlilBilgileri: Array_Of_tahlilBilgisiDVO;
    FtahlilBilgileri_Specified: boolean;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    Ftanilar: Array_Of_taniBilgisiDVO;
    Ftanilar_Specified: boolean;
    FtetkikveRadyolojiBilgileri: Array_Of_tetkikveRadyolojiBilgisiDVO;
    FtetkikveRadyolojiBilgileri_Specified: boolean;
    procedure SettriajBeyani(Index: Integer; const Astring: string);
    function  triajBeyani_Specified(Index: Integer): boolean;
    procedure SetkanBilgileri(Index: Integer; const AArray_Of_kanBilgisiDVO: Array_Of_kanBilgisiDVO);
    function  kanBilgileri_Specified(Index: Integer): boolean;
    procedure SetodemeSorguDurum(Index: Integer; const Astring: string);
    function  odemeSorguDurum_Specified(Index: Integer): boolean;
    procedure SetameliyatveGirisimBilgileri(Index: Integer; const AArray_Of_ameliyatveGirisimBilgisiDVO: Array_Of_ameliyatveGirisimBilgisiDVO);
    function  ameliyatveGirisimBilgileri_Specified(Index: Integer): boolean;
    procedure SetdigerIslemBilgileri(Index: Integer; const AArray_Of_digerIslemBilgisiDVO: Array_Of_digerIslemBilgisiDVO);
    function  digerIslemBilgileri_Specified(Index: Integer): boolean;
    procedure SetdisBilgileri(Index: Integer; const AArray_Of_disBilgisiDVO: Array_Of_disBilgisiDVO);
    function  disBilgileri_Specified(Index: Integer): boolean;
    procedure SethastaYatisBilgileri(Index: Integer; const AArray_Of_hastaYatisBilgisiDVO: Array_Of_hastaYatisBilgisiDVO);
    function  hastaYatisBilgileri_Specified(Index: Integer): boolean;
    procedure SetilacBilgileri(Index: Integer; const AArray_Of_ilacBilgisiDVO: Array_Of_ilacBilgisiDVO);
    function  ilacBilgileri_Specified(Index: Integer): boolean;
    procedure SetkonsultasyonBilgileri(Index: Integer; const AArray_Of_konsultasyonBilgisiDVO: Array_Of_konsultasyonBilgisiDVO);
    function  konsultasyonBilgileri_Specified(Index: Integer): boolean;
    procedure SetmalzemeBilgileri(Index: Integer; const AArray_Of_malzemeBilgisiDVO: Array_Of_malzemeBilgisiDVO);
    function  malzemeBilgileri_Specified(Index: Integer): boolean;
    procedure SetmuayeneBilgisi(Index: Integer; const AmuayeneBilgisiDVO: muayeneBilgisiDVO);
    function  muayeneBilgisi_Specified(Index: Integer): boolean;
    procedure SettahlilBilgileri(Index: Integer; const AArray_Of_tahlilBilgisiDVO: Array_Of_tahlilBilgisiDVO);
    function  tahlilBilgileri_Specified(Index: Integer): boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
    procedure Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
    function  tanilar_Specified(Index: Integer): boolean;
    procedure SettetkikveRadyolojiBilgileri(Index: Integer; const AArray_Of_tetkikveRadyolojiBilgisiDVO: Array_Of_tetkikveRadyolojiBilgisiDVO);
    function  tetkikveRadyolojiBilgileri_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property triajBeyani:                string                                Index (IS_OPTN or IS_UNQL) read FtriajBeyani write SettriajBeyani stored triajBeyani_Specified;
    property kanBilgileri:               Array_Of_kanBilgisiDVO                Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FkanBilgileri write SetkanBilgileri stored kanBilgileri_Specified;
    property odemeSorguDurum:            string                                Index (IS_OPTN or IS_UNQL) read FodemeSorguDurum write SetodemeSorguDurum stored odemeSorguDurum_Specified;
    property ameliyatveGirisimBilgileri: Array_Of_ameliyatveGirisimBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FameliyatveGirisimBilgileri write SetameliyatveGirisimBilgileri stored ameliyatveGirisimBilgileri_Specified;
    property digerIslemBilgileri:        Array_Of_digerIslemBilgisiDVO         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdigerIslemBilgileri write SetdigerIslemBilgileri stored digerIslemBilgileri_Specified;
    property disBilgileri:               Array_Of_disBilgisiDVO                Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdisBilgileri write SetdisBilgileri stored disBilgileri_Specified;
    property hastaYatisBilgileri:        Array_Of_hastaYatisBilgisiDVO         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FhastaYatisBilgileri write SethastaYatisBilgileri stored hastaYatisBilgileri_Specified;
    property ilacBilgileri:              Array_Of_ilacBilgisiDVO               Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FilacBilgileri write SetilacBilgileri stored ilacBilgileri_Specified;
    property konsultasyonBilgileri:      Array_Of_konsultasyonBilgisiDVO       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FkonsultasyonBilgileri write SetkonsultasyonBilgileri stored konsultasyonBilgileri_Specified;
    property malzemeBilgileri:           Array_Of_malzemeBilgisiDVO            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmalzemeBilgileri write SetmalzemeBilgileri stored malzemeBilgileri_Specified;
    property muayeneBilgisi:             muayeneBilgisiDVO                     Index (IS_OPTN or IS_UNQL) read FmuayeneBilgisi write SetmuayeneBilgisi stored muayeneBilgisi_Specified;
    property tahlilBilgileri:            Array_Of_tahlilBilgisiDVO             Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtahlilBilgileri write SettahlilBilgileri stored tahlilBilgileri_Specified;
    property takipNo:                    string                                Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
    property tanilar:                    Array_Of_taniBilgisiDVO               Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftanilar write Settanilar stored tanilar_Specified;
    property tetkikveRadyolojiBilgileri: Array_Of_tetkikveRadyolojiBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtetkikveRadyolojiBilgileri write SettetkikveRadyolojiBilgileri stored tetkikveRadyolojiBilgileri_Specified;
  end;

  Array_Of_string = array of string;            { "http://www.w3.org/2001/XMLSchema"[GblUbnd] }


  // ************************************************************************ //
  // XML       : hastaYatisBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hastaYatisBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FrefakatciGunSayisi: string;
    FrefakatciGunSayisi_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    FyatisBaslangicTarihi: string;
    FyatisBaslangicTarihi_Specified: boolean;
    FyatisBitisTarihi: string;
    FyatisBitisTarihi_Specified: boolean;
    FyatakKodu: string;
    FyatakKodu_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetrefakatciGunSayisi(Index: Integer; const Astring: string);
    function  refakatciGunSayisi_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure SetyatisBaslangicTarihi(Index: Integer; const Astring: string);
    function  yatisBaslangicTarihi_Specified(Index: Integer): boolean;
    procedure SetyatisBitisTarihi(Index: Integer; const Astring: string);
    function  yatisBitisTarihi_Specified(Index: Integer): boolean;
    procedure SetyatakKodu(Index: Integer; const Astring: string);
    function  yatakKodu_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:       Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property aciklama:             string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property ozelDurum:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property bransKodu:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo:    string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property refakatciGunSayisi:   string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FrefakatciGunSayisi write SetrefakatciGunSayisi stored refakatciGunSayisi_Specified;
    property sutKodu:              string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property yatisBaslangicTarihi: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyatisBaslangicTarihi write SetyatisBaslangicTarihi stored yatisBaslangicTarihi_Specified;
    property yatisBitisTarihi:     string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyatisBitisTarihi write SetyatisBitisTarihi stored yatisBitisTarihi_Specified;
    property yatakKodu:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FyatakKodu write SetyatakKodu stored yatakKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : disBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  disBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FdisTaahhutNo: Integer;
    FayniFarkliKesi: string;
    FayniFarkliKesi_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    Fadet: Integer;
    Fanomali: string;
    Fanomali_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FsagAltCene: string;
    FsagAltCene_Specified: boolean;
    FsagSutAltCene: string;
    FsagSutAltCene_Specified: boolean;
    FsagSutUstCene: string;
    FsagSutUstCene_Specified: boolean;
    FsagUstCene: string;
    FsagUstCene_Specified: boolean;
    FsolAltCene: string;
    FsolAltCene_Specified: boolean;
    FsolSutAltCene: string;
    FsolSutAltCene_Specified: boolean;
    FsolSutUstCene: string;
    FsolSutUstCene_Specified: boolean;
    FsolUstCene: string;
    FsolUstCene_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    FsagAltCeneAnomaliDis: string;
    FsagAltCeneAnomaliDis_Specified: boolean;
    FsagUstCeneAnomaliDis: string;
    FsagUstCeneAnomaliDis_Specified: boolean;
    FsolAltCeneAnomaliDis: string;
    FsolAltCeneAnomaliDis_Specified: boolean;
    FsolUstCeneAnomaliDis: string;
    FsolUstCeneAnomaliDis_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetayniFarkliKesi(Index: Integer; const Astring: string);
    function  ayniFarkliKesi_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure Setanomali(Index: Integer; const Astring: string);
    function  anomali_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetsagAltCene(Index: Integer; const Astring: string);
    function  sagAltCene_Specified(Index: Integer): boolean;
    procedure SetsagSutAltCene(Index: Integer; const Astring: string);
    function  sagSutAltCene_Specified(Index: Integer): boolean;
    procedure SetsagSutUstCene(Index: Integer; const Astring: string);
    function  sagSutUstCene_Specified(Index: Integer): boolean;
    procedure SetsagUstCene(Index: Integer; const Astring: string);
    function  sagUstCene_Specified(Index: Integer): boolean;
    procedure SetsolAltCene(Index: Integer; const Astring: string);
    function  solAltCene_Specified(Index: Integer): boolean;
    procedure SetsolSutAltCene(Index: Integer; const Astring: string);
    function  solSutAltCene_Specified(Index: Integer): boolean;
    procedure SetsolSutUstCene(Index: Integer; const Astring: string);
    function  solSutUstCene_Specified(Index: Integer): boolean;
    procedure SetsolUstCene(Index: Integer; const Astring: string);
    function  solUstCene_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure SetsagAltCeneAnomaliDis(Index: Integer; const Astring: string);
    function  sagAltCeneAnomaliDis_Specified(Index: Integer): boolean;
    procedure SetsagUstCeneAnomaliDis(Index: Integer; const Astring: string);
    function  sagUstCeneAnomaliDis_Specified(Index: Integer): boolean;
    procedure SetsolAltCeneAnomaliDis(Index: Integer; const Astring: string);
    function  solAltCeneAnomaliDis_Specified(Index: Integer): boolean;
    procedure SetsolUstCeneAnomaliDis(Index: Integer; const Astring: string);
    function  solUstCeneAnomaliDis_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:       Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property disTaahhutNo:         Integer          Index (IS_NLBL or IS_UNQL) read FdisTaahhutNo write FdisTaahhutNo;
    property ayniFarkliKesi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FayniFarkliKesi write SetayniFarkliKesi stored ayniFarkliKesi_Specified;
    property ozelDurum:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property adet:                 Integer          Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property anomali:              string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fanomali write Setanomali stored anomali_Specified;
    property bransKodu:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo:    string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property sagAltCene:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagAltCene write SetsagAltCene stored sagAltCene_Specified;
    property sagSutAltCene:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagSutAltCene write SetsagSutAltCene stored sagSutAltCene_Specified;
    property sagSutUstCene:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagSutUstCene write SetsagSutUstCene stored sagSutUstCene_Specified;
    property sagUstCene:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagUstCene write SetsagUstCene stored sagUstCene_Specified;
    property solAltCene:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsolAltCene write SetsolAltCene stored solAltCene_Specified;
    property solSutAltCene:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsolSutAltCene write SetsolSutAltCene stored solSutAltCene_Specified;
    property solSutUstCene:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsolSutUstCene write SetsolSutUstCene stored solSutUstCene_Specified;
    property solUstCene:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsolUstCene write SetsolUstCene stored solUstCene_Specified;
    property sutKodu:              string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property sagAltCeneAnomaliDis: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagAltCeneAnomaliDis write SetsagAltCeneAnomaliDis stored sagAltCeneAnomaliDis_Specified;
    property sagUstCeneAnomaliDis: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagUstCeneAnomaliDis write SetsagUstCeneAnomaliDis stored sagUstCeneAnomaliDis_Specified;
    property solAltCeneAnomaliDis: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsolAltCeneAnomaliDis write SetsolAltCeneAnomaliDis stored solAltCeneAnomaliDis_Specified;
    property solUstCeneAnomaliDis: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsolUstCeneAnomaliDis write SetsolUstCeneAnomaliDis stored solUstCeneAnomaliDis_Specified;
  end;



  // ************************************************************************ //
  // XML       : konsultasyonBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  konsultasyonBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property bransKodu:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property sutKodu:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : kanBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  kanBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    Fadet: Integer;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FisbtBilesenNo: string;
    FisbtBilesenNo_Specified: boolean;
    FisbtUniteNo: string;
    FisbtUniteNo_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetisbtBilesenNo(Index: Integer; const Astring: string);
    function  isbtBilesenNo_Specified(Index: Integer): boolean;
    procedure SetisbtUniteNo(Index: Integer; const Astring: string);
    function  isbtUniteNo_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property adet:              Integer          Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property bransKodu:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property sutKodu:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemTarihi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property isbtBilesenNo:     string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FisbtBilesenNo write SetisbtBilesenNo stored isbtBilesenNo_Specified;
    property isbtUniteNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FisbtUniteNo write SetisbtUniteNo stored isbtUniteNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : digerIslemBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  digerIslemBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FayniFarkliKesi: string;
    FayniFarkliKesi_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    Fadet: Integer;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FraporTakipNo: string;
    FraporTakipNo_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetayniFarkliKesi(Index: Integer; const Astring: string);
    function  ayniFarkliKesi_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetraporTakipNo(Index: Integer; const Astring: string);
    function  raporTakipNo_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property ayniFarkliKesi:    string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FayniFarkliKesi write SetayniFarkliKesi stored ayniFarkliKesi_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property adet:              Integer          Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property bransKodu:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property sutKodu:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property drTescilNo:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property raporTakipNo:      string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FraporTakipNo write SetraporTakipNo stored raporTakipNo_Specified;
    property aciklama:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
  end;



  // ************************************************************************ //
  // XML       : ameliyatveGirisimBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ameliyatveGirisimBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    Feuroscore: string;
    Feuroscore_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    Fadet: Integer;
    FayniFarkliKesi: string;
    FayniFarkliKesi_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FsagSol: string;
    FsagSol_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure Seteuroscore(Index: Integer; const Astring: string);
    function  euroscore_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure SetayniFarkliKesi(Index: Integer; const Astring: string);
    function  ayniFarkliKesi_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetsagSol(Index: Integer; const Astring: string);
    function  sagSol_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property euroscore:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Feuroscore write Seteuroscore stored euroscore_Specified;
    property aciklama:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property adet:              Integer          Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property ayniFarkliKesi:    string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FayniFarkliKesi write SetayniFarkliKesi stored ayniFarkliKesi_Specified;
    property bransKodu:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property sagSol:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagSol write SetsagSol stored sagSol_Specified;
    property sutKodu:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : utsKesinlestirmeKayitCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeKayitCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FhataliKayitlar: Array_Of_hataliIslemBilgisiDVO;
    FhataliKayitlar_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SethataliKayitlar(Index: Integer; const AArray_Of_hataliIslemBilgisiDVO: Array_Of_hataliIslemBilgisiDVO);
    function  hataliKayitlar_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonucKodu:      string                          Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:    string                          Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property hataliKayitlar: Array_Of_hataliIslemBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FhataliKayitlar write SethataliKayitlar stored hataliKayitlar_Specified;
  end;



  // ************************************************************************ //
  // XML       : utsKesinlestirmeKayitMalzemeDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeKayitMalzemeDVO = class(TRemotable)
  private
    FhizmetSunucuRefNo: string;
    FtakipNo: string;
  published
    property hizmetSunucuRefNo: string  Index (IS_UNQL) read FhizmetSunucuRefNo write FhizmetSunucuRefNo;
    property takipNo:           string  Index (IS_UNQL) read FtakipNo write FtakipNo;
  end;



  // ************************************************************************ //
  // XML       : hizmetOkuGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetOkuGirisDVO = class(TRemotable)
  private
    FislemSiraNumaralari: Array_Of_string;
    FislemSiraNumaralari_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FtakipNo: string;
    FhizmetSunucuRefNolari: Array_Of_string;
    FhizmetSunucuRefNolari_Specified: boolean;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetislemSiraNumaralari(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  islemSiraNumaralari_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNolari(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  hizmetSunucuRefNolari_Specified(Index: Integer): boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property islemSiraNumaralari:   Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FislemSiraNumaralari write SetislemSiraNumaralari stored islemSiraNumaralari_Specified;
    property saglikTesisKodu:       Integer          Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property takipNo:               string           Index (IS_UNQL) read FtakipNo write FtakipNo;
    property hizmetSunucuRefNolari: Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNolari write SethizmetSunucuRefNolari stored hizmetSunucuRefNolari_Specified;
    property ktsHbysKodu:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : hizmetOkuCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetOkuCevapDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    Fhizmetler: hizmetDVO;
    Fhizmetler_Specified: boolean;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure Sethizmetler(Index: Integer; const AhizmetDVO: hizmetDVO);
    function  hizmetler_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property hastaBasvuruNo: string     Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property hizmetler:      hizmetDVO  Index (IS_OPTN or IS_UNQL) read Fhizmetler write Sethizmetler stored hizmetler_Specified;
    property sonucKodu:      string     Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:    string     Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : hizmetIptalGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetIptalGirisDVO = class(TRemotable)
  private
    FislemSiraNumaralari: Array_Of_string;
    FislemSiraNumaralari_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FtakipNo: string;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SetislemSiraNumaralari(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  islemSiraNumaralari_Specified(Index: Integer): boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  published
    property islemSiraNumaralari: Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FislemSiraNumaralari write SetislemSiraNumaralari stored islemSiraNumaralari_Specified;
    property saglikTesisKodu:     Integer          Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property takipNo:             string           Index (IS_UNQL) read FtakipNo write FtakipNo;
    property ktsHbysKodu:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : hizmetIptalCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetIptalCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
  published
    property sonucKodu:   string  Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji: string  Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
  end;



  // ************************************************************************ //
  // XML       : hizmetKayitGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetKayitGirisDVO = class(TRemotable)
  private
    FtriajBeyani: string;
    FtriajBeyani_Specified: boolean;
    FkanBilgileri: Array_Of_kanBilgisiDVO;
    FkanBilgileri_Specified: boolean;
    FameliyatveGirisimBilgileri: Array_Of_ameliyatveGirisimBilgisiDVO;
    FameliyatveGirisimBilgileri_Specified: boolean;
    FdigerIslemBilgileri: Array_Of_digerIslemBilgisiDVO;
    FdigerIslemBilgileri_Specified: boolean;
    FdisBilgileri: Array_Of_disBilgisiDVO;
    FdisBilgileri_Specified: boolean;
    FhastaBasvuruNo: string;
    FhastaYatisBilgileri: Array_Of_hastaYatisBilgisiDVO;
    FhastaYatisBilgileri_Specified: boolean;
    FilacBilgileri: Array_Of_ilacBilgisiDVO;
    FilacBilgileri_Specified: boolean;
    FkonsultasyonBilgileri: Array_Of_konsultasyonBilgisiDVO;
    FkonsultasyonBilgileri_Specified: boolean;
    FmalzemeBilgileri: Array_Of_malzemeBilgisiDVO;
    FmalzemeBilgileri_Specified: boolean;
    FmuayeneBilgisi: muayeneBilgisiDVO;
    FmuayeneBilgisi_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FtahlilBilgileri: Array_Of_tahlilBilgisiDVO;
    FtahlilBilgileri_Specified: boolean;
    FtakipNo: string;
    Ftanilar: Array_Of_taniBilgisiDVO;
    Ftanilar_Specified: boolean;
    FtetkikveRadyolojiBilgileri: Array_Of_tetkikveRadyolojiBilgisiDVO;
    FtetkikveRadyolojiBilgileri_Specified: boolean;
    FktsHbysKodu: string;
    FktsHbysKodu_Specified: boolean;
    procedure SettriajBeyani(Index: Integer; const Astring: string);
    function  triajBeyani_Specified(Index: Integer): boolean;
    procedure SetkanBilgileri(Index: Integer; const AArray_Of_kanBilgisiDVO: Array_Of_kanBilgisiDVO);
    function  kanBilgileri_Specified(Index: Integer): boolean;
    procedure SetameliyatveGirisimBilgileri(Index: Integer; const AArray_Of_ameliyatveGirisimBilgisiDVO: Array_Of_ameliyatveGirisimBilgisiDVO);
    function  ameliyatveGirisimBilgileri_Specified(Index: Integer): boolean;
    procedure SetdigerIslemBilgileri(Index: Integer; const AArray_Of_digerIslemBilgisiDVO: Array_Of_digerIslemBilgisiDVO);
    function  digerIslemBilgileri_Specified(Index: Integer): boolean;
    procedure SetdisBilgileri(Index: Integer; const AArray_Of_disBilgisiDVO: Array_Of_disBilgisiDVO);
    function  disBilgileri_Specified(Index: Integer): boolean;
    procedure SethastaYatisBilgileri(Index: Integer; const AArray_Of_hastaYatisBilgisiDVO: Array_Of_hastaYatisBilgisiDVO);
    function  hastaYatisBilgileri_Specified(Index: Integer): boolean;
    procedure SetilacBilgileri(Index: Integer; const AArray_Of_ilacBilgisiDVO: Array_Of_ilacBilgisiDVO);
    function  ilacBilgileri_Specified(Index: Integer): boolean;
    procedure SetkonsultasyonBilgileri(Index: Integer; const AArray_Of_konsultasyonBilgisiDVO: Array_Of_konsultasyonBilgisiDVO);
    function  konsultasyonBilgileri_Specified(Index: Integer): boolean;
    procedure SetmalzemeBilgileri(Index: Integer; const AArray_Of_malzemeBilgisiDVO: Array_Of_malzemeBilgisiDVO);
    function  malzemeBilgileri_Specified(Index: Integer): boolean;
    procedure SetmuayeneBilgisi(Index: Integer; const AmuayeneBilgisiDVO: muayeneBilgisiDVO);
    function  muayeneBilgisi_Specified(Index: Integer): boolean;
    procedure SettahlilBilgileri(Index: Integer; const AArray_Of_tahlilBilgisiDVO: Array_Of_tahlilBilgisiDVO);
    function  tahlilBilgileri_Specified(Index: Integer): boolean;
    procedure Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
    function  tanilar_Specified(Index: Integer): boolean;
    procedure SettetkikveRadyolojiBilgileri(Index: Integer; const AArray_Of_tetkikveRadyolojiBilgisiDVO: Array_Of_tetkikveRadyolojiBilgisiDVO);
    function  tetkikveRadyolojiBilgileri_Specified(Index: Integer): boolean;
    procedure SetktsHbysKodu(Index: Integer; const Astring: string);
    function  ktsHbysKodu_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property triajBeyani:                string                                Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtriajBeyani write SettriajBeyani stored triajBeyani_Specified;
    property kanBilgileri:               Array_Of_kanBilgisiDVO                Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FkanBilgileri write SetkanBilgileri stored kanBilgileri_Specified;
    property ameliyatveGirisimBilgileri: Array_Of_ameliyatveGirisimBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FameliyatveGirisimBilgileri write SetameliyatveGirisimBilgileri stored ameliyatveGirisimBilgileri_Specified;
    property digerIslemBilgileri:        Array_Of_digerIslemBilgisiDVO         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdigerIslemBilgileri write SetdigerIslemBilgileri stored digerIslemBilgileri_Specified;
    property disBilgileri:               Array_Of_disBilgisiDVO                Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FdisBilgileri write SetdisBilgileri stored disBilgileri_Specified;
    property hastaBasvuruNo:             string                                Index (IS_UNQL) read FhastaBasvuruNo write FhastaBasvuruNo;
    property hastaYatisBilgileri:        Array_Of_hastaYatisBilgisiDVO         Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FhastaYatisBilgileri write SethastaYatisBilgileri stored hastaYatisBilgileri_Specified;
    property ilacBilgileri:              Array_Of_ilacBilgisiDVO               Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FilacBilgileri write SetilacBilgileri stored ilacBilgileri_Specified;
    property konsultasyonBilgileri:      Array_Of_konsultasyonBilgisiDVO       Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FkonsultasyonBilgileri write SetkonsultasyonBilgileri stored konsultasyonBilgileri_Specified;
    property malzemeBilgileri:           Array_Of_malzemeBilgisiDVO            Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FmalzemeBilgileri write SetmalzemeBilgileri stored malzemeBilgileri_Specified;
    property muayeneBilgisi:             muayeneBilgisiDVO                     Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmuayeneBilgisi write SetmuayeneBilgisi stored muayeneBilgisi_Specified;
    property saglikTesisKodu:            Integer                               Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property tahlilBilgileri:            Array_Of_tahlilBilgisiDVO             Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtahlilBilgileri write SettahlilBilgileri stored tahlilBilgileri_Specified;
    property takipNo:                    string                                Index (IS_UNQL) read FtakipNo write FtakipNo;
    property tanilar:                    Array_Of_taniBilgisiDVO               Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read Ftanilar write Settanilar stored tanilar_Specified;
    property tetkikveRadyolojiBilgileri: Array_Of_tetkikveRadyolojiBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtetkikveRadyolojiBilgileri write SettetkikveRadyolojiBilgileri stored tetkikveRadyolojiBilgileri_Specified;
    property ktsHbysKodu:                string                                Index (IS_OPTN or IS_NLBL or IS_UNQL) read FktsHbysKodu write SetktsHbysKodu stored ktsHbysKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : hizmetKayitCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hizmetKayitCevapDVO = class(TRemotable)
  private
    FhastaBasvuruNo: string;
    FhastaBasvuruNo_Specified: boolean;
    FhataliKayitlar: Array_Of_hataliIslemBilgisiDVO;
    FhataliKayitlar_Specified: boolean;
    FislemBilgileri: Array_Of_kayitliIslemBilgisiDVO;
    FislemBilgileri_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FtakipNo: string;
    FtakipNo_Specified: boolean;
    procedure SethastaBasvuruNo(Index: Integer; const Astring: string);
    function  hastaBasvuruNo_Specified(Index: Integer): boolean;
    procedure SethataliKayitlar(Index: Integer; const AArray_Of_hataliIslemBilgisiDVO: Array_Of_hataliIslemBilgisiDVO);
    function  hataliKayitlar_Specified(Index: Integer): boolean;
    procedure SetislemBilgileri(Index: Integer; const AArray_Of_kayitliIslemBilgisiDVO: Array_Of_kayitliIslemBilgisiDVO);
    function  islemBilgileri_Specified(Index: Integer): boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SettakipNo(Index: Integer; const Astring: string);
    function  takipNo_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property hastaBasvuruNo:  string                           Index (IS_OPTN or IS_UNQL) read FhastaBasvuruNo write SethastaBasvuruNo stored hastaBasvuruNo_Specified;
    property hataliKayitlar:  Array_Of_hataliIslemBilgisiDVO   Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FhataliKayitlar write SethataliKayitlar stored hataliKayitlar_Specified;
    property islemBilgileri:  Array_Of_kayitliIslemBilgisiDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FislemBilgileri write SetislemBilgileri stored islemBilgileri_Specified;
    property saglikTesisKodu: Integer                          Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property sonucKodu:       string                           Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:     string                           Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property takipNo:         string                           Index (IS_OPTN or IS_UNQL) read FtakipNo write SettakipNo stored takipNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : utsKesinlestirmeSorguCevapDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeSorguCevapDVO = class(TRemotable)
  private
    FsonucKodu: string;
    FsonucKodu_Specified: boolean;
    FsonucMesaji: string;
    FsonucMesaji_Specified: boolean;
    FutsKesinlestirmeKayitDVO: Array_Of_utsKesinlestirmeKayitDVO;
    FutsKesinlestirmeKayitDVO_Specified: boolean;
    procedure SetsonucKodu(Index: Integer; const Astring: string);
    function  sonucKodu_Specified(Index: Integer): boolean;
    procedure SetsonucMesaji(Index: Integer; const Astring: string);
    function  sonucMesaji_Specified(Index: Integer): boolean;
    procedure SetutsKesinlestirmeKayitDVO(Index: Integer; const AArray_Of_utsKesinlestirmeKayitDVO: Array_Of_utsKesinlestirmeKayitDVO);
    function  utsKesinlestirmeKayitDVO_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property sonucKodu:                string                             Index (IS_OPTN or IS_UNQL) read FsonucKodu write SetsonucKodu stored sonucKodu_Specified;
    property sonucMesaji:              string                             Index (IS_OPTN or IS_UNQL) read FsonucMesaji write SetsonucMesaji stored sonucMesaji_Specified;
    property utsKesinlestirmeKayitDVO: Array_Of_utsKesinlestirmeKayitDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FutsKesinlestirmeKayitDVO write SetutsKesinlestirmeKayitDVO stored utsKesinlestirmeKayitDVO_Specified;
  end;



  // ************************************************************************ //
  // XML       : utsKesinlestirmeKayitDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeKayitDVO = class(TRemotable)
  private
    FkullanimBildirimID: string;
    FTCKimlikNo: string;
    FseriNo: string;
    FseriNo_Specified: boolean;
    FlotNo: string;
    FlotNo_Specified: boolean;
    FhizmetSunucuReferansNo: string;
    FtakipNo: string;
    FsaglikTesisKodu: Integer;
    Fdurum: string;
    procedure SetseriNo(Index: Integer; const Astring: string);
    function  seriNo_Specified(Index: Integer): boolean;
    procedure SetlotNo(Index: Integer; const Astring: string);
    function  lotNo_Specified(Index: Integer): boolean;
  published
    property kullanimBildirimID:     string   Index (IS_UNQL) read FkullanimBildirimID write FkullanimBildirimID;
    property TCKimlikNo:             string   Index (IS_UNQL) read FTCKimlikNo write FTCKimlikNo;
    property seriNo:                 string   Index (IS_OPTN or IS_UNQL) read FseriNo write SetseriNo stored seriNo_Specified;
    property lotNo:                  string   Index (IS_OPTN or IS_UNQL) read FlotNo write SetlotNo stored lotNo_Specified;
    property hizmetSunucuReferansNo: string   Index (IS_UNQL) read FhizmetSunucuReferansNo write FhizmetSunucuReferansNo;
    property takipNo:                string   Index (IS_UNQL) read FtakipNo write FtakipNo;
    property saglikTesisKodu:        Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property durum:                  string   Index (IS_UNQL) read Fdurum write Fdurum;
  end;



  // ************************************************************************ //
  // XML       : oncekiIslemBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  oncekiIslemBilgisiDVO = class(TRemotable)
  private
    FislemAdedi: Integer;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FsaglikTesisKodu: Integer;
    FtesisAdi: string;
    FtesisAdi_Specified: boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SettesisAdi(Index: Integer; const Astring: string);
    function  tesisAdi_Specified(Index: Integer): boolean;
  published
    property islemAdedi:      Integer  Index (IS_UNQL) read FislemAdedi write FislemAdedi;
    property islemTarihi:     string   Index (IS_OPTN or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
    property tesisAdi:        string   Index (IS_OPTN or IS_UNQL) read FtesisAdi write SettesisAdi stored tesisAdi_Specified;
  end;



  // ************************************************************************ //
  // XML       : utsKesinlestirmeKayitGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeKayitGirisDVO = class(TRemotable)
  private
    FutsKesinlestirmeKayitMalzemeDVO: Array_Of_utsKesinlestirmeKayitMalzemeDVO;
    FsaglikTesisKodu: Integer;
  public
    destructor Destroy; override;
  published
    property utsKesinlestirmeKayitMalzemeDVO: Array_Of_utsKesinlestirmeKayitMalzemeDVO  Index (IS_UNBD or IS_UNQL) read FutsKesinlestirmeKayitMalzemeDVO write FutsKesinlestirmeKayitMalzemeDVO;
    property saglikTesisKodu:                 Integer                                   Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : hataliIslemBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  hataliIslemBilgisiDVO = class(TRemotable)
  private
    FhataKodu: string;
    FhataKodu_Specified: boolean;
    FhataMesaji: string;
    FhataMesaji_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FoncekiIslemBilgisi: oncekiIslemBilgisiDVO;
    FoncekiIslemBilgisi_Specified: boolean;
    procedure SethataKodu(Index: Integer; const Astring: string);
    function  hataKodu_Specified(Index: Integer): boolean;
    procedure SethataMesaji(Index: Integer; const Astring: string);
    function  hataMesaji_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetoncekiIslemBilgisi(Index: Integer; const AoncekiIslemBilgisiDVO: oncekiIslemBilgisiDVO);
    function  oncekiIslemBilgisi_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property hataKodu:           string                 Index (IS_OPTN or IS_UNQL) read FhataKodu write SethataKodu stored hataKodu_Specified;
    property hataMesaji:         string                 Index (IS_OPTN or IS_UNQL) read FhataMesaji write SethataMesaji stored hataMesaji_Specified;
    property hizmetSunucuRefNo:  string                 Index (IS_OPTN or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property oncekiIslemBilgisi: oncekiIslemBilgisiDVO  Index (IS_OPTN or IS_UNQL) read FoncekiIslemBilgisi write SetoncekiIslemBilgisi stored oncekiIslemBilgisi_Specified;
  end;



  // ************************************************************************ //
  // XML       : kayitliIslemBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  kayitliIslemBilgisiDVO = class(TRemotable)
  private
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
  published
    property hizmetSunucuRefNo: string  Index (IS_OPTN or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:       string  Index (IS_OPTN or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
  end;



  // ************************************************************************ //
  // XML       : tahlilBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tahlilBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FtahlilSonuclari: Array_Of_tahlilSonucDVO;
    FtahlilSonuclari_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    Fadet: Integer;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SettahlilSonuclari(Index: Integer; const AArray_Of_tahlilSonucDVO: Array_Of_tahlilSonucDVO);
    function  tahlilSonuclari_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cokluOzelDurum:    Array_Of_string          Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property tahlilSonuclari:   Array_Of_tahlilSonucDVO  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FtahlilSonuclari write SettahlilSonuclari stored tahlilSonuclari_Specified;
    property ozelDurum:         string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property adet:              Integer                  Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property bransKodu:         string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:        string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo: string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:       string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:       string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property sutKodu:           string                   Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : taniBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  taniBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FbirincilTani: string;
    FbirincilTani_Specified: boolean;
    FtaniKodu: string;
    FtaniKodu_Specified: boolean;
    FtaniTipi: string;
    FtaniTipi_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetbirincilTani(Index: Integer; const Astring: string);
    function  birincilTani_Specified(Index: Integer): boolean;
    procedure SettaniKodu(Index: Integer; const Astring: string);
    function  taniKodu_Specified(Index: Integer): boolean;
    procedure SettaniTipi(Index: Integer; const Astring: string);
    function  taniTipi_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property birincilTani:      string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbirincilTani write SetbirincilTani stored birincilTani_Specified;
    property taniKodu:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtaniKodu write SettaniKodu stored taniKodu_Specified;
    property taniTipi:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtaniTipi write SettaniTipi stored taniTipi_Specified;
  end;



  // ************************************************************************ //
  // XML       : muayeneBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  muayeneBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FmuayeneTarihi: string;
    FmuayeneTarihi_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetmuayeneTarihi(Index: Integer; const Astring: string);
    function  muayeneTarihi_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property bransKodu:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property muayeneTarihi:     string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmuayeneTarihi write SetmuayeneTarihi stored muayeneTarihi_Specified;
    property sutKodu:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
  end;



  // ************************************************************************ //
  // XML       : tahlilSonucDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tahlilSonucDVO = class(TRemotable)
  private
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    Fsonuc: string;
    Fsonuc_Specified: boolean;
    FtahlilTipi: string;
    FtahlilTipi_Specified: boolean;
    Fbirim: string;
    Fbirim_Specified: boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure Setsonuc(Index: Integer; const Astring: string);
    function  sonuc_Specified(Index: Integer): boolean;
    procedure SettahlilTipi(Index: Integer; const Astring: string);
    function  tahlilTipi_Specified(Index: Integer): boolean;
    procedure Setbirim(Index: Integer; const Astring: string);
    function  birim_Specified(Index: Integer): boolean;
  published
    property islemSiraNo: string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property sonuc:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fsonuc write Setsonuc stored sonuc_Specified;
    property tahlilTipi:  string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read FtahlilTipi write SettahlilTipi stored tahlilTipi_Specified;
    property birim:       string  Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fbirim write Setbirim stored birim_Specified;
  end;



  // ************************************************************************ //
  // XML       : utsKesinlestirmeSorguGirisDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  utsKesinlestirmeSorguGirisDVO = class(TRemotable)
  private
    FtckNo: string;
    FsaglikTesisKodu: Integer;
  published
    property tckNo:           string   Index (IS_UNQL) read FtckNo write FtckNo;
    property saglikTesisKodu: Integer  Index (IS_UNQL) read FsaglikTesisKodu write FsaglikTesisKodu;
  end;



  // ************************************************************************ //
  // XML       : tetkikveRadyolojiBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  tetkikveRadyolojiBilgisiDVO = class(TRemotable)
  private
    Fmodality: string;
    Fmodality_Specified: boolean;
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FsagSol: string;
    FsagSol_Specified: boolean;
    FayniFarkliKesi: string;
    FayniFarkliKesi_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    Fbirim: string;
    Fbirim_Specified: boolean;
    Fsonuc: string;
    Fsonuc_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    Fadet: Integer;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FsutKodu: string;
    FsutKodu_Specified: boolean;
    Faccession: string;
    Faccession_Specified: boolean;
    procedure Setmodality(Index: Integer; const Astring: string);
    function  modality_Specified(Index: Integer): boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetsagSol(Index: Integer; const Astring: string);
    function  sagSol_Specified(Index: Integer): boolean;
    procedure SetayniFarkliKesi(Index: Integer; const Astring: string);
    function  ayniFarkliKesi_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure Setbirim(Index: Integer; const Astring: string);
    function  birim_Specified(Index: Integer): boolean;
    procedure Setsonuc(Index: Integer; const Astring: string);
    function  sonuc_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetsutKodu(Index: Integer; const Astring: string);
    function  sutKodu_Specified(Index: Integer): boolean;
    procedure Setaccession(Index: Integer; const Astring: string);
    function  accession_Specified(Index: Integer): boolean;
  published
    property modality:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fmodality write Setmodality stored modality_Specified;
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property sagSol:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsagSol write SetsagSol stored sagSol_Specified;
    property ayniFarkliKesi:    string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FayniFarkliKesi write SetayniFarkliKesi stored ayniFarkliKesi_Specified;
    property aciklama:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property birim:             string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fbirim write Setbirim stored birim_Specified;
    property sonuc:             string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fsonuc write Setsonuc stored sonuc_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property adet:              Integer          Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property bransKodu:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property sutKodu:           string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FsutKodu write SetsutKodu stored sutKodu_Specified;
    property accession:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faccession write Setaccession stored accession_Specified;
  end;



  // ************************************************************************ //
  // XML       : malzemeBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  malzemeBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    Fkdv: Integer;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    FkatkiPayi: string;
    FkatkiPayi_Specified: boolean;
    FkodsuzMalzemeAdi: string;
    FkodsuzMalzemeAdi_Specified: boolean;
    Fadet: Double;
    Fbarkod: string;
    Fbarkod_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    FkodsuzMalzemeFiyati: Double;
    FmalzemeKodu: string;
    FmalzemeKodu_Specified: boolean;
    FmalzemeTuru: string;
    FmalzemeTuru_Specified: boolean;
    FpaketHaric: string;
    FpaketHaric_Specified: boolean;
    FfirmaTanimlayiciNo: string;
    FfirmaTanimlayiciNo_Specified: boolean;
    FbransKodu: string;
    FbransKodu_Specified: boolean;
    FdrTescilNo: string;
    FdrTescilNo_Specified: boolean;
    FmalzemeSatinAlisTarihi: string;
    FmalzemeSatinAlisTarihi_Specified: boolean;
    FdonorId: string;
    FdonorId_Specified: boolean;
    FihaleKesinlesmeTarihi: string;
    FihaleKesinlesmeTarihi_Specified: boolean;
    FikNoAlimNo: string;
    FikNoAlimNo_Specified: boolean;
    FbayiNo: string;
    FbayiNo_Specified: boolean;
    FseriNo: string;
    FseriNo_Specified: boolean;
    FlotNo: string;
    FlotNo_Specified: boolean;
    FkullanimBildirimID: string;
    FkullanimBildirimID_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetkatkiPayi(Index: Integer; const Astring: string);
    function  katkiPayi_Specified(Index: Integer): boolean;
    procedure SetkodsuzMalzemeAdi(Index: Integer; const Astring: string);
    function  kodsuzMalzemeAdi_Specified(Index: Integer): boolean;
    procedure Setbarkod(Index: Integer; const Astring: string);
    function  barkod_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetmalzemeKodu(Index: Integer; const Astring: string);
    function  malzemeKodu_Specified(Index: Integer): boolean;
    procedure SetmalzemeTuru(Index: Integer; const Astring: string);
    function  malzemeTuru_Specified(Index: Integer): boolean;
    procedure SetpaketHaric(Index: Integer; const Astring: string);
    function  paketHaric_Specified(Index: Integer): boolean;
    procedure SetfirmaTanimlayiciNo(Index: Integer; const Astring: string);
    function  firmaTanimlayiciNo_Specified(Index: Integer): boolean;
    procedure SetbransKodu(Index: Integer; const Astring: string);
    function  bransKodu_Specified(Index: Integer): boolean;
    procedure SetdrTescilNo(Index: Integer; const Astring: string);
    function  drTescilNo_Specified(Index: Integer): boolean;
    procedure SetmalzemeSatinAlisTarihi(Index: Integer; const Astring: string);
    function  malzemeSatinAlisTarihi_Specified(Index: Integer): boolean;
    procedure SetdonorId(Index: Integer; const Astring: string);
    function  donorId_Specified(Index: Integer): boolean;
    procedure SetihaleKesinlesmeTarihi(Index: Integer; const Astring: string);
    function  ihaleKesinlesmeTarihi_Specified(Index: Integer): boolean;
    procedure SetikNoAlimNo(Index: Integer; const Astring: string);
    function  ikNoAlimNo_Specified(Index: Integer): boolean;
    procedure SetbayiNo(Index: Integer; const Astring: string);
    function  bayiNo_Specified(Index: Integer): boolean;
    procedure SetseriNo(Index: Integer; const Astring: string);
    function  seriNo_Specified(Index: Integer): boolean;
    procedure SetlotNo(Index: Integer; const Astring: string);
    function  lotNo_Specified(Index: Integer): boolean;
    procedure SetkullanimBildirimID(Index: Integer; const Astring: string);
    function  kullanimBildirimID_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:         Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property kdv:                    Integer          Index (IS_NLBL or IS_UNQL) read Fkdv write Fkdv;
    property ozelDurum:              string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property katkiPayi:              string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FkatkiPayi write SetkatkiPayi stored katkiPayi_Specified;
    property kodsuzMalzemeAdi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FkodsuzMalzemeAdi write SetkodsuzMalzemeAdi stored kodsuzMalzemeAdi_Specified;
    property adet:                   Double           Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property barkod:                 string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fbarkod write Setbarkod stored barkod_Specified;
    property hizmetSunucuRefNo:      string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property islemSiraNo:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property kodsuzMalzemeFiyati:    Double           Index (IS_NLBL or IS_UNQL) read FkodsuzMalzemeFiyati write FkodsuzMalzemeFiyati;
    property malzemeKodu:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmalzemeKodu write SetmalzemeKodu stored malzemeKodu_Specified;
    property malzemeTuru:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmalzemeTuru write SetmalzemeTuru stored malzemeTuru_Specified;
    property paketHaric:             string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FpaketHaric write SetpaketHaric stored paketHaric_Specified;
    property firmaTanimlayiciNo:     string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FfirmaTanimlayiciNo write SetfirmaTanimlayiciNo stored firmaTanimlayiciNo_Specified;
    property bransKodu:              string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbransKodu write SetbransKodu stored bransKodu_Specified;
    property drTescilNo:             string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdrTescilNo write SetdrTescilNo stored drTescilNo_Specified;
    property malzemeSatinAlisTarihi: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FmalzemeSatinAlisTarihi write SetmalzemeSatinAlisTarihi stored malzemeSatinAlisTarihi_Specified;
    property donorId:                string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FdonorId write SetdonorId stored donorId_Specified;
    property ihaleKesinlesmeTarihi:  string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FihaleKesinlesmeTarihi write SetihaleKesinlesmeTarihi stored ihaleKesinlesmeTarihi_Specified;
    property ikNoAlimNo:             string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FikNoAlimNo write SetikNoAlimNo stored ikNoAlimNo_Specified;
    property bayiNo:                 string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FbayiNo write SetbayiNo stored bayiNo_Specified;
    property seriNo:                 string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FseriNo write SetseriNo stored seriNo_Specified;
    property lotNo:                  string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FlotNo write SetlotNo stored lotNo_Specified;
    property kullanimBildirimID:     string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FkullanimBildirimID write SetkullanimBildirimID stored kullanimBildirimID_Specified;
  end;



  // ************************************************************************ //
  // XML       : ilacBilgisiDVO, global, <complexType>
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // ************************************************************************ //
  ilacBilgisiDVO = class(TRemotable)
  private
    FcokluOzelDurum: Array_Of_string;
    FcokluOzelDurum_Specified: boolean;
    FozelDurum: string;
    FozelDurum_Specified: boolean;
    FpaketHaric: string;
    FpaketHaric_Specified: boolean;
    Faciklama: string;
    Faciklama_Specified: boolean;
    Fadet: Double;
    Fbarkod: string;
    Fbarkod_Specified: boolean;
    FhizmetSunucuRefNo: string;
    FhizmetSunucuRefNo_Specified: boolean;
    FilacTuru: string;
    FilacTuru_Specified: boolean;
    FislemSiraNo: string;
    FislemSiraNo_Specified: boolean;
    FislemTarihi: string;
    FislemTarihi_Specified: boolean;
    Ftutar: Double;
    FraporTakipNo: string;
    FraporTakipNo_Specified: boolean;
    procedure SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
    function  cokluOzelDurum_Specified(Index: Integer): boolean;
    procedure SetozelDurum(Index: Integer; const Astring: string);
    function  ozelDurum_Specified(Index: Integer): boolean;
    procedure SetpaketHaric(Index: Integer; const Astring: string);
    function  paketHaric_Specified(Index: Integer): boolean;
    procedure Setaciklama(Index: Integer; const Astring: string);
    function  aciklama_Specified(Index: Integer): boolean;
    procedure Setbarkod(Index: Integer; const Astring: string);
    function  barkod_Specified(Index: Integer): boolean;
    procedure SethizmetSunucuRefNo(Index: Integer; const Astring: string);
    function  hizmetSunucuRefNo_Specified(Index: Integer): boolean;
    procedure SetilacTuru(Index: Integer; const Astring: string);
    function  ilacTuru_Specified(Index: Integer): boolean;
    procedure SetislemSiraNo(Index: Integer; const Astring: string);
    function  islemSiraNo_Specified(Index: Integer): boolean;
    procedure SetislemTarihi(Index: Integer; const Astring: string);
    function  islemTarihi_Specified(Index: Integer): boolean;
    procedure SetraporTakipNo(Index: Integer; const Astring: string);
    function  raporTakipNo_Specified(Index: Integer): boolean;
  published
    property cokluOzelDurum:    Array_Of_string  Index (IS_OPTN or IS_UNBD or IS_NLBL or IS_UNQL) read FcokluOzelDurum write SetcokluOzelDurum stored cokluOzelDurum_Specified;
    property ozelDurum:         string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FozelDurum write SetozelDurum stored ozelDurum_Specified;
    property paketHaric:        string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FpaketHaric write SetpaketHaric stored paketHaric_Specified;
    property aciklama:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Faciklama write Setaciklama stored aciklama_Specified;
    property adet:              Double           Index (IS_NLBL or IS_UNQL) read Fadet write Fadet;
    property barkod:            string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read Fbarkod write Setbarkod stored barkod_Specified;
    property hizmetSunucuRefNo: string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FhizmetSunucuRefNo write SethizmetSunucuRefNo stored hizmetSunucuRefNo_Specified;
    property ilacTuru:          string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FilacTuru write SetilacTuru stored ilacTuru_Specified;
    property islemSiraNo:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemSiraNo write SetislemSiraNo stored islemSiraNo_Specified;
    property islemTarihi:       string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FislemTarihi write SetislemTarihi stored islemTarihi_Specified;
    property tutar:             Double           Index (IS_NLBL or IS_UNQL) read Ftutar write Ftutar;
    property raporTakipNo:      string           Index (IS_OPTN or IS_NLBL or IS_UNQL) read FraporTakipNo write SetraporTakipNo stored raporTakipNo_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://servisler.ws.gss.sgk.gov.tr
  // soapAction: %operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : HizmetKayitIslemleriServicePortBinding
  // service   : HizmetKayitIslemleriServiceService
  // port      : HizmetKayitIslemleriServicePort
  // URL       : http://sgkt.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS
  // ************************************************************************ //
  HizmetKayitIslemleriService = interface(IInvokable)
  ['{5320E8FA-8C01-D947-CB71-5D8AF0016259}']
    function  hizmetKayit(const hizmetKayitGiris: hizmetKayitGirisDVO): hizmetKayitCevapDVO; stdcall;
    function  hizmetOku(const hizmetOkuGiris: hizmetOkuGirisDVO): hizmetOkuCevapDVO; stdcall;
    function  hizmetIptal(const hizmetIptalGiris: hizmetIptalGirisDVO): hizmetIptalCevapDVO; stdcall;
    function  utsKullanimKesinlestirme(const utsKullanimKesinlestirmeGiris: utsKesinlestirmeKayitGirisDVO): utsKesinlestirmeKayitCevapDVO; stdcall;
    function  utsKullanimKesinlestirmeIptal(const utsKullanimKesinlestirmeIptalGiris: utsKesinlestirmeIptalGirisDVO): utsKesinlestirmeIptalCevapDVO; stdcall;
    function  utsKullanimKesinlestirmeSorgu(const utsKullanimKesinlestirmeSorguGiris: utsKesinlestirmeSorguGirisDVO): utsKesinlestirmeSorguCevapDVO; stdcall;
  end;

function GetHizmetKayitIslemleriService(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): HizmetKayitIslemleriService;


implementation
  uses SysUtils;

function GetHizmetKayitIslemleriService(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): HizmetKayitIslemleriService;
const
  defWSDL = 'D:\Projeler\MedulaServiceWSDL\hizmetKayitIslemleriWS.wsdl';
  defURL  = 'http://sgkt.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';
  defSvc  = 'HizmetKayitIslemleriServiceService';
  defPrt  = 'HizmetKayitIslemleriServicePort';
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
    Result := (RIO as HizmetKayitIslemleriService);
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


procedure utsKesinlestirmeIptalCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function utsKesinlestirmeIptalCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure utsKesinlestirmeIptalCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function utsKesinlestirmeIptalCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor hizmetDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FkanBilgileri)-1 do
    SysUtils.FreeAndNil(FkanBilgileri[I]);
  System.SetLength(FkanBilgileri, 0);
  for I := 0 to System.Length(FameliyatveGirisimBilgileri)-1 do
    SysUtils.FreeAndNil(FameliyatveGirisimBilgileri[I]);
  System.SetLength(FameliyatveGirisimBilgileri, 0);
  for I := 0 to System.Length(FdigerIslemBilgileri)-1 do
    SysUtils.FreeAndNil(FdigerIslemBilgileri[I]);
  System.SetLength(FdigerIslemBilgileri, 0);
  for I := 0 to System.Length(FdisBilgileri)-1 do
    SysUtils.FreeAndNil(FdisBilgileri[I]);
  System.SetLength(FdisBilgileri, 0);
  for I := 0 to System.Length(FhastaYatisBilgileri)-1 do
    SysUtils.FreeAndNil(FhastaYatisBilgileri[I]);
  System.SetLength(FhastaYatisBilgileri, 0);
  for I := 0 to System.Length(FilacBilgileri)-1 do
    SysUtils.FreeAndNil(FilacBilgileri[I]);
  System.SetLength(FilacBilgileri, 0);
  for I := 0 to System.Length(FkonsultasyonBilgileri)-1 do
    SysUtils.FreeAndNil(FkonsultasyonBilgileri[I]);
  System.SetLength(FkonsultasyonBilgileri, 0);
  for I := 0 to System.Length(FmalzemeBilgileri)-1 do
    SysUtils.FreeAndNil(FmalzemeBilgileri[I]);
  System.SetLength(FmalzemeBilgileri, 0);
  for I := 0 to System.Length(FtahlilBilgileri)-1 do
    SysUtils.FreeAndNil(FtahlilBilgileri[I]);
  System.SetLength(FtahlilBilgileri, 0);
  for I := 0 to System.Length(Ftanilar)-1 do
    SysUtils.FreeAndNil(Ftanilar[I]);
  System.SetLength(Ftanilar, 0);
  for I := 0 to System.Length(FtetkikveRadyolojiBilgileri)-1 do
    SysUtils.FreeAndNil(FtetkikveRadyolojiBilgileri[I]);
  System.SetLength(FtetkikveRadyolojiBilgileri, 0);
  SysUtils.FreeAndNil(FmuayeneBilgisi);
  inherited Destroy;
end;

procedure hizmetDVO.SettriajBeyani(Index: Integer; const Astring: string);
begin
  FtriajBeyani := Astring;
  FtriajBeyani_Specified := True;
end;

function hizmetDVO.triajBeyani_Specified(Index: Integer): boolean;
begin
  Result := FtriajBeyani_Specified;
end;

procedure hizmetDVO.SetkanBilgileri(Index: Integer; const AArray_Of_kanBilgisiDVO: Array_Of_kanBilgisiDVO);
begin
  FkanBilgileri := AArray_Of_kanBilgisiDVO;
  FkanBilgileri_Specified := True;
end;

function hizmetDVO.kanBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FkanBilgileri_Specified;
end;

procedure hizmetDVO.SetodemeSorguDurum(Index: Integer; const Astring: string);
begin
  FodemeSorguDurum := Astring;
  FodemeSorguDurum_Specified := True;
end;

function hizmetDVO.odemeSorguDurum_Specified(Index: Integer): boolean;
begin
  Result := FodemeSorguDurum_Specified;
end;

procedure hizmetDVO.SetameliyatveGirisimBilgileri(Index: Integer; const AArray_Of_ameliyatveGirisimBilgisiDVO: Array_Of_ameliyatveGirisimBilgisiDVO);
begin
  FameliyatveGirisimBilgileri := AArray_Of_ameliyatveGirisimBilgisiDVO;
  FameliyatveGirisimBilgileri_Specified := True;
end;

function hizmetDVO.ameliyatveGirisimBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FameliyatveGirisimBilgileri_Specified;
end;

procedure hizmetDVO.SetdigerIslemBilgileri(Index: Integer; const AArray_Of_digerIslemBilgisiDVO: Array_Of_digerIslemBilgisiDVO);
begin
  FdigerIslemBilgileri := AArray_Of_digerIslemBilgisiDVO;
  FdigerIslemBilgileri_Specified := True;
end;

function hizmetDVO.digerIslemBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FdigerIslemBilgileri_Specified;
end;

procedure hizmetDVO.SetdisBilgileri(Index: Integer; const AArray_Of_disBilgisiDVO: Array_Of_disBilgisiDVO);
begin
  FdisBilgileri := AArray_Of_disBilgisiDVO;
  FdisBilgileri_Specified := True;
end;

function hizmetDVO.disBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FdisBilgileri_Specified;
end;

procedure hizmetDVO.SethastaYatisBilgileri(Index: Integer; const AArray_Of_hastaYatisBilgisiDVO: Array_Of_hastaYatisBilgisiDVO);
begin
  FhastaYatisBilgileri := AArray_Of_hastaYatisBilgisiDVO;
  FhastaYatisBilgileri_Specified := True;
end;

function hizmetDVO.hastaYatisBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FhastaYatisBilgileri_Specified;
end;

procedure hizmetDVO.SetilacBilgileri(Index: Integer; const AArray_Of_ilacBilgisiDVO: Array_Of_ilacBilgisiDVO);
begin
  FilacBilgileri := AArray_Of_ilacBilgisiDVO;
  FilacBilgileri_Specified := True;
end;

function hizmetDVO.ilacBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FilacBilgileri_Specified;
end;

procedure hizmetDVO.SetkonsultasyonBilgileri(Index: Integer; const AArray_Of_konsultasyonBilgisiDVO: Array_Of_konsultasyonBilgisiDVO);
begin
  FkonsultasyonBilgileri := AArray_Of_konsultasyonBilgisiDVO;
  FkonsultasyonBilgileri_Specified := True;
end;

function hizmetDVO.konsultasyonBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FkonsultasyonBilgileri_Specified;
end;

procedure hizmetDVO.SetmalzemeBilgileri(Index: Integer; const AArray_Of_malzemeBilgisiDVO: Array_Of_malzemeBilgisiDVO);
begin
  FmalzemeBilgileri := AArray_Of_malzemeBilgisiDVO;
  FmalzemeBilgileri_Specified := True;
end;

function hizmetDVO.malzemeBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FmalzemeBilgileri_Specified;
end;

procedure hizmetDVO.SetmuayeneBilgisi(Index: Integer; const AmuayeneBilgisiDVO: muayeneBilgisiDVO);
begin
  FmuayeneBilgisi := AmuayeneBilgisiDVO;
  FmuayeneBilgisi_Specified := True;
end;

function hizmetDVO.muayeneBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FmuayeneBilgisi_Specified;
end;

procedure hizmetDVO.SettahlilBilgileri(Index: Integer; const AArray_Of_tahlilBilgisiDVO: Array_Of_tahlilBilgisiDVO);
begin
  FtahlilBilgileri := AArray_Of_tahlilBilgisiDVO;
  FtahlilBilgileri_Specified := True;
end;

function hizmetDVO.tahlilBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FtahlilBilgileri_Specified;
end;

procedure hizmetDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function hizmetDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

procedure hizmetDVO.Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
begin
  Ftanilar := AArray_Of_taniBilgisiDVO;
  Ftanilar_Specified := True;
end;

function hizmetDVO.tanilar_Specified(Index: Integer): boolean;
begin
  Result := Ftanilar_Specified;
end;

procedure hizmetDVO.SettetkikveRadyolojiBilgileri(Index: Integer; const AArray_Of_tetkikveRadyolojiBilgisiDVO: Array_Of_tetkikveRadyolojiBilgisiDVO);
begin
  FtetkikveRadyolojiBilgileri := AArray_Of_tetkikveRadyolojiBilgisiDVO;
  FtetkikveRadyolojiBilgileri_Specified := True;
end;

function hizmetDVO.tetkikveRadyolojiBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FtetkikveRadyolojiBilgileri_Specified;
end;

procedure hastaYatisBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function hastaYatisBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure hastaYatisBilgisiDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function hastaYatisBilgisiDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure hastaYatisBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function hastaYatisBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure hastaYatisBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function hastaYatisBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure hastaYatisBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function hastaYatisBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure hastaYatisBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function hastaYatisBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure hastaYatisBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function hastaYatisBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure hastaYatisBilgisiDVO.SetrefakatciGunSayisi(Index: Integer; const Astring: string);
begin
  FrefakatciGunSayisi := Astring;
  FrefakatciGunSayisi_Specified := True;
end;

function hastaYatisBilgisiDVO.refakatciGunSayisi_Specified(Index: Integer): boolean;
begin
  Result := FrefakatciGunSayisi_Specified;
end;

procedure hastaYatisBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function hastaYatisBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure hastaYatisBilgisiDVO.SetyatisBaslangicTarihi(Index: Integer; const Astring: string);
begin
  FyatisBaslangicTarihi := Astring;
  FyatisBaslangicTarihi_Specified := True;
end;

function hastaYatisBilgisiDVO.yatisBaslangicTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyatisBaslangicTarihi_Specified;
end;

procedure hastaYatisBilgisiDVO.SetyatisBitisTarihi(Index: Integer; const Astring: string);
begin
  FyatisBitisTarihi := Astring;
  FyatisBitisTarihi_Specified := True;
end;

function hastaYatisBilgisiDVO.yatisBitisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FyatisBitisTarihi_Specified;
end;

procedure hastaYatisBilgisiDVO.SetyatakKodu(Index: Integer; const Astring: string);
begin
  FyatakKodu := Astring;
  FyatakKodu_Specified := True;
end;

function hastaYatisBilgisiDVO.yatakKodu_Specified(Index: Integer): boolean;
begin
  Result := FyatakKodu_Specified;
end;

procedure disBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function disBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure disBilgisiDVO.SetayniFarkliKesi(Index: Integer; const Astring: string);
begin
  FayniFarkliKesi := Astring;
  FayniFarkliKesi_Specified := True;
end;

function disBilgisiDVO.ayniFarkliKesi_Specified(Index: Integer): boolean;
begin
  Result := FayniFarkliKesi_Specified;
end;

procedure disBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function disBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure disBilgisiDVO.Setanomali(Index: Integer; const Astring: string);
begin
  Fanomali := Astring;
  Fanomali_Specified := True;
end;

function disBilgisiDVO.anomali_Specified(Index: Integer): boolean;
begin
  Result := Fanomali_Specified;
end;

procedure disBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function disBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure disBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function disBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure disBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function disBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure disBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function disBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure disBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function disBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure disBilgisiDVO.SetsagAltCene(Index: Integer; const Astring: string);
begin
  FsagAltCene := Astring;
  FsagAltCene_Specified := True;
end;

function disBilgisiDVO.sagAltCene_Specified(Index: Integer): boolean;
begin
  Result := FsagAltCene_Specified;
end;

procedure disBilgisiDVO.SetsagSutAltCene(Index: Integer; const Astring: string);
begin
  FsagSutAltCene := Astring;
  FsagSutAltCene_Specified := True;
end;

function disBilgisiDVO.sagSutAltCene_Specified(Index: Integer): boolean;
begin
  Result := FsagSutAltCene_Specified;
end;

procedure disBilgisiDVO.SetsagSutUstCene(Index: Integer; const Astring: string);
begin
  FsagSutUstCene := Astring;
  FsagSutUstCene_Specified := True;
end;

function disBilgisiDVO.sagSutUstCene_Specified(Index: Integer): boolean;
begin
  Result := FsagSutUstCene_Specified;
end;

procedure disBilgisiDVO.SetsagUstCene(Index: Integer; const Astring: string);
begin
  FsagUstCene := Astring;
  FsagUstCene_Specified := True;
end;

function disBilgisiDVO.sagUstCene_Specified(Index: Integer): boolean;
begin
  Result := FsagUstCene_Specified;
end;

procedure disBilgisiDVO.SetsolAltCene(Index: Integer; const Astring: string);
begin
  FsolAltCene := Astring;
  FsolAltCene_Specified := True;
end;

function disBilgisiDVO.solAltCene_Specified(Index: Integer): boolean;
begin
  Result := FsolAltCene_Specified;
end;

procedure disBilgisiDVO.SetsolSutAltCene(Index: Integer; const Astring: string);
begin
  FsolSutAltCene := Astring;
  FsolSutAltCene_Specified := True;
end;

function disBilgisiDVO.solSutAltCene_Specified(Index: Integer): boolean;
begin
  Result := FsolSutAltCene_Specified;
end;

procedure disBilgisiDVO.SetsolSutUstCene(Index: Integer; const Astring: string);
begin
  FsolSutUstCene := Astring;
  FsolSutUstCene_Specified := True;
end;

function disBilgisiDVO.solSutUstCene_Specified(Index: Integer): boolean;
begin
  Result := FsolSutUstCene_Specified;
end;

procedure disBilgisiDVO.SetsolUstCene(Index: Integer; const Astring: string);
begin
  FsolUstCene := Astring;
  FsolUstCene_Specified := True;
end;

function disBilgisiDVO.solUstCene_Specified(Index: Integer): boolean;
begin
  Result := FsolUstCene_Specified;
end;

procedure disBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function disBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure disBilgisiDVO.SetsagAltCeneAnomaliDis(Index: Integer; const Astring: string);
begin
  FsagAltCeneAnomaliDis := Astring;
  FsagAltCeneAnomaliDis_Specified := True;
end;

function disBilgisiDVO.sagAltCeneAnomaliDis_Specified(Index: Integer): boolean;
begin
  Result := FsagAltCeneAnomaliDis_Specified;
end;

procedure disBilgisiDVO.SetsagUstCeneAnomaliDis(Index: Integer; const Astring: string);
begin
  FsagUstCeneAnomaliDis := Astring;
  FsagUstCeneAnomaliDis_Specified := True;
end;

function disBilgisiDVO.sagUstCeneAnomaliDis_Specified(Index: Integer): boolean;
begin
  Result := FsagUstCeneAnomaliDis_Specified;
end;

procedure disBilgisiDVO.SetsolAltCeneAnomaliDis(Index: Integer; const Astring: string);
begin
  FsolAltCeneAnomaliDis := Astring;
  FsolAltCeneAnomaliDis_Specified := True;
end;

function disBilgisiDVO.solAltCeneAnomaliDis_Specified(Index: Integer): boolean;
begin
  Result := FsolAltCeneAnomaliDis_Specified;
end;

procedure disBilgisiDVO.SetsolUstCeneAnomaliDis(Index: Integer; const Astring: string);
begin
  FsolUstCeneAnomaliDis := Astring;
  FsolUstCeneAnomaliDis_Specified := True;
end;

function disBilgisiDVO.solUstCeneAnomaliDis_Specified(Index: Integer): boolean;
begin
  Result := FsolUstCeneAnomaliDis_Specified;
end;

procedure konsultasyonBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function konsultasyonBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure konsultasyonBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function konsultasyonBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure konsultasyonBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function konsultasyonBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure konsultasyonBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function konsultasyonBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure konsultasyonBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function konsultasyonBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure konsultasyonBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function konsultasyonBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure konsultasyonBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function konsultasyonBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure konsultasyonBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function konsultasyonBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure kanBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function kanBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure kanBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function kanBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure kanBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function kanBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure kanBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function kanBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure kanBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function kanBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure kanBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function kanBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure kanBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function kanBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure kanBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function kanBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure kanBilgisiDVO.SetisbtBilesenNo(Index: Integer; const Astring: string);
begin
  FisbtBilesenNo := Astring;
  FisbtBilesenNo_Specified := True;
end;

function kanBilgisiDVO.isbtBilesenNo_Specified(Index: Integer): boolean;
begin
  Result := FisbtBilesenNo_Specified;
end;

procedure kanBilgisiDVO.SetisbtUniteNo(Index: Integer; const Astring: string);
begin
  FisbtUniteNo := Astring;
  FisbtUniteNo_Specified := True;
end;

function kanBilgisiDVO.isbtUniteNo_Specified(Index: Integer): boolean;
begin
  Result := FisbtUniteNo_Specified;
end;

procedure digerIslemBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function digerIslemBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure digerIslemBilgisiDVO.SetayniFarkliKesi(Index: Integer; const Astring: string);
begin
  FayniFarkliKesi := Astring;
  FayniFarkliKesi_Specified := True;
end;

function digerIslemBilgisiDVO.ayniFarkliKesi_Specified(Index: Integer): boolean;
begin
  Result := FayniFarkliKesi_Specified;
end;

procedure digerIslemBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function digerIslemBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure digerIslemBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function digerIslemBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure digerIslemBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function digerIslemBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure digerIslemBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function digerIslemBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure digerIslemBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function digerIslemBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure digerIslemBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function digerIslemBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure digerIslemBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function digerIslemBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure digerIslemBilgisiDVO.SetraporTakipNo(Index: Integer; const Astring: string);
begin
  FraporTakipNo := Astring;
  FraporTakipNo_Specified := True;
end;

function digerIslemBilgisiDVO.raporTakipNo_Specified(Index: Integer): boolean;
begin
  Result := FraporTakipNo_Specified;
end;

procedure digerIslemBilgisiDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function digerIslemBilgisiDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.Seteuroscore(Index: Integer; const Astring: string);
begin
  Feuroscore := Astring;
  Feuroscore_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.euroscore_Specified(Index: Integer): boolean;
begin
  Result := Feuroscore_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetayniFarkliKesi(Index: Integer; const Astring: string);
begin
  FayniFarkliKesi := Astring;
  FayniFarkliKesi_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.ayniFarkliKesi_Specified(Index: Integer): boolean;
begin
  Result := FayniFarkliKesi_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetsagSol(Index: Integer; const Astring: string);
begin
  FsagSol := Astring;
  FsagSol_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.sagSol_Specified(Index: Integer): boolean;
begin
  Result := FsagSol_Specified;
end;

procedure ameliyatveGirisimBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function ameliyatveGirisimBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

destructor utsKesinlestirmeKayitCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FhataliKayitlar)-1 do
    SysUtils.FreeAndNil(FhataliKayitlar[I]);
  System.SetLength(FhataliKayitlar, 0);
  inherited Destroy;
end;

procedure utsKesinlestirmeKayitCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function utsKesinlestirmeKayitCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure utsKesinlestirmeKayitCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function utsKesinlestirmeKayitCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure utsKesinlestirmeKayitCevapDVO.SethataliKayitlar(Index: Integer; const AArray_Of_hataliIslemBilgisiDVO: Array_Of_hataliIslemBilgisiDVO);
begin
  FhataliKayitlar := AArray_Of_hataliIslemBilgisiDVO;
  FhataliKayitlar_Specified := True;
end;

function utsKesinlestirmeKayitCevapDVO.hataliKayitlar_Specified(Index: Integer): boolean;
begin
  Result := FhataliKayitlar_Specified;
end;

procedure hizmetOkuGirisDVO.SetislemSiraNumaralari(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FislemSiraNumaralari := AArray_Of_string;
  FislemSiraNumaralari_Specified := True;
end;

function hizmetOkuGirisDVO.islemSiraNumaralari_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNumaralari_Specified;
end;

procedure hizmetOkuGirisDVO.SethizmetSunucuRefNolari(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FhizmetSunucuRefNolari := AArray_Of_string;
  FhizmetSunucuRefNolari_Specified := True;
end;

function hizmetOkuGirisDVO.hizmetSunucuRefNolari_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNolari_Specified;
end;

procedure hizmetOkuGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function hizmetOkuGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

destructor hizmetOkuCevapDVO.Destroy;
begin
  SysUtils.FreeAndNil(Fhizmetler);
  inherited Destroy;
end;

procedure hizmetOkuCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function hizmetOkuCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure hizmetOkuCevapDVO.Sethizmetler(Index: Integer; const AhizmetDVO: hizmetDVO);
begin
  Fhizmetler := AhizmetDVO;
  Fhizmetler_Specified := True;
end;

function hizmetOkuCevapDVO.hizmetler_Specified(Index: Integer): boolean;
begin
  Result := Fhizmetler_Specified;
end;

procedure hizmetOkuCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function hizmetOkuCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure hizmetOkuCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function hizmetOkuCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure hizmetIptalGirisDVO.SetislemSiraNumaralari(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FislemSiraNumaralari := AArray_Of_string;
  FislemSiraNumaralari_Specified := True;
end;

function hizmetIptalGirisDVO.islemSiraNumaralari_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNumaralari_Specified;
end;

procedure hizmetIptalGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function hizmetIptalGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

procedure hizmetIptalCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function hizmetIptalCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure hizmetIptalCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function hizmetIptalCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

destructor hizmetKayitGirisDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FkanBilgileri)-1 do
    SysUtils.FreeAndNil(FkanBilgileri[I]);
  System.SetLength(FkanBilgileri, 0);
  for I := 0 to System.Length(FameliyatveGirisimBilgileri)-1 do
    SysUtils.FreeAndNil(FameliyatveGirisimBilgileri[I]);
  System.SetLength(FameliyatveGirisimBilgileri, 0);
  for I := 0 to System.Length(FdigerIslemBilgileri)-1 do
    SysUtils.FreeAndNil(FdigerIslemBilgileri[I]);
  System.SetLength(FdigerIslemBilgileri, 0);
  for I := 0 to System.Length(FdisBilgileri)-1 do
    SysUtils.FreeAndNil(FdisBilgileri[I]);
  System.SetLength(FdisBilgileri, 0);
  for I := 0 to System.Length(FhastaYatisBilgileri)-1 do
    SysUtils.FreeAndNil(FhastaYatisBilgileri[I]);
  System.SetLength(FhastaYatisBilgileri, 0);
  for I := 0 to System.Length(FilacBilgileri)-1 do
    SysUtils.FreeAndNil(FilacBilgileri[I]);
  System.SetLength(FilacBilgileri, 0);
  for I := 0 to System.Length(FkonsultasyonBilgileri)-1 do
    SysUtils.FreeAndNil(FkonsultasyonBilgileri[I]);
  System.SetLength(FkonsultasyonBilgileri, 0);
  for I := 0 to System.Length(FmalzemeBilgileri)-1 do
    SysUtils.FreeAndNil(FmalzemeBilgileri[I]);
  System.SetLength(FmalzemeBilgileri, 0);
  for I := 0 to System.Length(FtahlilBilgileri)-1 do
    SysUtils.FreeAndNil(FtahlilBilgileri[I]);
  System.SetLength(FtahlilBilgileri, 0);
  for I := 0 to System.Length(Ftanilar)-1 do
    SysUtils.FreeAndNil(Ftanilar[I]);
  System.SetLength(Ftanilar, 0);
  for I := 0 to System.Length(FtetkikveRadyolojiBilgileri)-1 do
    SysUtils.FreeAndNil(FtetkikveRadyolojiBilgileri[I]);
  System.SetLength(FtetkikveRadyolojiBilgileri, 0);
  SysUtils.FreeAndNil(FmuayeneBilgisi);
  inherited Destroy;
end;

procedure hizmetKayitGirisDVO.SettriajBeyani(Index: Integer; const Astring: string);
begin
  FtriajBeyani := Astring;
  FtriajBeyani_Specified := True;
end;

function hizmetKayitGirisDVO.triajBeyani_Specified(Index: Integer): boolean;
begin
  Result := FtriajBeyani_Specified;
end;

procedure hizmetKayitGirisDVO.SetkanBilgileri(Index: Integer; const AArray_Of_kanBilgisiDVO: Array_Of_kanBilgisiDVO);
begin
  FkanBilgileri := AArray_Of_kanBilgisiDVO;
  FkanBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.kanBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FkanBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetameliyatveGirisimBilgileri(Index: Integer; const AArray_Of_ameliyatveGirisimBilgisiDVO: Array_Of_ameliyatveGirisimBilgisiDVO);
begin
  FameliyatveGirisimBilgileri := AArray_Of_ameliyatveGirisimBilgisiDVO;
  FameliyatveGirisimBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.ameliyatveGirisimBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FameliyatveGirisimBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetdigerIslemBilgileri(Index: Integer; const AArray_Of_digerIslemBilgisiDVO: Array_Of_digerIslemBilgisiDVO);
begin
  FdigerIslemBilgileri := AArray_Of_digerIslemBilgisiDVO;
  FdigerIslemBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.digerIslemBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FdigerIslemBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetdisBilgileri(Index: Integer; const AArray_Of_disBilgisiDVO: Array_Of_disBilgisiDVO);
begin
  FdisBilgileri := AArray_Of_disBilgisiDVO;
  FdisBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.disBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FdisBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SethastaYatisBilgileri(Index: Integer; const AArray_Of_hastaYatisBilgisiDVO: Array_Of_hastaYatisBilgisiDVO);
begin
  FhastaYatisBilgileri := AArray_Of_hastaYatisBilgisiDVO;
  FhastaYatisBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.hastaYatisBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FhastaYatisBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetilacBilgileri(Index: Integer; const AArray_Of_ilacBilgisiDVO: Array_Of_ilacBilgisiDVO);
begin
  FilacBilgileri := AArray_Of_ilacBilgisiDVO;
  FilacBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.ilacBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FilacBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetkonsultasyonBilgileri(Index: Integer; const AArray_Of_konsultasyonBilgisiDVO: Array_Of_konsultasyonBilgisiDVO);
begin
  FkonsultasyonBilgileri := AArray_Of_konsultasyonBilgisiDVO;
  FkonsultasyonBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.konsultasyonBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FkonsultasyonBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetmalzemeBilgileri(Index: Integer; const AArray_Of_malzemeBilgisiDVO: Array_Of_malzemeBilgisiDVO);
begin
  FmalzemeBilgileri := AArray_Of_malzemeBilgisiDVO;
  FmalzemeBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.malzemeBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FmalzemeBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetmuayeneBilgisi(Index: Integer; const AmuayeneBilgisiDVO: muayeneBilgisiDVO);
begin
  FmuayeneBilgisi := AmuayeneBilgisiDVO;
  FmuayeneBilgisi_Specified := True;
end;

function hizmetKayitGirisDVO.muayeneBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FmuayeneBilgisi_Specified;
end;

procedure hizmetKayitGirisDVO.SettahlilBilgileri(Index: Integer; const AArray_Of_tahlilBilgisiDVO: Array_Of_tahlilBilgisiDVO);
begin
  FtahlilBilgileri := AArray_Of_tahlilBilgisiDVO;
  FtahlilBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.tahlilBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FtahlilBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.Settanilar(Index: Integer; const AArray_Of_taniBilgisiDVO: Array_Of_taniBilgisiDVO);
begin
  Ftanilar := AArray_Of_taniBilgisiDVO;
  Ftanilar_Specified := True;
end;

function hizmetKayitGirisDVO.tanilar_Specified(Index: Integer): boolean;
begin
  Result := Ftanilar_Specified;
end;

procedure hizmetKayitGirisDVO.SettetkikveRadyolojiBilgileri(Index: Integer; const AArray_Of_tetkikveRadyolojiBilgisiDVO: Array_Of_tetkikveRadyolojiBilgisiDVO);
begin
  FtetkikveRadyolojiBilgileri := AArray_Of_tetkikveRadyolojiBilgisiDVO;
  FtetkikveRadyolojiBilgileri_Specified := True;
end;

function hizmetKayitGirisDVO.tetkikveRadyolojiBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FtetkikveRadyolojiBilgileri_Specified;
end;

procedure hizmetKayitGirisDVO.SetktsHbysKodu(Index: Integer; const Astring: string);
begin
  FktsHbysKodu := Astring;
  FktsHbysKodu_Specified := True;
end;

function hizmetKayitGirisDVO.ktsHbysKodu_Specified(Index: Integer): boolean;
begin
  Result := FktsHbysKodu_Specified;
end;

destructor hizmetKayitCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FhataliKayitlar)-1 do
    SysUtils.FreeAndNil(FhataliKayitlar[I]);
  System.SetLength(FhataliKayitlar, 0);
  for I := 0 to System.Length(FislemBilgileri)-1 do
    SysUtils.FreeAndNil(FislemBilgileri[I]);
  System.SetLength(FislemBilgileri, 0);
  inherited Destroy;
end;

procedure hizmetKayitCevapDVO.SethastaBasvuruNo(Index: Integer; const Astring: string);
begin
  FhastaBasvuruNo := Astring;
  FhastaBasvuruNo_Specified := True;
end;

function hizmetKayitCevapDVO.hastaBasvuruNo_Specified(Index: Integer): boolean;
begin
  Result := FhastaBasvuruNo_Specified;
end;

procedure hizmetKayitCevapDVO.SethataliKayitlar(Index: Integer; const AArray_Of_hataliIslemBilgisiDVO: Array_Of_hataliIslemBilgisiDVO);
begin
  FhataliKayitlar := AArray_Of_hataliIslemBilgisiDVO;
  FhataliKayitlar_Specified := True;
end;

function hizmetKayitCevapDVO.hataliKayitlar_Specified(Index: Integer): boolean;
begin
  Result := FhataliKayitlar_Specified;
end;

procedure hizmetKayitCevapDVO.SetislemBilgileri(Index: Integer; const AArray_Of_kayitliIslemBilgisiDVO: Array_Of_kayitliIslemBilgisiDVO);
begin
  FislemBilgileri := AArray_Of_kayitliIslemBilgisiDVO;
  FislemBilgileri_Specified := True;
end;

function hizmetKayitCevapDVO.islemBilgileri_Specified(Index: Integer): boolean;
begin
  Result := FislemBilgileri_Specified;
end;

procedure hizmetKayitCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function hizmetKayitCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure hizmetKayitCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function hizmetKayitCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure hizmetKayitCevapDVO.SettakipNo(Index: Integer; const Astring: string);
begin
  FtakipNo := Astring;
  FtakipNo_Specified := True;
end;

function hizmetKayitCevapDVO.takipNo_Specified(Index: Integer): boolean;
begin
  Result := FtakipNo_Specified;
end;

destructor utsKesinlestirmeSorguCevapDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FutsKesinlestirmeKayitDVO)-1 do
    SysUtils.FreeAndNil(FutsKesinlestirmeKayitDVO[I]);
  System.SetLength(FutsKesinlestirmeKayitDVO, 0);
  inherited Destroy;
end;

procedure utsKesinlestirmeSorguCevapDVO.SetsonucKodu(Index: Integer; const Astring: string);
begin
  FsonucKodu := Astring;
  FsonucKodu_Specified := True;
end;

function utsKesinlestirmeSorguCevapDVO.sonucKodu_Specified(Index: Integer): boolean;
begin
  Result := FsonucKodu_Specified;
end;

procedure utsKesinlestirmeSorguCevapDVO.SetsonucMesaji(Index: Integer; const Astring: string);
begin
  FsonucMesaji := Astring;
  FsonucMesaji_Specified := True;
end;

function utsKesinlestirmeSorguCevapDVO.sonucMesaji_Specified(Index: Integer): boolean;
begin
  Result := FsonucMesaji_Specified;
end;

procedure utsKesinlestirmeSorguCevapDVO.SetutsKesinlestirmeKayitDVO(Index: Integer; const AArray_Of_utsKesinlestirmeKayitDVO: Array_Of_utsKesinlestirmeKayitDVO);
begin
  FutsKesinlestirmeKayitDVO := AArray_Of_utsKesinlestirmeKayitDVO;
  FutsKesinlestirmeKayitDVO_Specified := True;
end;

function utsKesinlestirmeSorguCevapDVO.utsKesinlestirmeKayitDVO_Specified(Index: Integer): boolean;
begin
  Result := FutsKesinlestirmeKayitDVO_Specified;
end;

procedure utsKesinlestirmeKayitDVO.SetseriNo(Index: Integer; const Astring: string);
begin
  FseriNo := Astring;
  FseriNo_Specified := True;
end;

function utsKesinlestirmeKayitDVO.seriNo_Specified(Index: Integer): boolean;
begin
  Result := FseriNo_Specified;
end;

procedure utsKesinlestirmeKayitDVO.SetlotNo(Index: Integer; const Astring: string);
begin
  FlotNo := Astring;
  FlotNo_Specified := True;
end;

function utsKesinlestirmeKayitDVO.lotNo_Specified(Index: Integer): boolean;
begin
  Result := FlotNo_Specified;
end;

procedure oncekiIslemBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function oncekiIslemBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure oncekiIslemBilgisiDVO.SettesisAdi(Index: Integer; const Astring: string);
begin
  FtesisAdi := Astring;
  FtesisAdi_Specified := True;
end;

function oncekiIslemBilgisiDVO.tesisAdi_Specified(Index: Integer): boolean;
begin
  Result := FtesisAdi_Specified;
end;

destructor utsKesinlestirmeKayitGirisDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FutsKesinlestirmeKayitMalzemeDVO)-1 do
    SysUtils.FreeAndNil(FutsKesinlestirmeKayitMalzemeDVO[I]);
  System.SetLength(FutsKesinlestirmeKayitMalzemeDVO, 0);
  inherited Destroy;
end;

destructor hataliIslemBilgisiDVO.Destroy;
begin
  SysUtils.FreeAndNil(FoncekiIslemBilgisi);
  inherited Destroy;
end;

procedure hataliIslemBilgisiDVO.SethataKodu(Index: Integer; const Astring: string);
begin
  FhataKodu := Astring;
  FhataKodu_Specified := True;
end;

function hataliIslemBilgisiDVO.hataKodu_Specified(Index: Integer): boolean;
begin
  Result := FhataKodu_Specified;
end;

procedure hataliIslemBilgisiDVO.SethataMesaji(Index: Integer; const Astring: string);
begin
  FhataMesaji := Astring;
  FhataMesaji_Specified := True;
end;

function hataliIslemBilgisiDVO.hataMesaji_Specified(Index: Integer): boolean;
begin
  Result := FhataMesaji_Specified;
end;

procedure hataliIslemBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function hataliIslemBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure hataliIslemBilgisiDVO.SetoncekiIslemBilgisi(Index: Integer; const AoncekiIslemBilgisiDVO: oncekiIslemBilgisiDVO);
begin
  FoncekiIslemBilgisi := AoncekiIslemBilgisiDVO;
  FoncekiIslemBilgisi_Specified := True;
end;

function hataliIslemBilgisiDVO.oncekiIslemBilgisi_Specified(Index: Integer): boolean;
begin
  Result := FoncekiIslemBilgisi_Specified;
end;

procedure kayitliIslemBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function kayitliIslemBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure kayitliIslemBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function kayitliIslemBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

destructor tahlilBilgisiDVO.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(FtahlilSonuclari)-1 do
    SysUtils.FreeAndNil(FtahlilSonuclari[I]);
  System.SetLength(FtahlilSonuclari, 0);
  inherited Destroy;
end;

procedure tahlilBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function tahlilBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure tahlilBilgisiDVO.SettahlilSonuclari(Index: Integer; const AArray_Of_tahlilSonucDVO: Array_Of_tahlilSonucDVO);
begin
  FtahlilSonuclari := AArray_Of_tahlilSonucDVO;
  FtahlilSonuclari_Specified := True;
end;

function tahlilBilgisiDVO.tahlilSonuclari_Specified(Index: Integer): boolean;
begin
  Result := FtahlilSonuclari_Specified;
end;

procedure tahlilBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function tahlilBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure tahlilBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function tahlilBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure tahlilBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function tahlilBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure tahlilBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function tahlilBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure tahlilBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function tahlilBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure tahlilBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function tahlilBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure tahlilBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function tahlilBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure taniBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function taniBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure taniBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function taniBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure taniBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function taniBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure taniBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function taniBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure taniBilgisiDVO.SetbirincilTani(Index: Integer; const Astring: string);
begin
  FbirincilTani := Astring;
  FbirincilTani_Specified := True;
end;

function taniBilgisiDVO.birincilTani_Specified(Index: Integer): boolean;
begin
  Result := FbirincilTani_Specified;
end;

procedure taniBilgisiDVO.SettaniKodu(Index: Integer; const Astring: string);
begin
  FtaniKodu := Astring;
  FtaniKodu_Specified := True;
end;

function taniBilgisiDVO.taniKodu_Specified(Index: Integer): boolean;
begin
  Result := FtaniKodu_Specified;
end;

procedure taniBilgisiDVO.SettaniTipi(Index: Integer; const Astring: string);
begin
  FtaniTipi := Astring;
  FtaniTipi_Specified := True;
end;

function taniBilgisiDVO.taniTipi_Specified(Index: Integer): boolean;
begin
  Result := FtaniTipi_Specified;
end;

procedure muayeneBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function muayeneBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure muayeneBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function muayeneBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure muayeneBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function muayeneBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure muayeneBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function muayeneBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure muayeneBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function muayeneBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure muayeneBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function muayeneBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure muayeneBilgisiDVO.SetmuayeneTarihi(Index: Integer; const Astring: string);
begin
  FmuayeneTarihi := Astring;
  FmuayeneTarihi_Specified := True;
end;

function muayeneBilgisiDVO.muayeneTarihi_Specified(Index: Integer): boolean;
begin
  Result := FmuayeneTarihi_Specified;
end;

procedure muayeneBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function muayeneBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure tahlilSonucDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function tahlilSonucDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure tahlilSonucDVO.Setsonuc(Index: Integer; const Astring: string);
begin
  Fsonuc := Astring;
  Fsonuc_Specified := True;
end;

function tahlilSonucDVO.sonuc_Specified(Index: Integer): boolean;
begin
  Result := Fsonuc_Specified;
end;

procedure tahlilSonucDVO.SettahlilTipi(Index: Integer; const Astring: string);
begin
  FtahlilTipi := Astring;
  FtahlilTipi_Specified := True;
end;

function tahlilSonucDVO.tahlilTipi_Specified(Index: Integer): boolean;
begin
  Result := FtahlilTipi_Specified;
end;

procedure tahlilSonucDVO.Setbirim(Index: Integer; const Astring: string);
begin
  Fbirim := Astring;
  Fbirim_Specified := True;
end;

function tahlilSonucDVO.birim_Specified(Index: Integer): boolean;
begin
  Result := Fbirim_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.Setmodality(Index: Integer; const Astring: string);
begin
  Fmodality := Astring;
  Fmodality_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.modality_Specified(Index: Integer): boolean;
begin
  Result := Fmodality_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetsagSol(Index: Integer; const Astring: string);
begin
  FsagSol := Astring;
  FsagSol_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.sagSol_Specified(Index: Integer): boolean;
begin
  Result := FsagSol_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetayniFarkliKesi(Index: Integer; const Astring: string);
begin
  FayniFarkliKesi := Astring;
  FayniFarkliKesi_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.ayniFarkliKesi_Specified(Index: Integer): boolean;
begin
  Result := FayniFarkliKesi_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.Setbirim(Index: Integer; const Astring: string);
begin
  Fbirim := Astring;
  Fbirim_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.birim_Specified(Index: Integer): boolean;
begin
  Result := Fbirim_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.Setsonuc(Index: Integer; const Astring: string);
begin
  Fsonuc := Astring;
  Fsonuc_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.sonuc_Specified(Index: Integer): boolean;
begin
  Result := Fsonuc_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.SetsutKodu(Index: Integer; const Astring: string);
begin
  FsutKodu := Astring;
  FsutKodu_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.sutKodu_Specified(Index: Integer): boolean;
begin
  Result := FsutKodu_Specified;
end;

procedure tetkikveRadyolojiBilgisiDVO.Setaccession(Index: Integer; const Astring: string);
begin
  Faccession := Astring;
  Faccession_Specified := True;
end;

function tetkikveRadyolojiBilgisiDVO.accession_Specified(Index: Integer): boolean;
begin
  Result := Faccession_Specified;
end;

procedure malzemeBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function malzemeBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure malzemeBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function malzemeBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure malzemeBilgisiDVO.SetkatkiPayi(Index: Integer; const Astring: string);
begin
  FkatkiPayi := Astring;
  FkatkiPayi_Specified := True;
end;

function malzemeBilgisiDVO.katkiPayi_Specified(Index: Integer): boolean;
begin
  Result := FkatkiPayi_Specified;
end;

procedure malzemeBilgisiDVO.SetkodsuzMalzemeAdi(Index: Integer; const Astring: string);
begin
  FkodsuzMalzemeAdi := Astring;
  FkodsuzMalzemeAdi_Specified := True;
end;

function malzemeBilgisiDVO.kodsuzMalzemeAdi_Specified(Index: Integer): boolean;
begin
  Result := FkodsuzMalzemeAdi_Specified;
end;

procedure malzemeBilgisiDVO.Setbarkod(Index: Integer; const Astring: string);
begin
  Fbarkod := Astring;
  Fbarkod_Specified := True;
end;

function malzemeBilgisiDVO.barkod_Specified(Index: Integer): boolean;
begin
  Result := Fbarkod_Specified;
end;

procedure malzemeBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function malzemeBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure malzemeBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function malzemeBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure malzemeBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function malzemeBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
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

procedure malzemeBilgisiDVO.SetmalzemeTuru(Index: Integer; const Astring: string);
begin
  FmalzemeTuru := Astring;
  FmalzemeTuru_Specified := True;
end;

function malzemeBilgisiDVO.malzemeTuru_Specified(Index: Integer): boolean;
begin
  Result := FmalzemeTuru_Specified;
end;

procedure malzemeBilgisiDVO.SetpaketHaric(Index: Integer; const Astring: string);
begin
  FpaketHaric := Astring;
  FpaketHaric_Specified := True;
end;

function malzemeBilgisiDVO.paketHaric_Specified(Index: Integer): boolean;
begin
  Result := FpaketHaric_Specified;
end;

procedure malzemeBilgisiDVO.SetfirmaTanimlayiciNo(Index: Integer; const Astring: string);
begin
  FfirmaTanimlayiciNo := Astring;
  FfirmaTanimlayiciNo_Specified := True;
end;

function malzemeBilgisiDVO.firmaTanimlayiciNo_Specified(Index: Integer): boolean;
begin
  Result := FfirmaTanimlayiciNo_Specified;
end;

procedure malzemeBilgisiDVO.SetbransKodu(Index: Integer; const Astring: string);
begin
  FbransKodu := Astring;
  FbransKodu_Specified := True;
end;

function malzemeBilgisiDVO.bransKodu_Specified(Index: Integer): boolean;
begin
  Result := FbransKodu_Specified;
end;

procedure malzemeBilgisiDVO.SetdrTescilNo(Index: Integer; const Astring: string);
begin
  FdrTescilNo := Astring;
  FdrTescilNo_Specified := True;
end;

function malzemeBilgisiDVO.drTescilNo_Specified(Index: Integer): boolean;
begin
  Result := FdrTescilNo_Specified;
end;

procedure malzemeBilgisiDVO.SetmalzemeSatinAlisTarihi(Index: Integer; const Astring: string);
begin
  FmalzemeSatinAlisTarihi := Astring;
  FmalzemeSatinAlisTarihi_Specified := True;
end;

function malzemeBilgisiDVO.malzemeSatinAlisTarihi_Specified(Index: Integer): boolean;
begin
  Result := FmalzemeSatinAlisTarihi_Specified;
end;

procedure malzemeBilgisiDVO.SetdonorId(Index: Integer; const Astring: string);
begin
  FdonorId := Astring;
  FdonorId_Specified := True;
end;

function malzemeBilgisiDVO.donorId_Specified(Index: Integer): boolean;
begin
  Result := FdonorId_Specified;
end;

procedure malzemeBilgisiDVO.SetihaleKesinlesmeTarihi(Index: Integer; const Astring: string);
begin
  FihaleKesinlesmeTarihi := Astring;
  FihaleKesinlesmeTarihi_Specified := True;
end;

function malzemeBilgisiDVO.ihaleKesinlesmeTarihi_Specified(Index: Integer): boolean;
begin
  Result := FihaleKesinlesmeTarihi_Specified;
end;

procedure malzemeBilgisiDVO.SetikNoAlimNo(Index: Integer; const Astring: string);
begin
  FikNoAlimNo := Astring;
  FikNoAlimNo_Specified := True;
end;

function malzemeBilgisiDVO.ikNoAlimNo_Specified(Index: Integer): boolean;
begin
  Result := FikNoAlimNo_Specified;
end;

procedure malzemeBilgisiDVO.SetbayiNo(Index: Integer; const Astring: string);
begin
  FbayiNo := Astring;
  FbayiNo_Specified := True;
end;

function malzemeBilgisiDVO.bayiNo_Specified(Index: Integer): boolean;
begin
  Result := FbayiNo_Specified;
end;

procedure malzemeBilgisiDVO.SetseriNo(Index: Integer; const Astring: string);
begin
  FseriNo := Astring;
  FseriNo_Specified := True;
end;

function malzemeBilgisiDVO.seriNo_Specified(Index: Integer): boolean;
begin
  Result := FseriNo_Specified;
end;

procedure malzemeBilgisiDVO.SetlotNo(Index: Integer; const Astring: string);
begin
  FlotNo := Astring;
  FlotNo_Specified := True;
end;

function malzemeBilgisiDVO.lotNo_Specified(Index: Integer): boolean;
begin
  Result := FlotNo_Specified;
end;

procedure malzemeBilgisiDVO.SetkullanimBildirimID(Index: Integer; const Astring: string);
begin
  FkullanimBildirimID := Astring;
  FkullanimBildirimID_Specified := True;
end;

function malzemeBilgisiDVO.kullanimBildirimID_Specified(Index: Integer): boolean;
begin
  Result := FkullanimBildirimID_Specified;
end;

procedure ilacBilgisiDVO.SetcokluOzelDurum(Index: Integer; const AArray_Of_string: Array_Of_string);
begin
  FcokluOzelDurum := AArray_Of_string;
  FcokluOzelDurum_Specified := True;
end;

function ilacBilgisiDVO.cokluOzelDurum_Specified(Index: Integer): boolean;
begin
  Result := FcokluOzelDurum_Specified;
end;

procedure ilacBilgisiDVO.SetozelDurum(Index: Integer; const Astring: string);
begin
  FozelDurum := Astring;
  FozelDurum_Specified := True;
end;

function ilacBilgisiDVO.ozelDurum_Specified(Index: Integer): boolean;
begin
  Result := FozelDurum_Specified;
end;

procedure ilacBilgisiDVO.SetpaketHaric(Index: Integer; const Astring: string);
begin
  FpaketHaric := Astring;
  FpaketHaric_Specified := True;
end;

function ilacBilgisiDVO.paketHaric_Specified(Index: Integer): boolean;
begin
  Result := FpaketHaric_Specified;
end;

procedure ilacBilgisiDVO.Setaciklama(Index: Integer; const Astring: string);
begin
  Faciklama := Astring;
  Faciklama_Specified := True;
end;

function ilacBilgisiDVO.aciklama_Specified(Index: Integer): boolean;
begin
  Result := Faciklama_Specified;
end;

procedure ilacBilgisiDVO.Setbarkod(Index: Integer; const Astring: string);
begin
  Fbarkod := Astring;
  Fbarkod_Specified := True;
end;

function ilacBilgisiDVO.barkod_Specified(Index: Integer): boolean;
begin
  Result := Fbarkod_Specified;
end;

procedure ilacBilgisiDVO.SethizmetSunucuRefNo(Index: Integer; const Astring: string);
begin
  FhizmetSunucuRefNo := Astring;
  FhizmetSunucuRefNo_Specified := True;
end;

function ilacBilgisiDVO.hizmetSunucuRefNo_Specified(Index: Integer): boolean;
begin
  Result := FhizmetSunucuRefNo_Specified;
end;

procedure ilacBilgisiDVO.SetilacTuru(Index: Integer; const Astring: string);
begin
  FilacTuru := Astring;
  FilacTuru_Specified := True;
end;

function ilacBilgisiDVO.ilacTuru_Specified(Index: Integer): boolean;
begin
  Result := FilacTuru_Specified;
end;

procedure ilacBilgisiDVO.SetislemSiraNo(Index: Integer; const Astring: string);
begin
  FislemSiraNo := Astring;
  FislemSiraNo_Specified := True;
end;

function ilacBilgisiDVO.islemSiraNo_Specified(Index: Integer): boolean;
begin
  Result := FislemSiraNo_Specified;
end;

procedure ilacBilgisiDVO.SetislemTarihi(Index: Integer; const Astring: string);
begin
  FislemTarihi := Astring;
  FislemTarihi_Specified := True;
end;

function ilacBilgisiDVO.islemTarihi_Specified(Index: Integer): boolean;
begin
  Result := FislemTarihi_Specified;
end;

procedure ilacBilgisiDVO.SetraporTakipNo(Index: Integer; const Astring: string);
begin
  FraporTakipNo := Astring;
  FraporTakipNo_Specified := True;
end;

function ilacBilgisiDVO.raporTakipNo_Specified(Index: Integer): boolean;
begin
  Result := FraporTakipNo_Specified;
end;

initialization
  { HizmetKayitIslemleriService }
  InvRegistry.RegisterInterface(TypeInfo(HizmetKayitIslemleriService), 'http://servisler.ws.gss.sgk.gov.tr', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(HizmetKayitIslemleriService), '%operationName%');
  InvRegistry.RegisterInvokeOptions(TypeInfo(HizmetKayitIslemleriService), ioDocument);
  { HizmetKayitIslemleriService.hizmetKayit }
  InvRegistry.RegisterMethodInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetKayit', '',
                                 '[ReturnName="hizmetKayitReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetKayit', 'hizmetKayitGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetKayit', 'hizmetKayitReturn', '',
                                '', IS_UNQL);
  { HizmetKayitIslemleriService.hizmetOku }
  InvRegistry.RegisterMethodInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetOku', '',
                                 '[ReturnName="hizmetOkuReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetOku', 'hizmetOkuGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetOku', 'hizmetOkuReturn', '',
                                '', IS_UNQL);
  { HizmetKayitIslemleriService.hizmetIptal }
  InvRegistry.RegisterMethodInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetIptal', '',
                                 '[ReturnName="hizmetIptalReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetIptal', 'hizmetIptalGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'hizmetIptal', 'hizmetIptalReturn', '',
                                '', IS_UNQL);
  { HizmetKayitIslemleriService.utsKullanimKesinlestirme }
  InvRegistry.RegisterMethodInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirme', '',
                                 '[ReturnName="utsKullanimKesinlestirmeReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirme', 'utsKullanimKesinlestirmeGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirme', 'utsKullanimKesinlestirmeReturn', '',
                                '', IS_UNQL);
  { HizmetKayitIslemleriService.utsKullanimKesinlestirmeIptal }
  InvRegistry.RegisterMethodInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirmeIptal', '',
                                 '[ReturnName="utsKullanimKesinlestirmeIptalReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirmeIptal', 'utsKullanimKesinlestirmeIptalGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirmeIptal', 'utsKullanimKesinlestirmeIptalReturn', '',
                                '', IS_UNQL);
  { HizmetKayitIslemleriService.utsKullanimKesinlestirmeSorgu }
  InvRegistry.RegisterMethodInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirmeSorgu', '',
                                 '[ReturnName="utsKullanimKesinlestirmeSorguReturn"]', IS_OPTN or IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirmeSorgu', 'utsKullanimKesinlestirmeSorguGiris', '',
                                '', IS_UNQL);
  InvRegistry.RegisterParamInfo(TypeInfo(HizmetKayitIslemleriService), 'utsKullanimKesinlestirmeSorgu', 'utsKullanimKesinlestirmeSorguReturn', '',
                                '', IS_UNQL);
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_tetkikveRadyolojiBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_tetkikveRadyolojiBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_tahlilSonucDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_tahlilSonucDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_tahlilBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_tahlilBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_taniBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_taniBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_kayitliIslemBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_kayitliIslemBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_utsKesinlestirmeKayitMalzemeDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_utsKesinlestirmeKayitMalzemeDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_utsKesinlestirmeKayitDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_utsKesinlestirmeKayitDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_hataliIslemBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_hataliIslemBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_malzemeBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_malzemeBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ameliyatveGirisimBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_ameliyatveGirisimBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_digerIslemBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_digerIslemBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_kanBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_kanBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_ilacBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_ilacBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_konsultasyonBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_konsultasyonBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_disBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_disBilgisiDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_hastaYatisBilgisiDVO), 'http://servisler.ws.gss.sgk.gov.tr', 'Array_Of_hastaYatisBilgisiDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeIptalGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeIptalGirisDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeIptalCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeIptalCevapDVO');
  RemClassRegistry.RegisterXSClass(hizmetDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetDVO');
  RemClassRegistry.RegisterXSInfo(TypeInfo(Array_Of_string), 'http://www.w3.org/2001/XMLSchema', 'Array_Of_string');
  RemClassRegistry.RegisterXSClass(hastaYatisBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hastaYatisBilgisiDVO');
  RemClassRegistry.RegisterXSClass(disBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'disBilgisiDVO');
  RemClassRegistry.RegisterXSClass(konsultasyonBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'konsultasyonBilgisiDVO');
  RemClassRegistry.RegisterXSClass(kanBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'kanBilgisiDVO');
  RemClassRegistry.RegisterXSClass(digerIslemBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'digerIslemBilgisiDVO');
  RemClassRegistry.RegisterXSClass(ameliyatveGirisimBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ameliyatveGirisimBilgisiDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeKayitCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeKayitCevapDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeKayitMalzemeDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeKayitMalzemeDVO');
  RemClassRegistry.RegisterXSClass(hizmetOkuGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetOkuGirisDVO');
  RemClassRegistry.RegisterXSClass(hizmetOkuCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetOkuCevapDVO');
  RemClassRegistry.RegisterXSClass(hizmetIptalGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetIptalGirisDVO');
  RemClassRegistry.RegisterXSClass(hizmetIptalCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetIptalCevapDVO');
  RemClassRegistry.RegisterXSClass(hizmetKayitGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetKayitGirisDVO');
  RemClassRegistry.RegisterXSClass(hizmetKayitCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hizmetKayitCevapDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeSorguCevapDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeSorguCevapDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeKayitDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeKayitDVO');
  RemClassRegistry.RegisterXSClass(oncekiIslemBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'oncekiIslemBilgisiDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeKayitGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeKayitGirisDVO');
  RemClassRegistry.RegisterXSClass(hataliIslemBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'hataliIslemBilgisiDVO');
  RemClassRegistry.RegisterXSClass(kayitliIslemBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'kayitliIslemBilgisiDVO');
  RemClassRegistry.RegisterXSClass(tahlilBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tahlilBilgisiDVO');
  RemClassRegistry.RegisterXSClass(taniBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'taniBilgisiDVO');
  RemClassRegistry.RegisterXSClass(muayeneBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'muayeneBilgisiDVO');
  RemClassRegistry.RegisterXSClass(tahlilSonucDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tahlilSonucDVO');
  RemClassRegistry.RegisterXSClass(utsKesinlestirmeSorguGirisDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'utsKesinlestirmeSorguGirisDVO');
  RemClassRegistry.RegisterXSClass(tetkikveRadyolojiBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'tetkikveRadyolojiBilgisiDVO');
  RemClassRegistry.RegisterXSClass(malzemeBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'malzemeBilgisiDVO');
  RemClassRegistry.RegisterXSClass(ilacBilgisiDVO, 'http://servisler.ws.gss.sgk.gov.tr', 'ilacBilgisiDVO');

end.
