unit kadirClass;

interface
uses Classes, Windows, SysUtils, Math , registry ,adodb , dialogs , db , StdCtrls;

const
  Soh = #1;
  Stx = #2;
  Etx = #3;
  Eot = #4;
  Enq = #5;
  Ack = #6;
  Nack = #21;
  Etb = #23;
  Cr = #13;
  Lf = #10;
  CrLf = #13#10;
  FD: Char = '|';
  Syn = #22;




type
   TKabulBilgi = record
    dosyaNo : string;
    gelisNo : string;
    detayNo : string;
    code : string;
    grup : string;
    kabulTarihi : string;
    kabulEden : string;
    durum : string;
    Icode : string;
    name : string;
    sira : string;
    yas : string;
    cins : string;
    KabulNo : string;
end;

type
   SonucBilgisi = record
    KabulNo : string;
    TestNo : string;
    Sonuc : string;
   end;
   ArraySonucBilgisi = array of SonucBilgisi;


type
  TRandevuBilgi = Record
    StartTime : TDatetime;
    EndTime : TDatetime;
    Doktor : string;
    Tc : string;
    Tel : string;
    Bilgi : string;
    durum : string;

  End;


   cihazlar = (cELEC2010,cKX21N,cERMA,cAmis60,cIntegra400,cMYTIC,cBT3000Plus);

  LabIslemError = class(Exception);
 // raise LabIslemError.Create('Unknown 102');

  TLabIslemleri = class(TObject)
    private
      Fsonuclar : ArraySonucBilgisi;
      FKabulBilgi : TKabulBilgi;
      Fconnectionstring : string;
      Fcihaz : cihazlar;
      FOnKaydet : TNotifyEvent;
      FOnGuncelle : TNotifyEvent;
    protected
      function CihazTestKodu_To_LisTestKodu(code : string) : string;
    public
      constructor Create;
      destructor Destroy; override;
      function SonucKaydet : string;
      function SonucGoster : Tdataset;
      function SonucGosterKabulden : Tdataset;
      function SonucDoldur(s : string) : ArraySonucBilgisi;
      function KabulEt : string;
      procedure Kaydet;
      property  OnGuncelle : TNotifyEvent read FOnGuncelle write FOnGuncelle;
      property sonuclar : ArraySonucBilgisi read Fsonuclar write Fsonuclar;
      property KabulBilgi : TKabulBilgi read FKabulbilgi write FKabulbilgi;
      property connectionstring : string read Fconnectionstring write Fconnectionstring;
      property cihaz : cihazlar read Fcihaz write Fcihaz;

    published
      property  OnKaydet : TNotifyEvent read FOnKaydet write FOnKaydet;

  end;

(*
  RandevuIslemleri = class(TObject)
    private
    protected
      function CihazTestKodu_To_LisTestKodu(code : string) : string;
    public
      constructor Create;
      destructor Destroy; override;
      function RandevuKaydet(R : TRandevuBilgi) : string;

  end;
  *)

PROCEDURE Register;
 
IMPLEMENTATION
 
PROCEDURE Register;
BEGIN
   RegisterComponents('Samples', [TLabIslemleri]);
END;



var
  ado : TADOQuery;
  conn : TADOConnection;

constructor LabIslemleri.Create;
var
  reg : TREGISTRy;
begin
    inherited Create;
    {
   reg := Tregistry.Create;
   reg.OpenKey('Software\NOKTA\NOKTA',True);

   Fconnectionstring := 'Provider=SQLOLEDB.1;Password=1;Persist Security Info=False;User ID=sa;Initial Catalog=KLINIK;Data Source='
                         + reg.ReadString('servername');


   conn := TADOConnection.Create(nil);
   conn.ConnectionString := Fconnectionstring;
   conn.LoginPrompt := false;
   conn.Connected := True;
   ado := TADOQuery.Create(nil);
   ado.Connection := conn;

   reg.CloseKey;
   reg.Free;
   }
end;

destructor LabIslemleri.Destroy;
begin
  try
    conn.Close;
    conn.Free;
    ado.Free;
  finally
    inherited;
  end;
end;

function LabIslemleri.SonucDoldur(s : string) : ArraySonucBilgisi;
var
  Str , _c_ : String;
  konum , adet , testNumber , k1,k2,k3 , _row_ : integer;
  memosonuc : TStringList;
  _s_ : ArraySonucBilgisi;
