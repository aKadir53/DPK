unit MedulaHastaKabul;
interface

uses
  SysUtils, Classes, Controls, StdCtrls,Dialogs,Messages,cxButtonEdit,SOAPHTTPClient,IdHTTP,SOAPHTTPTrans,
  forms,adodb,ImgList,Para,strUtils,ExtCtrls, Math,db,buttons, Types, kadirType,cxButtons,
  registry, ActnList,Menus,ActnMan, Vcl.Graphics,XMLDoc,
  cxTextEdit,cxCalendar,cxGrid,ComCtrls,KadirMenus,cxGridDBTableView,cxGridDBBandedTableView,
  cxGridCustomView,cxCustomData,cxImageComboBox,FScxGrid,cxFilter,cxGridExportLink,ShellApi,Winapi.Windows,
  cxCheckBox,cxEdit,cxGroupBox,dxLayoutContainer,cxGridStrs, cxFilterConsts,cxCheckGroup,
  cxFilterControlStrs,cxGridPopupMenuConsts,cxClasses,System.Variants,

  hastaKabulIslemleriWS ;


  Const
    yardimciIslemURL = 'https://medula.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';
    yardimciIslemURLTest = 'http://sgkt.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';

    DiabetFormURL = 'https://medula.sgk.gov.tr/medula/hastane/takipFormuIslemleriWS';
    sevkURL = 'https://medula.sgk.gov.tr/medula/hastane/sevkIslemleriWS';

    hastaKabulURL = 'https://medula.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';
    hastaKabulTestURL = 'https://sgkt.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS';

    faturaKayitURL = 'https://medula.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';
    //'https://saglikt.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';

    hizmetKayitURL = 'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';
 //   hizmetKayitURL = 'https://sgkt.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';

    receteURL = 'https://medeczane.sgk.gov.tr/eczanews/services/SaglikTesisiReceteIslemleri';
    raporIlacURL = 'https://medeczane.sgk.gov.tr/medula/eczane/saglikTesisiRaporIslemleriWS';
    raporURL = 'https://medula.sgk.gov.tr/medula/hastane/raporIslemleriWS';
    DyopURL = 'https://wsdis.saglik.gov.tr/KRIZMA.DIS.TREATMENTSERVICE.asmx';
    DonemSonlandir = 'https://medula.sgk.gov.tr/hastane/login.jsf';
    AppalicationVer : integer = 2201;
    ktsHbysKodu : string = 'C740D0288EFAC45FE0407C0A04162BDD';

//type
 // TMethods = (mTest,mGercek);

type

 THastaKabul = class(THTTPRIO)
    private
       FMethod : TMethods;
       FHeader : string;
       FUserName : string;
       FPassword : string;
       FXmlOutPath : string;
       FIslemRef : string;
       FBeklemeSuresi : integer;
       FGirisParametre : provizyonGirisDVO;
       FGirisSil : takipSilGirisDVO;
       FCevapSil : takipSilCevapDVO;
       FCevap : provizyonCevapDVO;
       FTakipOkuGiris : TakipOkuGirisDVO;
       FTakip : TakipDVO;

       procedure setMethod(const value : TMethods);
       function getMethod : TMethods;
       procedure setUsername(const value : string);
       procedure setPassword(const value : string);

       procedure setGiris(const value : provizyonGirisDVO);
       procedure setCevap(const value : provizyonCevapDVO);
       procedure setGirisSil(const value : takipSilGirisDVO);
       procedure setCevapSil(const value : takipSilCevapDVO);
       procedure setTakipOkuGiris(const value : takipOkuGirisDVO);
       procedure setTakip(const value : takipDVO);

       function getUsername : string;
       function getPassword : string;
       function getGiris : provizyonGirisDVO;
       function getCevap : provizyonCevapDVO;
       function getGirisSil : takipSilGirisDVO;
       function getCevapSil : takipSilCevapDVO;
       function getTakipOkuGiris : takipOkuGirisDVO;
       function getTakip : takipDVO;


       procedure Head;

    protected
    public
       procedure DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);override;
       procedure DoAfterExecute(const MethodName: string; SOAPResponse: TStream);override;
       CONSTRUCTOR Create(AOwner: TComponent); override;
       destructor Destroy; override;
       function TakipAl_3KimlikDorulama : Boolean;
       function TakipSil_3 : Boolean;
       function KabulOku : Boolean;

    published
       property Method : TMethods read getMethod write setMethod;
       property Header : string read FHeader write FHeader;
       property UserName : string read getUsername write setUsername;
       property Password : string read getPassword write setPassword;
       property XmlOutPath : string read FXmlOutPath write FXmlOutPath;
       property IslemRef : string read FIslemRef write FIslemRef;
       property BeklemeSuresi : integer read FBeklemeSuresi write FBeklemeSuresi;
       property GirisParametre : provizyonGirisDVO read getGiris write setGiris;
       property GirisSil : takipSilGirisDVO read getGirisSil write setGirisSil;
       property Cevap : provizyonCevapDVO read FCevap write FCevap;
       property CevapSil : takipSilCevapDVO read FCevapSil write FCevapSil;
       property TakipOkuGiris : takipOkuGirisDVO read getTakipOkuGiris write setTakipOkuGiris;
       property Takip : takipDVO read getTakip write setTakip;

 end;


