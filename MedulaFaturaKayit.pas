unit MedulaFaturaKayit;
interface

uses
  SysUtils, Classes, Controls, StdCtrls,Dialogs,Messages,cxButtonEdit,SOAPHTTPClient,IdHTTP,SOAPHTTPTrans,
  forms,adodb,ImgList,Para,strUtils,ExtCtrls, Math,db,buttons, Types, kadirType,cxButtons,
  registry, ActnList,Menus,ActnMan, Vcl.Graphics,XMLDoc,dxmdaset,Wininet,
  cxTextEdit,cxCalendar,cxGrid,ComCtrls,KadirMenus,cxGridDBTableView,cxGridDBBandedTableView,
  cxGridCustomView,cxCustomData,cxImageComboBox,FScxGrid,cxFilter,cxGridExportLink,ShellApi,Winapi.Windows,
  cxCheckBox,cxEdit,cxGroupBox,dxLayoutContainer,cxGridStrs, cxFilterConsts,cxCheckGroup,
  cxFilterControlStrs,cxGridPopupMenuConsts,cxClasses,System.Variants,
  faturaKayitIslemleriWS ;


  Const
    faturaKayitURL = 'https://medula.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';
    faturaKayitTestURL = 'https://saglikt.sgk.gov.tr/medula/hastane/faturaKayitIslemleriWS';
    ktsHbysKodu : string = 'C740D0288EFAC45FE0407C0A04162BDD';
    WSDL = 'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS?wsdl';
    _Service_ = 'FaturaKayitIslemleriService';
    _Port_ = 'FaturaKayitIslemleriPort';

//type
  //TMethods = (mTest,mGercek);

type

 TFaturaKayit = class(THTTPRIO)
    private
       FMethod : TMethods;
       FHeader : string;
       FUserName : string;
       FPassword : string;
       FXmlOutPath : string;
       FIslemRef : string;
       FBeklemeSuresi : integer;
       FFaturaGiris : FaturaGirisDVO;
       FFaturaCevap : FaturaCevapDVO;
       FFaturaIptalGiris : FaturaIptalGirisDVO;
       FFaturaIptalCevap : FaturaIptalCevapDVO;
       FFaturaOkuGiris : faturaOkuGirisDVO;
       FFaturaOkuCevap : faturaOkuCevapDVO;

       FTimeOut : integer;


       procedure setMethod(const value : TMethods);
       function getMethod : TMethods;
       procedure setUsername(const value : string);
       procedure setPassword(const value : string);
       procedure setFaturaGiris(const value : FaturaGirisDVO);
       procedure setFaturaCevap(const value : FaturaCevapDVO);
       procedure setFaturaIptalGiris(const value : FaturaIptalGirisDVO);
       procedure setFaturaIptalCevap(const value : FaturaIptalCevapDVO);
       procedure setFaturaOkuGiris(const value : FaturaOkuGirisDVO);
       procedure setFaturaOkuCevap(const value : FaturaOkuCevapDVO);

       function getUsername : string;
       function getPassword : string;
       function getFaturaGiris: FaturaGirisDVO;
       function getFaturaCevap : FaturaCevapDVO;
       function getFaturaIptalGiris : FaturaIptalGirisDVO;
       function getFaturaIptalCevap : FaturaIptalCevapDVO;
       function getFaturaOkuGiris: FaturaOkuGirisDVO;
       function getFaturaOkuCevap : FaturaOkuCevapDVO;
       procedure Head;

    protected
    public
       procedure DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);override;
       procedure DoAfterExecute(const MethodName: string; SOAPResponse: TStream);override;
