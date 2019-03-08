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

  hastaKabulIslemleriWS
  ;


type
  TMethods = (mYok,mHizmetKayit,mProvizyon,mFaturaKayit);

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
       FCevap : provizyonCevapDVO;


       procedure setMethod(const value : TMethods);
       function getMethod : TMethods;
       procedure setUsername(const value : string);
       procedure setPassword(const value : string);
       procedure setGiris(const value : provizyonGirisDVO);
       procedure setCevap(const value : provizyonCevapDVO);

       function getUsername : string;
       function getPassword : string;
       function getGiris : provizyonGirisDVO;
       function getCevap : provizyonCevapDVO;

       procedure Head;

    protected
    public
       procedure DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);override;
       procedure DoAfterExecute(const MethodName: string; SOAPResponse: TStream);override;
       CONSTRUCTOR Create(AOwner: TComponent); override;
       function TakipAl_3KimlikDorulama : Boolean;
    published
       property Method : TMethods read getMethod write setMethod;
       property Header : string read FHeader write FHeader;
       property UserName : string read getUsername write setUsername;
       property Password : string read getPassword write setPassword;
       property XmlOutPath : string read FXmlOutPath write FXmlOutPath;
       property IslemRef : string read FIslemRef write FIslemRef;
       property BeklemeSuresi : integer read FBeklemeSuresi write FBeklemeSuresi;
       property GirisParametre : provizyonGirisDVO read getGiris write setGiris;
       property Cevap : provizyonCevapDVO read FCevap write FCevap;
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
  FGirisParametre.yeniDoganBilgisi := yeniDoganBilgisiDVO.Create;
  Self.Method := mYok;
end;

procedure THastaKabul.DoAfterExecute(const MethodName: string; SOAPResponse: TStream);
var
  memo : Tmemo;
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
     memo.Free;
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
  Body := TStringList.Create;

  try

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);

(*
    FHeader := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:ser="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+Fusername+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+FPassword+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';
    *)
    StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',FHeader,[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hastaKabul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabul>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabul>','</tns5:hastaKabul>',[RfReplaceAll]);


    StrList1.text := StringReplace(StrList1.text,'<hastaKabulIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulIptal>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabulIptal>','</tns5:hastaKabulIptal>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hastaKabulOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulOku>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabulOku>','</tns5:hastaKabulOku>',[RfReplaceAll]);



    StrList1.text := StringReplace(StrList1.text,'<basvuruTakipOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:basvuruTakipOku>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</basvuruTakipOku>','</ser:basvuruTakipOku>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hastaKabulKimlikDogrulama xmlns="http://servisler.ws.gss.sgk.gov.tr">','<tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hastaKabulKimlikDogrulama>','</tns5:hastaKabulKimlikDogrulama>',[RfReplaceAll]);


    StrList1.text := StringReplace(StrList1.text,' xmlns=""','',[RfReplaceAll]);
    StrList1.text := UTF8Encode(StrList1.text);



    SOAPRequest.Position := 0;
    StrList1.SaveToStream(SOAPRequest);

    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));

 //   StrList1.SaveToFile('wsHizmetKayit.xml');
    StrList1.SaveToFile(XmlOutPath + '\' + IslemRef + '_' + MethodName + '_Sorgu_' + FormatDateTime('DDMMYYYY_HHMMSS',now)  + '_.XML');

  finally
    StrList1.Free;
    Body.Free;
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
    ' xmlns:ser="http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+Fusername+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+FPassword+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';
end;

procedure THastaKabul.setCevap(const value: provizyonCevapDVO);
begin
  FCevap := value;
end;

procedure THastaKabul.setGiris(const value: provizyonGirisDVO);
begin
  FGirisParametre := value;
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

function THastaKabul.getGiris: provizyonGirisDVO;
begin
  Result := FGirisParametre;
end;

function THastaKabul.getMethod: TMethods;
begin
    Result := FMethod;
end;

function THastaKabul.getPassword: string;
begin
    Result := FPassword;
end;


procedure THastaKabul.setPassword(const value: string);
begin
    FPassword := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
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

end.
