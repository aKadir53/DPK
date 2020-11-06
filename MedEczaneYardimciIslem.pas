unit MedEczaneYardimciIslem;
interface

uses
  SysUtils, Classes, Controls, StdCtrls,Dialogs,Messages,SOAPHTTPClient,IdHTTP,SOAPHTTPTrans,
  forms,strUtils,ExtCtrls, Math, Types, kadirType,
  registry, Menus, Vcl.Graphics,XMLDoc,
  ComCtrls,
  ShellApi,Winapi.Windows,
  System.Variants,
  saglikTesisiEczaneYardimciIslemleriWS;


  Const
    yardimciIslemURL = 'https://medeczane.sgk.gov.tr/medula/eczane/saglikTesisiYardimciIslemleriWS';
    yardimciIslemURLTest = 'https://sgkt.sgk.gov.tr/medula/eczane/saglikTesisiReceteIslemleriWS';
    YardimciIslemWSDL = 'https://sgkt.sgk.gov.tr/medula/eczane/saglikTesisiReceteIslemleriWS?wsdl';
    YardimciIslemService = 'SaglikTesisiYardimciIslemleriService';
    YardimciIslemPort = 'SaglikTesisiYardimciIslemleri';
    ktsHbysKodu : string = 'C740D0288EFAC45FE0407C0A04162BDD';


(*
type
  TMethods = (mTest,mGercek);
  *)

type

 TMedEczaneYardimciIslem = class(THTTPRIO)
    private
       FMethod : TMethods;
       FHeader : string;
       FUserName : string;
       FPassword : string;
       FXmlOutPath : string;
       FIslemRef : string;
       FBeklemeSuresi : integer;
       FetkinMaddeSutListesiSorguIstekGiris : etkinMaddeSutListesiSorguIstekDVO;
       FetkinMaddeSutListesiSorguCevap : etkinMaddeSutListesiSorguCevapDVO;
       FRaporTeshisListesiSorguIstekGiris : RaporTeshisListesiSorguIstekDVO;
       FRaporTeshisListesiSorguCevap  : RaporTeshisListesiSorguCevapDVO;

       procedure setMethod(const value : TMethods);
       function getMethod : TMethods;
       procedure setUsername(const value : string);
       procedure setPassword(const value : string);

       procedure setetkinMaddeSutListesiSorguIstekGiris(const value : etkinMaddeSutListesiSorguIstekDVO);
       procedure setetkinMaddeSutListesiSorguIstekCevap(const value : etkinMaddeSutListesiSorguCevapDVO);

       procedure setRaporTeshisListesiSorguIstekGiris (const value : RaporTeshisListesiSorguIstekDVO);
       procedure setRaporTeshisListesiSorguCevap (const value : RaporTeshisListesiSorguCevapDVO);


       function getUsername : string;
       function getPassword : string;


       function getetkinMaddeSutListesiSorguIstekGiris : etkinMaddeSutListesiSorguIstekDVO;
       function getetkinMaddeSutListesiSorguIstekCevap : etkinMaddeSutListesiSorguCevapDVO;

       function getRaporTeshisListesiSorguIstekGiris : RaporTeshisListesiSorguIstekDVO;
       function getRaporTeshisListesiSorguCevap : RaporTeshisListesiSorguCevapDVO;

       procedure Head;

    protected
    public
       procedure DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);override;
       procedure DoAfterExecute(const MethodName: string; SOAPResponse: TStream);override;
       CONSTRUCTOR Create(AOwner: TComponent); override;
       destructor Destroy; override;
       function EtkinmaddeSUTKuraligetir : string;
       function raporTeshisListesiGetir : string;
    published
       property Method : TMethods read getMethod write setMethod;
       property Header : string read FHeader write FHeader;
       property UserName : string read getUsername write setUsername;
       property Password : string read getPassword write setPassword;
       property XmlOutPath : string read FXmlOutPath write FXmlOutPath;
       property IslemRef : string read FIslemRef write FIslemRef;
       property BeklemeSuresi : integer read FBeklemeSuresi write FBeklemeSuresi;
       property etkinMaddeSutListesiSorguIstekGiris : etkinMaddeSutListesiSorguIstekDVO read getetkinMaddeSutListesiSorguIstekGiris write setetkinMaddeSutListesiSorguIstekGiris;
       property etkinMaddeSutListesiSorguCevap : etkinMaddeSutListesiSorguCevapDVO read getetkinMaddeSutListesiSorguIstekCevap write setetkinMaddeSutListesiSorguIstekCevap;
       property RaporTeshisListesiSorguIstekGiris : RaporTeshisListesiSorguIstekDVO read getRaporTeshisListesiSorguIstekGiris write setRaporTeshisListesiSorguIstekGiris;
       property RaporTeshisListesiSorguCevap  : RaporTeshisListesiSorguCevapDVO read getRaporTeshisListesiSorguCevap write setRaporTeshisListesiSorguCevap;

 end;




procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Nokta', [TMedEczaneYardimciIslem]);
end;


constructor TMedEczaneYardimciIslem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FetkinMaddeSutListesiSorguIstekGiris := etkinMaddeSutListesiSorguIstekDVO.Create;
  FetkinMaddeSutListesiSorguCevap:= etkinMaddeSutListesiSorguCevapDVO.Create;
  FRaporTeshisListesiSorguIstekGiris := raporTeshisListesiSorguIstekDVO.Create;
  FRaporTeshisListesiSorguCevap:= raporTeshisListesiSorguCevapDVO.Create;
  Self.Method := mGercek;
end;

(*
function TYardimciIslem.DamarIziDogrulamaSorgula: Boolean;
begin
    Result := False;
   // DamarIziDogrulamaSorguCevap := damarIziDogrulamaSorguCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,yardimciIslemURLTest,yardimciIslemURL);
      FDamarIziDogrulamaSorguCevap := (self as YardimciIslemler).damarIziDogrulamaSorgu(DamarIziDogrulamaSorguGiris);
      Result := True;
    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;

end;
  *)

destructor TMedEczaneYardimciIslem.Destroy;
begin
  FreeAndNil(FetkinMaddeSutListesiSorguIstekGiris);
  FreeAndNil(FetkinMaddeSutListesiSorguCevap);
  FreeAndNil(FRaporTeshisListesiSorguIstekGiris);
  FreeAndNil(FRaporTeshisListesiSorguCevap);
  inherited;
end;




procedure TMedEczaneYardimciIslem.DoAfterExecute(const MethodName: string; SOAPResponse: TStream);
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

procedure TMedEczaneYardimciIslem.DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);
var
  Request: UTF8String;
//  Request1: UTF8String;
  StrList1: TStringList;
//  I : integer;
 // HeaderBegin , HeaderEnd : integer;