//       function  Send(const ASrc: TStream): Integer;override;
       CONSTRUCTOR Create(AOwner: TComponent); override;
       function FaturaKaydet : String;
       function FaturaIptal : Boolean;
       function FaturaTutarOku : Boolean;
       function FaturaOku : Boolean;

    published
       property Method : TMethods read getMethod write setMethod;
       property Header : string read FHeader write FHeader;
       property UserName : string read getUsername write setUsername;
       property Password : string read getPassword write setPassword;
       property XmlOutPath : string read FXmlOutPath write FXmlOutPath;
       property IslemRef : string read FIslemRef write FIslemRef;
       property BeklemeSuresi : integer read FBeklemeSuresi write FBeklemeSuresi;
       property FaturaGiris : FaturaGirisDVO read getFaturaGiris write setFaturaGiris;
       property FaturaIptalGiris : FaturaIptalGirisDVO read getFaturaIptalGiris write setFaturaIptalGiris;
       property FaturaCevap : FaturaCevapDVO read FFaturaCevap  write FFaturaCevap ;
       property FaturaIptalCevap : FaturaIptalCevapDVO read FFaturaIptalCevap write FFaturaIptalCevap;
       property FaturaOkuGiris : FaturaOkuGirisDVO read getFaturaOkuGiris write setFaturaOkuGiris;
       property FaturaOkuCevap : FaturaOkuCevapDVO read FFaturaOkuCevap write FFaturaOkuCevap;

       property TimeOut : integer read FTimeOut write FTimeOut Default 15;
 end;







procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Nokta', [TFaturaKayit]);
end;


constructor TFaturaKayit.Create(AOwner: TComponent);
var
  HTTPReqResp : THTTPReqResp;
begin
  inherited Create(AOwner);

  (*
  HTTPReqResp := THTTPReqResp.Create(Self);
  HTTPReqResp.SendTimeout := FTimeOut * 1000;
  HTTPReqResp.ReceiveTimeout := FTimeOut * 1000;
  HTTPReqResp.Name := 'HTTPWebNodeKadir';
  WebNode := HTTPReqResp;
    *)

  FFaturaGiris := faturaGirisDVO.Create;
  FFaturaIptalGiris := faturaIptalGirisDVO.Create;
  FFaturaOkuGiris := faturaOkuGirisDVO.Create;
  Self.Method := mGercek;
end;

procedure TFaturaKayit.DoAfterExecute(const MethodName: string; SOAPResponse: TStream);
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

procedure TFaturaKayit.DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);
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
 //     TimeOut := 40000; // in milleseconds.
  //    FTimeOut := FTimeOut * 1000;
 //     InternetSetOption(SOAPRequest,INTERNET_OPTION_SEND_TIMEOUT,Pointer(@TimeOut),SizeOf(FTimeOut));

  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);

    StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',FHeader,[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<faturaTutarOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaTutarOku>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</faturaTutarOku>','</ser:faturaTutarOku>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<faturaOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaOku>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</faturaOku>','</ser:faturaOku>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<faturaKayit xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaKayit>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</faturaKayit>','</ser:faturaKayit>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<faturaIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:faturaIptal>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</faturaIptal>','</ser:faturaIptal>',[RfReplaceAll]);


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

 (*
procedure TFaturaKayit.BeforePost(const HTTPReqResp: THTTPReqResp;
  Data: Pointer);
begin
  inherited;
 //     FTimeOut := 40000; // in milleseconds.

      InternetSetOption(Data,
      INTERNET_OPTION_RECEIVE_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(FTimeOut*1000));

      InternetSetOption(Data,
      INTERNET_OPTION_SEND_TIMEOUT,
      Pointer(@TimeOut),
      SizeOf(FTimeOut*1000));
end;
   *)
function TFaturaKayit.getUsername: string;
var
 Head : string;
begin
    Result := FUserName;
end;

procedure TFaturaKayit.Head;
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

procedure TFaturaKayit.setFaturaCevap(const value: faturaCevapDVO);
begin
  FFaturaCevap := value;
end;

procedure TFaturaKayit.setFaturaIptalCevap(const value: faturaIptalCevapDVO);
begin
  FFaturaIptalCevap := value;
end;