const

  hastaKabulWSDL = 'https://sgkt.sgk.gov.tr/medula/hastane/hastaKabulIslemleriWS?wsdl';
  hastaKabulService = 'HastaKabulIslemleriService';
  hastaKabulPort = 'HastaKabulIslemleriPort';
(*
  faturaKayitWSDL = 'https://sgkt.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS?wsdl';
  faturaKayitPort = 'FaturaKayitIslemleriPort';
  faturaKayitService = 'FaturaKayitIslemleriService';
  hizmetKayitWSDL = 'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS?wsdl';
  hizmetKayitPort = 'HizmetKayitIslemleriServicePort';
  hizmetKayitService = 'HizmetKayitIslemleriServiceService';
  *)

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Nokta', [THastaKabul]);
end;


constructor THastaKabul.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FGirisParametre := provizyonGirisDVO.Create;
  FTakipOkuGiris := takipOkuGirisDVO.Create;
  FGirisSil := takipSilGirisDVO.Create;
  Self.Method := mGercek;
end;


destructor THastaKabul.Destroy;
begin
  FreeAndNil(FGirisParametre);
  FreeAndNil(FTakipOkuGiris);
  FreeAndNil(FGirisSil);
  inherited;
end;

procedure THastaKabul.DoAfterExecute(const MethodName: string; SOAPResponse: TStream);
var
  m : TStringList;
  R: UTF8String;
begin
   inherited;
   SetLength(R, SOAPResponse.Size);
   SOAPResponse.Position := 0;
   SOAPResponse.Read(R[1], Length(R));
   m := TStringList.Create;
   try
     m.Add(FormatXMLData(R));
     m.SaveToFile(XmlOutPath + '\' + IslemRef + '_' + MethodName + '_Cevap_' + FormatDateTime('DDMMYYYY_HHMMSS',now)  + '_.XML');
   finally
     m.Free;
   end;

   Sleep(BeklemeSuresi*1000);
end;

procedure THastaKabul.DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);
var
  Request: UTF8String;
  Request1: UTF8String;
  StrList1: TStringList;
  I : integer;
  HeaderBegin , HeaderEnd : integer;
  Header  : Widestring;
  BodyBegin , BodyEnd , ii ,s : integer;
  Body , xmlKaydet: TStringList;