begin

   if Fcihaz = cELEC2010
   Then Begin
     memosonuc := TStringList.Create;
     memosonuc.Clear;
     memosonuc.add(s);
     memosonuc.Text := StringReplace(memosonuc.Text,'<STX>',Stx,[rfReplaceAll]);
     memosonuc.Text := StringReplace(memosonuc.Text,'<CR>',Cr,[rfReplaceAll]);
     memosonuc.Text := StringReplace(memosonuc.Text,'<LF>',Lf,[rfReplaceAll]);
    // memo.lines.Add(s);

     for _row_ := 0 to memosonuc.Count - 1 do
     begin
        if pos(stx+'3O',memosonuc.Strings[_row_]) > 0
        Then Begin
         konum := pos('O|1|',memosonuc.Strings[_row_]) + 4;
         k1 := pos('|',copy(memosonuc.Strings[_row_],konum,1000))-1;
         FKabulBilgi.KabulNo := copy(memosonuc.Strings[_row_],konum,k1);
        end;

        if (pos('R',memosonuc.Strings[_row_]) > 0) and (pos('|^^^',memosonuc.Strings[_row_]) > 0)
        Then Begin
            testNumber := strtoint(copy(memosonuc.Strings[_row_],pos('R',memosonuc.Strings[_row_])+2,1));
            SetLength(_s_,testNumber);
            _s_[testNumber-1].KabulNo := FKabulBilgi.KabulNo;

            konum := pos('|^^^',memosonuc.Strings[_row_]) + 4;
            k1 := pos('^^0|',memosonuc.Strings[_row_]);
            k2 := k1 - konum;
            _s_[testNumber-1].TestNo :=  copy(memosonuc.Strings[_row_],konum,k2);

            konum := pos('^^0|',memosonuc.Strings[_row_]) + 4;
            k1 :=   pos('|',copy(memosonuc.Strings[_row_],konum,1000))-1;
            _s_[testNumber-1].Sonuc := copy(memosonuc.Strings[_row_],konum,k1);
        end;
     end;  //for end
      result := _s_;
   End; // cELEC2010 end





end;


function LabIslemleri.CihazTestKodu_To_LisTestKodu(code : string) : string;
var
  sql : string;
begin
   sql := 'select parametreadi from laboratuvar_parametre where CihazTestKodu = ' + QuotedStr(code);
   ado.SQL.Text := sql;
   ado.Open;
   result := ado.Fields[0].AsString;
   ado.Close;
end;


function LabIslemleri.SonucGoster : Tdataset;
var
  sql : string;
  i : integer;
begin
     sql := 'exec sp_LabSonucYazdir ' + QuotedStr(FKabulBilgi.dosyaNo) + ',' + FKabulBilgi.gelisNo + ',' + FKabulBilgi.detayNo + ',' +
             QuotedStr('E') + ',' + QuotedStr('') + ',' + QuotedStr('E');

     ado.SQL.Text := sql;
     ado.Open;

     if not ado.Eof
     Then begin
       result := ado;
     End
     Else ShowMessage('Labaratuvar Bilgisi Yok');

     ado.Close;

end;


function LabIslemleri.SonucGosterKabulden : Tdataset;
var
  sql : string;
  i : integer;
begin
     sql := 'select * from laboratuvar_sonuc where barkodno = ' + QuotedStr(FKabulBilgi.KabulNo);

     ado.SQL.Text := sql;
     ado.Open;

     if not ado.Eof
     Then begin
       result := ado;
     End
     Else ShowMessage('Labaratuvar Bilgisi Yok');

     ado.Close;

end;

procedure LabIslemleri.Kaydet;
begin
  //ShowMessage('xxx');
     if Assigned(OnKaydet) then OnKaydet(Self);
end;

function LabIslemleri.SonucKaydet : String;
var
  sql : string;
  i : integer;
begin

        Kaydet;
         {

   for i := 0 to length(FSonuclar) - 1 do
   begin
     try
        if CihazTestKodu_To_LisTestKodu(Fsonuclar[i].TestNo) = ''
        Then ShowMessage(Fsonuclar[i].TestNo + ' test no programda tanýmlý deðil');

        sql := 'update laboratuvar_sonuc ' +
               ' set sonuc1 = ' + QuotedStr(Fsonuclar[i].Sonuc) +
               ' where barkodNo = ' + QuotedStr(Fsonuclar[i].KabulNo) +
               ' and parametreadi = ' + QuotedStr(CihazTestKodu_To_LisTestKodu(Fsonuclar[i].TestNo));

       ado.SQL.Text := sql;
       ado.ExecSQL;

   //    datalar.QuerySelect(ado,sql);
       if Assigned(FOnKaydet) then OnKaydet(Self);

     except
        result := '0001';
     end;
   end;
          }
end;


function LabIslemleri.Kabulet : String;
var
  sql : string;
  ado : TADOQuery;
  kabulNo : string;
begin
   try
        sql := ' exec sp_YeniLabKabulNoAl ';
        ado.SQL.Text := sql;
        ado.Open;
        kabulNO := ado.Fields[0].AsString;
        ado.Close;

         sql := 'exec sp_YeniLabKabul ' +
                #39 + FKabulBilgi.dosyaNo + #39 + ',' +
                FKabulBilgi.gelisNo + ',' +
                FKabulBilgi.detayNo + ',' +
                #39 + FKabulBilgi.code + #39 + ',' +
                #39 + FKabulBilgi.grup + #39 + ',' +
                #39 + FKabulBilgi.kabulTarihi + #39 + ',' +
                #39 + FKabulBilgi.kabulEden + #39 + ',' +
                #39 + FKabulBilgi.durum + #39 + ',' +
                #39 + FKabulBilgi.Icode + #39 + ',' +
                #39 + FKabulBilgi.name + #39 + ',' +
                #39 + FKabulBilgi.sira + #39 + ',' +
                #39 + kabulNo + #39;

        ado.SQL.Text := sql;
        ado.ExecSQL;
        result := '1'

   except
      result := '0001';

   end;

   ado.close;

end;


end.
 