procedure TFaturaKayit.setFaturaGiris(const value: faturaGirisDVO);
begin
  FFaturaGiris := value;
end;

procedure TFaturaKayit.setFaturaIptalGiris(const value: faturaIptalGirisDVO);
begin
  FFaturaIptalGiris := value;
end;


procedure TFaturaKayit.setFaturaOkuCevap(const value: FaturaOkuCevapDVO);
begin
 FFaturaOkuCevap := value;
end;

procedure TFaturaKayit.setFaturaOkuGiris(const value: FaturaOkuGirisDVO);
begin
  FFaturaOkuGiris := value;
end;

procedure TFaturaKayit.setMethod(const value: TMethods);
begin
  FMethod := value;
  Self.WSDLLocation := WSDL;
  Self.Service := _Service_;
  Self.Port := _Port_;
end;



function TFaturaKayit.getFaturaCevap: faturaCevapDVO;
begin
  Result := FFaturaCevap;
end;

function TFaturaKayit.getFaturaIptalCevap: faturaIptalCevapDVO;
begin
   Result := FFaturaIptalCevap;
end;

function TFaturaKayit.getFaturaGiris: faturaGirisDVO;
begin
  Result := FFaturaGiris;
end;

function TFaturaKayit.getFaturaIptalGiris: faturaIptalGirisDVO;
begin
  Result := FFaturaIptalGiris;
end;

function TFaturaKayit.getFaturaOkuCevap: FaturaOkuCevapDVO;
begin
  Result := FFaturaOkuCevap;
end;

function TFaturaKayit.getFaturaOkuGiris: FaturaOkuGirisDVO;
begin
   Result := FFaturaOkuGiris;
end;

function TFaturaKayit.getMethod: TMethods;
begin
    Result := FMethod;
end;

function TFaturaKayit.getPassword: string;
begin
    Result := FPassword;
end;


procedure TFaturaKayit.setPassword(const value: string);
begin
    FPassword := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

procedure TFaturaKayit.setUsername(const value: string);
begin
    FUserName := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

function TFaturaKayit.FaturaKaydet  : string;
var
 i,j,a,b : integer;
 _islemNo_,refNo : string;
begin
    Result := '';
    FaturaCevap := faturaCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,faturaKayitTestURL,faturaKayitURL);
      FaturaGiris.ktsHbysKodu := ktsHbysKodu;
      FaturaCevap := (self as FaturaKayitIslemleri).faturaKayit(FaturaGiris);
      Result := FaturaCevap.sonucKodu + ' ' + FaturaCevap.sonucMesaji;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := '';
      end;
    end;
end;


function TFaturaKayit.FaturaOku: Boolean;
begin
    Result := False;
        FaturaOkuCevap := faturaOkuCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,faturaKayitTestURL,faturaKayitURL);
      faturaOkuGiris.ktsHbysKodu := ktsHbysKodu;
      faturaOkuCevap := (self as FaturaKayitIslemleri).faturaOku(FaturaOkuGiris);
      Result := True;
    except
      on E : sysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;
end;

function TFaturaKayit.FaturaTutarOku: Boolean;
begin
    Result := False;
        FaturaCevap := faturaCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,faturaKayitTestURL,faturaKayitURL);
      faturaGiris.ktsHbysKodu := ktsHbysKodu;
      faturaCevap := (self as FaturaKayitIslemleri).faturaTutarOku(FaturaGiris);
      Result := True;
    except
      on E : sysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;

end;

function TFaturaKayit.FaturaIptal : Boolean;
begin
    Result := False;
    FaturaIptalCevap := FaturaIptalCevap.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,faturaKayitTestURL,faturaKayitURL);
      FaturaIptalGiris.ktsHbysKodu := ktsHbysKodu;
      FaturaIptalCevap := (self as FaturaKayitIslemleri).faturaIptal(FaturaIptalGiris);
      Result := True;
    except
      on E : sysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;


end;


end.
