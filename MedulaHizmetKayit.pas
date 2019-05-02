unit MedulaHizmetKayit;
interface

uses
  SysUtils, Classes, Controls, StdCtrls,Dialogs,Messages,cxButtonEdit,SOAPHTTPClient,IdHTTP,SOAPHTTPTrans,
  forms,adodb,ImgList,Para,strUtils,ExtCtrls, Math,db,buttons, Types, kadirType,cxButtons,
  registry, ActnList,Menus,ActnMan, Vcl.Graphics,XMLDoc,dxmdaset,Wininet,
  cxTextEdit,cxCalendar,cxGrid,ComCtrls,KadirMenus,cxGridDBTableView,cxGridDBBandedTableView,
  cxGridCustomView,cxCustomData,cxImageComboBox,FScxGrid,cxFilter,cxGridExportLink,ShellApi,Winapi.Windows,
  cxCheckBox,cxEdit,cxGroupBox,dxLayoutContainer,cxGridStrs, cxFilterConsts,cxCheckGroup,
  cxFilterControlStrs,cxGridPopupMenuConsts,cxClasses,System.Variants,
  hizmetKayitIslemleriWS ;


  Const
    hizmetKayitURL = 'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';
    hizmetKayitTestURL = 'https://sgkt.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS';
    ktsHbysKodu : string = 'C740D0288EFAC45FE0407C0A04162BDD';
    WSDL = 'https://medula.sgk.gov.tr/medula/hastane/hizmetKayitIslemleriWS?wsdl';
    _Service_ = 'HizmetKayitIslemleriServiceService';
    _Port_ = 'HizmetKayitIslemleriServicePort';

type
  TMethods = (mTest,mGercek);

type

 THizmetKayit = class(THTTPRIO)
    private
       FMethod : TMethods;
       FHeader : string;
       FUserName : string;
       FPassword : string;
       FXmlOutPath : string;
       FIslemRef : string;
       FBeklemeSuresi : integer;
       FGirisParametre : hizmetKayitGirisDVO;
       FGirisSil : hizmetIptalGirisDVO;
       FCevapSil : hizmetIptalCevapDVO;
       FCevap : hizmetKayitCevapDVO;
       FHizmetOkuGiris : HizmetOkuGirisDVO;
       FHizmetOkuCevap : HizmetOkuCevapDVO;
       FTimeOut : integer;


       procedure setMethod(const value : TMethods);
       function getMethod : TMethods;
       procedure setUsername(const value : string);
       procedure setPassword(const value : string);
       procedure setGiris(const value : hizmetKayitGirisDVO);
       procedure setCevap(const value : hizmetKayitCevapDVO);
       procedure setGirisSil(const value : hizmetIptalGirisDVO);
       procedure setCevapSil(const value : hizmetIptalCevapDVO);


       function getUsername : string;
       function getPassword : string;
       function getGiris : hizmetKayitGirisDVO;
       function getCevap : hizmetKayitCevapDVO;
       function getGirisSil : hizmetIptalGirisDVO;
       function getCevapSil : hizmetIptalCevapDVO;
       procedure Head;

    protected
    public
       procedure DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);override;
       procedure DoAfterExecute(const MethodName: string; SOAPResponse: TStream);override;
//       function  Send(const ASrc: TStream): Integer;override;
       CONSTRUCTOR Create(AOwner: TComponent); override;
       function HizmetKaydet(var hatali : TstringList ; var RxKayitliIslem : TdxMemData) : String;
       function HizmetIptal : Boolean;
       function HizmetOku : Boolean;
    published
       property Method : TMethods read getMethod write setMethod;
       property Header : string read FHeader write FHeader;
       property UserName : string read getUsername write setUsername;
       property Password : string read getPassword write setPassword;
       property XmlOutPath : string read FXmlOutPath write FXmlOutPath;
       property IslemRef : string read FIslemRef write FIslemRef;
       property BeklemeSuresi : integer read FBeklemeSuresi write FBeklemeSuresi;
       property GirisParametre : hizmetKayitGirisDVO read getGiris write setGiris;
       property GirisSil : hizmetIptalGirisDVO read getGirisSil write setGirisSil;
       property Cevap : hizmetKayitCevapDVO read FCevap write FCevap;
       property CevapSil : hizmetIptalCevapDVO read FCevapSil write FCevapSil;
       property HizmetOkuGiris : HizmetOkuGirisDVO read FHizmetOkuGiris write FHizmetOkuGiris;
       property HizmetOkuCevap : HizmetOkuCevapDVO read FHizmetOkuCevap write FHizmetOkuCevap;
       property TimeOut : integer read FTimeOut write FTimeOut Default 15;
 end;







procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Nokta', [THizmetKayit]);
end;


constructor THizmetKayit.Create(AOwner: TComponent);
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

  FGirisParametre := hizmetKayitGirisDVO.Create;
//  FGirisParametre.yeniDoganBilgisi := yeniDoganBilgisiDVO.Create;
  FGirisSil := hizmetIptalGirisDVO.Create;
  FHizmetOkuGiris := hizmetOkuGirisDVO.Create;
  Self.Method := mGercek;
end;

procedure THizmetKayit.DoAfterExecute(const MethodName: string; SOAPResponse: TStream);
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

