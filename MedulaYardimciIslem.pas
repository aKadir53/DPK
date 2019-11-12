unit MedulaYardimciIslem;
interface

uses
  SysUtils, Classes, Controls, StdCtrls,Dialogs,Messages,cxButtonEdit,SOAPHTTPClient,IdHTTP,SOAPHTTPTrans,
  forms,adodb,ImgList,Para,strUtils,ExtCtrls, Math,db,buttons, Types, kadirType,cxButtons,
  registry, ActnList,Menus,ActnMan, Vcl.Graphics,XMLDoc,
  cxTextEdit,cxCalendar,cxGrid,ComCtrls,KadirMenus,cxGridDBTableView,cxGridDBBandedTableView,
  cxGridCustomView,cxCustomData,cxImageComboBox,cxFilter,cxGridExportLink,ShellApi,Winapi.Windows,
  cxCheckBox,cxEdit,cxGroupBox,dxLayoutContainer,cxGridStrs, cxFilterConsts,cxCheckGroup,
  cxFilterControlStrs,cxGridPopupMenuConsts,cxClasses,System.Variants,
  yardimciIslemlerWS ;


  Const
    yardimciIslemURL = 'https://medula.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';
    yardimciIslemURLTest = 'https://sgkt.sgk.gov.tr/medula/hastane/yardimciIslemlerWS';
    YardimciIslemWSDL = 'https://sgkt.sgk.gov.tr/medula/hastane/yardimciIslemlerWS?wsdl';
    YardimciIslemService = 'YardimciIslemlerService';
    YardimciIslemPort = 'YardimciIslemler';
    ktsHbysKodu : string = 'C740D0288EFAC45FE0407C0A04162BDD';


//type
 // TMethods = (mTest,mGercek);

type

 TYardimciIslem = class(THTTPRIO)
    private
       FMethod : TMethods;
       FHeader : string;
       FUserName : string;
       FPassword : string;
       FXmlOutPath : string;
       FIslemRef : string;
       FBeklemeSuresi : integer;
       FDamarIziDogrulamaSorguGiris : DamarIziDogrulamaSorguGirisDVO;
       FDamarIziDogrulamaSorguCevap : DamarIziDogrulamaSorguCevapDVO;
       FTakipAraGiris : TakipAraGirisDVO;
       FTakipAraCevap : TakipAraCevapDVO;
       FYurtDisiYardimHakkiGetirGiris : YurtDisiYardimHakkiGetirGirisDVO;
       FYurtDisiYardimHakkiGetirCevap : YurtDisiYardimHakkiGetirCevapDVO;

       procedure setMethod(const value : TMethods);
       function getMethod : TMethods;
       procedure setUsername(const value : string);
       procedure setPassword(const value : string);


       procedure setDamarIziDogrulamaSorguGiris(const value : DamarIziDogrulamaSorguGirisDVO);
       procedure setDamarIziDogrulamaSorguCevap(const value : DamarIziDogrulamaSorguCevapDVO);
       procedure setTakipAraGiris (const value : takipAraGirisDVO);
       procedure setTakipAraCevap(const value : takipAraCevapDVO);
       procedure setYurtDisiYardimHakkiGetirGiris(const value : YurtDisiYardimHakkiGetirGirisDVO);
       procedure setYurtDisiYardimHakkiGetirCevap(const value : YurtDisiYardimHakkiGetirCevapDVO);

       function getUsername : string;
       function getPassword : string;

       function getDamarIziDogrulamaSorguGiris : DamarIziDogrulamaSorguGirisDVO;
       function getDamarIziDogrulamaSorguCevap : DamarIziDogrulamaSorguCevapDVO;
       function getTakipAraGiris : takipAraGirisDVO;
       function getTakipAraCevap : takipAraCevapDVO;
       function getYurtDisiYardimHakkiGetirGiris : YurtDisiYardimHakkiGetirGirisDVO;
       function getYurtDisiYardimHakkiGetirCevap : YurtDisiYardimHakkiGetirCevapDVO;

       procedure Head;

    protected
    public
       procedure DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);override;
       procedure DoAfterExecute(const MethodName: string; SOAPResponse: TStream);override;
       CONSTRUCTOR Create(AOwner: TComponent); override;
       function DamarIziDogrulamaSorgula : Boolean;
       function TakipAra : Boolean;
       function yurtDisiYardimHakkiGetir : Boolean;
    published
       property Method : TMethods read getMethod write setMethod;
       property Header : string read FHeader write FHeader;
       property UserName : string read getUsername write setUsername;
       property Password : string read getPassword write setPassword;
       property XmlOutPath : string read FXmlOutPath write FXmlOutPath;
       property IslemRef : string read FIslemRef write FIslemRef;
       property BeklemeSuresi : integer read FBeklemeSuresi write FBeklemeSuresi;
       property DamarIziDogrulamaSorguGiris : DamarIziDogrulamaSorguGirisDVO read getDamarIziDogrulamaSorguGiris write setDamarIziDogrulamaSorguGiris;
       property DamarIziDogrulamaSorguCevap : damarIziDogrulamaSorguCevapDVO read getDamarIziDogrulamaSorguCevap write setDamarIziDogrulamaSorguCevap;
       property takipAraGiris : takipAraGirisDVO read getTakipAraGiris write setTakipAraGiris;
       property takipAraCevap : takipAraCevapDVO read getTakipAraCevap write setTakipAraCevap;
       property YurtDisiYardimHakkiGetirGiris : YurtDisiYardimHakkiGetirGirisDVO read getYurtDisiYardimHakkiGetirGiris write setYurtDisiYardimHakkiGetirGiris;
       property YurtDisiYardimHakkiGetirCevap : YurtDisiYardimHakkiGetirCevapDVO read getYurtDisiYardimHakkiGetirCevap write setYurtDisiYardimHakkiGetirCevap;

 end;




procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Nokta', [TYardimciIslem]);
end;


constructor TYardimciIslem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDamarIziDogrulamaSorguGiris := damarIziDogrulamaSorguGirisDVO.Create;
  FTakipAraGiris := takipAraGirisDVO.Create;
  FYurtDisiYardimHakkiGetirGiris := yurtDisiYardimHakkiGetirGirisDVO.Create;
  Self.Method := mGercek;
end;

function TYardimciIslem.DamarIziDogrulamaSorgula: Boolean;
var
  sql , s ,ss : string;
  x,y : integer;
begin
    Result := False;
    DamarIziDogrulamaSorguCevap := damarIziDogrulamaSorguCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,yardimciIslemURLTest,yardimciIslemURL);
      DamarIziDogrulamaSorguCevap := (self as YardimciIslemler).damarIziDogrulamaSorgu(DamarIziDogrulamaSorguGiris);
      Result := True;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;

end;

function TYardimciIslem.TakipAra: Boolean;
begin
    Result := False;
    takipAraCevap := takipAraCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,yardimciIslemURLTest,yardimciIslemURL);
      takipAraGiris.ktsHbysKodu := ktsHbysKodu;
      takipAraCevap := (self as YardimciIslemler).takipAra(takipAraGiris);
      Result := True;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;
end;


function TYardimciIslem.yurtDisiYardimHakkiGetir: Boolean;
var
  sql , s ,ss : string;
  x,y : integer;
begin
    Result := False;
    YurtDisiYardimHakkiGetirCevap := yurtDisiYardimHakkiGetirCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,yardimciIslemURLTest,yardimciIslemURL);
      YurtDisiYardimHakkiGetirCevap := (self as YardimciIslemler).yurtDisiYardimHakkiGetir(YurtDisiYardimHakkiGetirGiris);
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;

end;

procedure TYardimciIslem.DoAfterExecute(const MethodName: string; SOAPResponse: TStream);
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

procedure TYardimciIslem.DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);
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

    StrList1.text := StringReplace(StrList1.text,'<takipAra xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:takipAra>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</takipAra>','</ser:takipAra>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<damarIziDogrulamaSorgu xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:damarIziDogrulamaSorgu>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</damarIziDogrulamaSorgu>','</ser:damarIziDogrulamaSorgu>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<yurtDisiYardimHakkiGetir xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:yurtDisiYardimHakkiGetir>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</yurtDisiYardimHakkiGetir>','</ser:yurtDisiYardimHakkiGetir>',[RfReplaceAll]);

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


function TYardimciIslem.getUsername: string;
var
 Head : string;
begin
    Result := FUserName;
end;

procedure TYardimciIslem.Head;
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


procedure TYardimciIslem.setDamarIziDogrulamaSorguCevap(
  const value: DamarIziDogrulamaSorguCevapDVO);
begin
    FDamarIziDogrulamaSorguCevap := value;
end;

procedure TYardimciIslem.setDamarIziDogrulamaSorguGiris(
  const value: DamarIziDogrulamaSorguGirisDVO);
begin
   FDamarIziDogrulamaSorguGiris := value;
end;


procedure TYardimciIslem.setYurtDisiYardimHakkiGetirCevap(
  const value: YurtDisiYardimHakkiGetirCevapDVO);
begin
    FYurtDisiYardimHakkiGetirCevap := value;
end;

procedure TYardimciIslem.setYurtDisiYardimHakkiGetirGiris(
  const value: YurtDisiYardimHakkiGetirGirisDVO);
begin
   FYurtDisiYardimHakkiGetirGiris := value;
end;



procedure TYardimciIslem.setMethod(const value: TMethods);
begin
  FMethod := value;
  Self.WSDLLocation := YardimciIslemWSDL;
  Self.Service := YardimciIslemService;
  Self.Port := YardimciIslemPort;
end;


function TYardimciIslem.getDamarIziDogrulamaSorguCevap: DamarIziDogrulamaSorguCevapDVO;
begin
    Result := FDamarIziDogrulamaSorguCevap;
end;

function TYardimciIslem.getDamarIziDogrulamaSorguGiris: DamarIziDogrulamaSorguGirisDVO;
begin
    Result := FDamarIziDogrulamaSorguGiris;
end;


function TYardimciIslem.getYurtDisiYardimHakkiGetirCevap: YurtDisiYardimHakkiGetirCevapDVO;
begin
    Result := FYurtDisiYardimHakkiGetirCevap;
end;

function TYardimciIslem.getYurtDisiYardimHakkiGetirGiris: YurtDisiYardimHakkiGetirGirisDVO;
begin
    Result := FYurtDisiYardimHakkiGetirGiris;
end;



function TYardimciIslem.getMethod: TMethods;
begin
    Result := FMethod;
end;

function TYardimciIslem.getPassword: string;
begin
    Result := FPassword;
end;


function TYardimciIslem.getTakipAraCevap: takipAraCevapDVO;
begin
  Result := FTakipAraCevap;
end;

function TYardimciIslem.getTakipAraGiris: takipAraGirisDVO;
begin
   Result := FTakipAraGiris;
end;

procedure TYardimciIslem.setPassword(const value: string);
begin
    FPassword := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

procedure TYardimciIslem.setTakipAraCevap(const value: takipAraCevapDVO);
begin
   FTakipAraCevap := value;
end;

procedure TYardimciIslem.setTakipAraGiris(const value: takipAraGirisDVO);
begin
   FTakipAraGiris := value;
end;

procedure TYardimciIslem.setUsername(const value: string);
begin
    FUserName := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;





end.