//  Header  : Widestring;
//  BodyBegin , BodyEnd , ii ,s : integer;
//  Body , xmlKaydet: TStringList;
begin
  inherited;
  StrList1 := TStringList.Create;
  try
    SetLength(Request, SOAPRequest.Size);
    SOAPRequest.Position := 0;
    SOAPRequest.Read(Request[1], Length(Request));
    StrList1.add(Request);

    StrList1.text := StringReplace(StrList1.text,'<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">',FHeader,[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<etkinMaddeSutListesiSorgula xmlns="http://servisler.ws.eczane.gss.sgk.gov.tr">','<ser:etkinMaddeSutListesiSorgula>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</etkinMaddeSutListesiSorgula>','</ser:etkinMaddeSutListesiSorgula>',[RfReplaceAll]);


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


function TMedEczaneYardimciIslem.EtkinmaddeSUTKuraligetir : String;
begin
      URL := ifThen(URL = '',YardimciIslemURL,URL);
     try
       Application.ProcessMessages;
       FEtkinMaddeSutListesiSorguCevap := (self as SaglikTesisiYardimciIslemleri).etkinMaddeSutListesiSorgula(FetkinMaddeSutListesiSorguIstekGiris);
    //   EMaddeCvp.etkinMaddeSutListesi := Em_Cvp.etkinMaddeSutListesi;
     except
        on E: SysUtils.Exception do
        begin
          //Showmessageskin(E.Message,'','','info');
          exit;
        end;
     end;

     if FEtkinMaddeSutListesiSorguCevap.sonucKodu = '0000'
     then
      result := '0000'
     Else
      result := FEtkinMaddeSutListesiSorguCevap.sonucMesaji;

  //   EM_Gon.Free;
  //   Em_Cvp.Free;

end;

function TMedEczaneYardimciIslem.getUsername: string;
//var
// Head : string;
begin
    Result := FUserName;
end;


procedure TMedEczaneYardimciIslem.Head;
begin
    Header := '<SOAP-ENV:Envelope'+
    ' xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"'+
    ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"'+
    ' xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing"'+
    ' xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"'+
    ' xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd"'+
    ' xmlns:ser="http://servisler.ws.eczane.gss.sgk.gov.tr">'+
    ' <SOAP-ENV:Header>'+
    '  <wsse:Security>'+
    '    <wsse:UsernameToken wsu:Id="SecurityToken-04ce24bd-9c7c-4ca9-9764-92c53b0662c5">'+
    '      <wsse:Username>'+Fusername+'</wsse:Username>'+
    '      <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'+FPassword+'</wsse:Password>'+
    '    </wsse:UsernameToken>'+
    '  </wsse:Security>'+
    ' </SOAP-ENV:Header>';
end;


function TMedEczaneYardimciIslem.raporTeshisListesiGetir: string;
begin
      URL := ifThen(URL = '',YardimciIslemURL,URL);
     try
       Application.ProcessMessages;
       FRaporTeshisListesiSorguCevap := (self as SaglikTesisiYardimciIslemleri).raporTeshisListesiSorgula(FRaporTeshisListesiSorguIstekGiris);
    //   EMaddeCvp.etkinMaddeSutListesi := Em_Cvp.etkinMaddeSutListesi;
     except
        on E: SysUtils.Exception do
        begin
          //Showmessageskin(E.Message,'','','info');
          exit;
        end;
     end;

     if FRaporTeshisListesiSorguCevap.sonucKodu = '0000'
     then
      result := '0000'
     Else
      result := FRaporTeshisListesiSorguCevap.sonucMesaji;

  //   EM_Gon.Free;
  //   Em_Cvp.Free;
end;

procedure TMedEczaneYardimciIslem.setetkinMaddeSutListesiSorguIstekGiris(
  const value: etkinMaddeSutListesiSorguIstekDVO);
begin
   FetkinMaddeSutListesiSorguIstekGiris := value;
end;

procedure TMedEczaneYardimciIslem.setetkinMaddeSutListesiSorguIstekCevap(
  const value: etkinMaddeSutListesiSorguCevapDVO);
begin
   FetkinMaddeSutListesiSorguCevap := value;
end;



procedure TMedEczaneYardimciIslem.setMethod(const value: TMethods);
begin
  FMethod := value;
  Self.WSDLLocation := YardimciIslemWSDL;
  Self.Service := YardimciIslemService;
  Self.Port := YardimciIslemPort;
end;




function TMedEczaneYardimciIslem.getetkinMaddeSutListesiSorguIstekGiris: etkinMaddeSutListesiSorguIstekDVO;
begin
    Result := FetkinMaddeSutListesiSorguIstekGiris;
end;

function TMedEczaneYardimciIslem.getetkinMaddeSutListesiSorguIstekCevap: etkinMaddeSutListesiSorguCevapDVO;
begin
    Result := FetkinMaddeSutListesiSorguCevap;
end;


function TMedEczaneYardimciIslem.getMethod: TMethods;
begin
    Result := FMethod;
end;

function TMedEczaneYardimciIslem.getPassword: string;
begin
    Result := FPassword;
end;




function TMedEczaneYardimciIslem.getRaporTeshisListesiSorguCevap: RaporTeshisListesiSorguCevapDVO;
begin
        Result := FRaporTeshisListesiSorguCevap;
end;

function TMedEczaneYardimciIslem.getRaporTeshisListesiSorguIstekGiris: RaporTeshisListesiSorguIstekDVO;
begin
     Result := FRaporTeshisListesiSorguIstekGiris;
end;

procedure TMedEczaneYardimciIslem.setPassword(const value: string);
begin
    FPassword := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;


procedure TMedEczaneYardimciIslem.setRaporTeshisListesiSorguCevap(
  const value: RaporTeshisListesiSorguCevapDVO);
begin

end;

procedure TMedEczaneYardimciIslem.setRaporTeshisListesiSorguIstekGiris(
  const value: RaporTeshisListesiSorguIstekDVO);
begin

end;

procedure TMedEczaneYardimciIslem.setUsername(const value: string);
begin
    FUserName := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;





end.