procedure THizmetKayit.DoBeforeExecute(const MethodName: string;SOAPRequest: TStream);
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
    StrList1.text := StringReplace(StrList1.text,'<hizmetKayit xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetKayit>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hizmetKayit>','</ser:hizmetKayit>',[RfReplaceAll]);

    StrList1.text := StringReplace(StrList1.text,'<hizmetOku xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetOku>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hizmetOku>','</ser:hizmetOku>',[RfReplaceAll]);


    StrList1.text := StringReplace(StrList1.text,'<hizmetIptal xmlns="http://servisler.ws.gss.sgk.gov.tr">','<ser:hizmetIptal>',[RfReplaceAll]);
    StrList1.text := StringReplace(StrList1.text,'</hizmetIptal>','</ser:hizmetIptal>',[RfReplaceAll]);

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
procedure THizmetKayit.BeforePost(const HTTPReqResp: THTTPReqResp;
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
function THizmetKayit.getUsername: string;
var
 Head : string;
begin
    Result := FUserName;
end;

procedure THizmetKayit.Head;
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

procedure THizmetKayit.setCevap(const value: hizmetKayitCevapDVO);
begin
  FCevap := value;
end;

procedure THizmetKayit.setCevapSil(const value: hizmetIptalCevapDVO);
begin
  FCevapSil := value;
end;

procedure THizmetKayit.setGiris(const value: hizmetKayitGirisDVO);
begin
  FGirisParametre := value;
end;

procedure THizmetKayit.setGirisSil(const value: hizmetIptalGirisDVO);
begin
  FGirisSil := value;
end;


procedure THizmetKayit.setMethod(const value: TMethods);
begin
  FMethod := value;
  Self.WSDLLocation := WSDL;
  Self.Service := _Service_;
  Self.Port := _Port_;
end;



function THizmetKayit.getCevap: hizmetKayitCevapDVO;
begin
  Result := FCevap;
end;

function THizmetKayit.getCevapSil: hizmetIptalCevapDVO;
begin
   Result := FCevapSil;
end;

function THizmetKayit.getGiris: hizmetKayitGirisDVO;
begin
  Result := FGirisParametre;
end;

function THizmetKayit.getGirisSil: hizmetIptalGirisDVO;
begin
  Result := FGirisSil;
end;

function THizmetKayit.getMethod: TMethods;
begin
    Result := FMethod;
end;

function THizmetKayit.getPassword: string;
begin
    Result := FPassword;
end;


procedure THizmetKayit.setPassword(const value: string);
begin
    FPassword := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

procedure THizmetKayit.setUsername(const value: string);
begin
    FUserName := value;
    if (FUserName <> '') and (FPassword <> '') then Head;
end;

function THizmetKayit.HizmetKaydet (var hatali : TstringList ; var RxKayitliIslem : TdxMemData) : String;
var
 i,j,a,b : integer;
 _islemNo_,refNo : string;
begin
    Result := '';
    Cevap := hizmetKayitCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,hizmetKayitTestURL,hizmetKayitURL);
      GirisParametre.ktsHbysKodu := ktsHbysKodu;
      Cevap := (self as HizmetKayitIslemleriService).hizmetKayit(GirisParametre);
      Result := Cevap.sonucKodu;

      if (Cevap.sonucKodu = '0000') or (Cevap.sonucKodu = '9000')
      Then begin
        if Cevap.sonucKodu = '9000' then
        begin
          ShowMessage('Ýþlem Baþarýlý');
          Result := '0000';
        end;

        j := length(FCevap.islemBilgileri);
        for i := 0 to j - 1 do
        Begin
          RxKayitliIslem.Append;
          RxKayitliIslem.FieldByName('hizmetSunucuRefNo').AsString := Cevap.islemBilgileri[i].hizmetSunucuRefNo;
          RxKayitliIslem.FieldByName('islemSiraNo').AsString := Cevap.islemBilgileri[i].islemSiraNo;
          RxKayitliIslem.Post;
        End;

      End
      Else
      begin
             result := Cevap.sonucKodu + ' ' + Cevap.sonucMesaji;
             j := length(FCevap.hataliKayitlar);

             if Cevap.hataliKayitlar <> nil
             Then
             for i := 0 to j - 1 do
             Begin
                try
                  if Cevap.hataliKayitlar[i].hataKodu = '1229'
                  Then Begin
                       a := pos('önce', string(Cevap.hataliKayitlar[i].hataMesaji));
                       a := a + 4;
                       b := pos('numaralý',string(Cevap.hataliKayitlar[i].hataMesaji));
                       b := b -1;
                       _islemNo_ := trim(copy(Cevap.hataliKayitlar[i].hataMesaji,a,b-a));
                       refNo := Cevap.hataliKayitlar[i].hizmetSunucuRefNo;
                  End;

                  Hatali.Add(Cevap.sonucKodu +'-'+ Cevap.takipNo +'-'+ Cevap.hataliKayitlar[i].hataMesaji +
                                       '- [ islemSiraNo Meduladan Alýnýp Sisteme Yazýldý , Ok..]');


                except
                end;
             End
             Else Hatali.Add(Cevap.sonucKodu+' '+Cevap.sonucMesaji);

      end;

    except
      on E: SysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := '';
      end;
    end;
end;


function THizmetKayit.HizmetOku: Boolean;
begin
    Result := False;
    HizmetOkuCevap := hizmetOkuCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,hizmetKayitTestURL,hizmetKayitURL);
      HizmetOkuGiris.ktsHbysKodu := ktsHbysKodu;
      HizmetOkuCevap := (self as HizmetKayitIslemleriService).hizmetOku(HizmetOkuGiris);
      Result := True;
    except
      on E : sysUtils.Exception do
      begin
        Showmessage(E.Message);
        Result := False;
      end;
    end;

end;

function THizmetKayit.HizmetIptal : Boolean;
begin
    Result := False;
    CevapSil := hizmetIptalCevapDVO.Create;
    try
      Application.ProcessMessages;
      url := ifThen(FMethod = mTest,hizmetKayitTestURL,hizmetKayitURL);
      GirisSil.ktsHbysKodu := ktsHbysKodu;
      CevapSil := (self as HizmetKayitIslemleriService).hizmetIptal(GirisSil);
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