begin
  inherited;
  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);

    StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',FHeader,[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hastaKabul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabul>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabul>','</tns5:hastaKabul>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hastaKabulIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulIptal>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabulIptal>','</tns5:hastaKabulIptal>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hastaKabulOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulOku>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabulOku>','</tns5:hastaKabulOku>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<basvuruTakipOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:basvuruTakipOku>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</basvuruTakipOku>','</tns5:basvuruTakipOku>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hastaKabulKimlikDogrulama xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabulKimlikDogrulama>','</tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
    StrList1.text := UTF8Encode(StrList1.text);

    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

    StrList1.SaveToFile(XmlOutPath + '\' + IslemRef + '_' + MethodName + '_Sorgu_' + FormatDateTime('DDMMYYYY_HHMMSS',now)  + '_.XML');

  finally
    StrList1.Free;
  end;
end;


function THastaKabul.getUsername: string;
var
 Head : string;
begin
    Result := FUserName;
end;

procedure THastaKabul.Head;
begin
    Header := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:tns5="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+Fusername+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+FPassword+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';
end;

function THastaKabul.KabulOku: Boolean;
begin
    Result := False;
    Cevap := provizyonCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,hastaKabulTestURL,hastaKabulURL);
      TakipOkuGiris.ktsHbysKodu := ktsHbysKodu;
      Takip := (self as HastaKabulIslemleri).hastaKabulOku(TakipOkuGiris);
      Result := True;
    except

    end;

end;

procedure THastaKabul.setCevap(const value: provizyonCevapDVO);
begin
  FCevap := value;
end;

procedure THastaKabul.setCevapSil(const value: takipSilCevapDVO);
begin
  FCevapSil := value;
end;


procedure THastaKabul.setGiris(const value: provizyonGirisDVO);
begin
  FGirisParametre := value;
end;

procedure THastaKabul.setGirisSil(const value: takipSilGirisDVO);
begin
  FGirisSil := value;
end;


procedure THastaKabul.setMethod(const value: TMethods);
begin
  FMethod := value;
  Self.WSDLLocation := hastaKabulWSDL;
  Self.Service := hastaKabulService;
  Self.Port := hastaKabulPort;
end;



function THastaKabul.getCevap: provizyonCevapDVO;
begin
  Result := FCevap;
end;

function THastaKabul.getCevapSil: takipSilCevapDVO;
begin
  Result := FCevapSil;
end;


function THastaKabul.getGiris: provizyonGirisDVO;
begin
  Result := FGirisParametre;
end;

function THastaKabul.getGirisSil: takipSilGirisDVO;
begin
  Result := FGirisSil;
end;

function THastaKabul.getMethod: TMethods;
begin
    Result := FMethod;
end;

function THastaKabul.getPassword: string;
begin
    Result := FPassword;
end;


function THastaKabul.getTakip: takipDVO;
begin
     Result := FTakip;
end;

function THastaKabul.getTakipOkuGiris: takipOkuGirisDVO;
begin
      Result := FTakipOkuGiris;
end;

procedure THastaKabul.setPassword(const value: string);
begin
    FPassword := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

procedure THastaKabul.setTakip(const value: takipDVO);
begin
   FTakip := value;
end;

procedure THastaKabul.setTakipOkuGiris(const value: takipOkuGirisDVO);
begin
  FTakipOkuGiris := value;
end;

procedure THastaKabul.setUsername(const value: string);
begin
    FUserName := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

function THastaKabul.TakipAl_3KimlikDorulama : Boolean;
begin
    Result := False;
    Cevap := provizyonCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,hastaKabulTestURL,hastaKabulURL);
      GirisParametre.ktsHbysKodu := ktsHbysKodu;
      Cevap := (self as HastaKabulIslemleri).hastaKabulKimlikDogrulama(GirisParametre);
      Result := True;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;
end;


function THastaKabul.TakipSil_3 : Boolean;
begin
    Result := False;
    CevapSil := takipSilCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,hastaKabulTestURL,hastaKabulURL);
      GirisSil.ktsHbysKodu := ktsHbysKodu;
      CevapSil := (self as HastaKabulIslemleri).hastaKabulIptal(GirisSil);
      Result := True;
    except
      on E : sysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;

          (*
          if PrvSilCvp.sonucKodu = '0000'
          Then Begin
            Result := PrvSilCvp.sonucKodu;
            TakipSilYaz(PrvSilGir.takipNo);
          End
          else
          if PrvSilCvp.sonucKodu = '0535'
          Then Begin
             TakipSilYaz(PrvSilGir.takipNo);
             Result := PrvSilCvp.sonucKodu;
          End
          Else Result := PrvSilCvp.sonucKodu + '-' + PrvSilCvp.sonucMesaji;
            *)

end;


end.
