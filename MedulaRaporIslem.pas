unit MedulaRaporIslem;
interface

uses
  SysUtils, Classes, Controls, StdCtrls,Dialogs,Messages,cxButtonEdit,SOAPHTTPClient,IdHTTP,SOAPHTTPTrans,
  forms,adodb,ImgList,Para,strUtils,ExtCtrls, Math,db,buttons, Types, kadirType,cxButtons,
  registry, ActnList,Menus,ActnMan, Vcl.Graphics,XMLDoc,
  cxTextEdit,cxCalendar,cxGrid,ComCtrls,KadirMenus,cxGridDBTableView,cxGridDBBandedTableView,
  cxGridCustomView,cxCustomData,cxImageComboBox,cxFilter,cxGridExportLink,ShellApi,Winapi.Windows,
  cxCheckBox,cxEdit,cxGroupBox,dxLayoutContainer,cxGridStrs, cxFilterConsts,cxCheckGroup,
  cxFilterControlStrs,cxGridPopupMenuConsts,cxClasses,System.Variants,
  raporIslemleriWS ;


  Const
    RaporIslemURL = 'https://medula.sgk.gov.tr/medula/hastane/raporIslemleriWS';
    RaporIslemURLTest = 'https://sgkt.sgk.gov.tr/medula/hastane/raporIslemleriWS';
    RaporIslemWSDL = 'https://sgkt.sgk.gov.tr/medula/hastane/raporIslemleriWS?wsdl';
    RaporIslemService = 'RaporIslemleriService';
    RaporIslemPort = 'RaporIslemleriPort';
    ktsHbysKodu : string = 'C740D0288EFAC45FE0407C0A04162BDD';


//type
 // TMethods = (mTest,mGercek);

type

 TRaporIslem = class(THTTPRIO)
    private
       FMethod : TMethods;
       FHeader : string;
       FUserName : string;
       FPassword : string;
       FXmlOutPath : string;
       FIslemRef : string;
       FBeklemeSuresi : integer;
       FRaporAraGiris : raporOkuTCKimlikNodanDVO;
       FRaporAraCevap : RaporCevapTCKimlikNodanDVO;
       FRaporGiris : RaporGirisDVO;
       FRaporCevap : RaporCevapDVO;
       FRaporBilgisi : raporSorguDVO;

       procedure setMethod(const value : TMethods);
       function getMethod : TMethods;
       procedure setUsername(const value : string);
       procedure setPassword(const value : string);

       procedure setRaporAraGiris (const value : raporOkuTCKimlikNodanDVO);
       procedure setRaporAraCevap(const value : RaporCevapTCKimlikNodanDVO);
       procedure setRaporGiris (const value : RaporGirisDVO);
       procedure setRaporBilgisi (const value : raporSorguDVO);
       procedure setRaporCevap(const value : RaporCevapDVO);

       function getUsername : string;
       function getPassword : string;


       function getRaporAraGiris : raporOkuTCKimlikNodanDVO;
       function getRaporAraCevap : RaporCevapTCKimlikNodanDVO;
       function getRaporGiris : RaporGirisDVO;
       function getRaporBilgisi: raporSorguDVO;
       function getRaporCevap : RaporCevapDVO;

       procedure Head;

    protected
    public
       procedure DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);override;
       procedure DoAfterExecute(const MethodName: string; SOAPResponse: TStream);override;
       CONSTRUCTOR Create(AOwner: TComponent); override;
       function RaporAra : Boolean;
       function raporBilgisiBul: Boolean;
       function RaporKaydet : Boolean;
    published
       property Method : TMethods read getMethod write setMethod;
       property Header : string read FHeader write FHeader;
       property UserName : string read getUsername write setUsername;
       property Password : string read getPassword write setPassword;
       property XmlOutPath : string read FXmlOutPath write FXmlOutPath;
       property IslemRef : string read FIslemRef write FIslemRef;
       property BeklemeSuresi : integer read FBeklemeSuresi write FBeklemeSuresi;
       property RaporAraGiris : raporOkuTCKimlikNodanDVO read getRaporAraGiris write setRaporAraGiris;
       property RaporAraCevap : RaporCevapTCKimlikNodanDVO read getRaporAraCevap write setRaporAraCevap;
       property RaporGiris : RaporGirisDVO read getRaporGiris write setRaporGiris;
       property RaporBilgisi  : raporSorguDVO read getRaporBilgisi  write setRaporBilgisi;
       property RaporCevap : RaporCevapDVO read getRaporCevap write setRaporCevap;

 end;




procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Nokta', [TRaporIslem]);
end;


constructor TRaporIslem.Create(AOwner: TComponent);
var
  RaporOku : raporOkuDVO;
begin
  inherited Create(AOwner);
  FRaporAraGiris:= RaporOkuTCKimlikNodanDVO.Create;
  FRaporGiris := raporGirisDVO.Create;
  RaporOku := raporOkuDVO.Create;
  FRaporBilgisi := raporSorguDVO.Create;
  FRaporBilgisi.raporBilgisi := raporOku;
  Self.Method := mGercek;
end;

function TRaporIslem.RaporAra: Boolean;
begin
    Result := False;
    RaporAraCevap := RaporCevapTCKimlikNodanDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,RaporIslemURLTest,RaporIslemURL);
      RaporAraCevap := (self as RaporIslemleri).raporBilgisiBulTCKimlikNodan(RaporAraGiris);
      Result := True;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;
end;

function TRaporIslem.raporBilgisiBul: Boolean;
begin
    Result := False;
    RaporCevap := raporCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,RaporIslemURLTest,RaporIslemURL);
      RaporCevap := (self as RaporIslemleri).raporBilgisiBul(RaporBilgisi);
      Result := True;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;
end;

function TRaporIslem.RaporKaydet : Boolean;
begin
    Result := False;
    RaporCevap := RaporCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,RaporIslemURLTest,RaporIslemURL);
      RaporCevap := (self as RaporIslemleri).takipNoileRaporBilgisiKaydet(RaporGiris);
      Result := True;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;
end;

procedure TRaporIslem.DoAfterExecute(const MethodName: string; SOAPResponse: TStream);
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

procedure TRaporIslem.DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);
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

    StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBul xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBul>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</raporBilgisiBul>','</ser:raporBilgisiBul>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<raporBilgisiBulTCKimlikNodan xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</raporBilgisiBulTCKimlikNodan>','</ser:raporBilgisiBulTCKimlikNodan>',[RfReplaceAll]);

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


function TRaporIslem.getUsername: string;
var
 Head : string;
begin
    Result := FUserName;
end;

procedure TRaporIslem.Head;
var
  ns : string;
begin
    if self.FRaporAraGiris.raporTuru = '10'
    Then
      ns := 'http://servisler.ws.eczane.gss.sgk.gov.tr'
    else ns := 'http://servisler.ws.gss.sgk.gov.tr';


    Header := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:ser="' + ns + '">'  +  //http://servisler.ws.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+Fusername+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+FPassword+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';
end;



procedure TRaporIslem.setMethod(const value: TMethods);
begin
  FMethod := value;
  Self.WSDLLocation := RaporIslemWSDL;
  Self.Service := RaporIslemService;
  Self.Port := RaporIslemPort;
end;


function TRaporIslem.getMethod: TMethods;
begin
    Result := FMethod;
end;

function TRaporIslem.getPassword: string;
begin
    Result := FPassword;
end;


function TRaporIslem.getRaporAraCevap: raporCevapTCKimlikNodanDVO;
begin
  Result := FRaporAraCevap;
end;

function TRaporIslem.getRaporCevap: raporCevapDVO;
begin
  Result := FRaporCevap;
end;

function TRaporIslem.getRaporAraGiris: raporOkuTCKimlikNodanDVO;
begin
   Result := FRaporAraGiris;
end;

function TRaporIslem.getRaporGiris: raporGirisDVO;
begin
   Result := FRaporGiris;
end;


procedure TRaporIslem.setPassword(const value: string);
begin
    FPassword := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

procedure TRaporIslem.setRaporAraCevap(const value: raporCevapTCKimlikNodanDVO);
begin
   FRaporAraCevap := value;
end;

procedure TRaporIslem.setRaporAraGiris(const value: raporOkuTCKimlikNodanDVO);
begin
   FRaporAraGiris := value;
end;

procedure TRaporIslem.setRaporCevap(const value: raporCevapDVO);
begin
   FRaporCevap := value;
end;

procedure TRaporIslem.setRaporGiris(const value: raporGirisDVO);
begin
   FRaporGiris := value;
end;

procedure TRaporIslem.setRaporBilgisi (const value : raporSorguDVO);
begin
   FRaporBilgisi := value;
end;

function TRaporIslem.getRaporBilgisi: raporSorguDVO;
begin
   Result := FRaporBilgisi;
end;


procedure TRaporIslem.setUsername(const value: string);
begin
    FUserName := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;





end.
