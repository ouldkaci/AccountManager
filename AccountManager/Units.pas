UNIT Units;

INTERFACE

USES
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  CommCtrl;

TYPE
  TFrm = CLASS(TStrings)
  PRIVATE
    { Déclarations privées }
  PUBLIC
    { Déclarations publiques }
  END;

VAR
  Testconnect: Boolean = False;
  Total: Double;
  Scompte: STRING;

FUNCTION Addchar(CONST Source: STRING; Len: Integer; Letr: Char): STRING;
FUNCTION Clerib(Banque: STRING; Agence: STRING; Compte: STRING;
  Rib: STRING): STRING;
PROCEDURE Paramstr_region;
PROCEDURE Paramstr_form(Frm: Tform; W, H: Longint);

FUNCTION TrueFontWidth(Fnt: TFont; CONST Text: STRING): Integer;
PROCEDURE AutoSizeStatusbarPanel(Sb: TStatusBar; Idx: Integer);

FUNCTION FirstOfCurrentMonth: TDateTime;
FUNCTION LastOfCurrentMonth: TDateTime;

FUNCTION Inputcombo(CONST Acaption, Aprompt: STRING; CONST Alist: Tstrings)
  : STRING; { B3 }
PROCEDURE Doincrementalfilter(Dataset: Tdataset;
  CONST Fieldname, Searchterm: STRING); { C2 }

PROCEDURE OcultarSheets(PageControl: TPageControl);
FUNCTION Autoid: STRING;
FUNCTION GetLastID(VAR AQuery: TADOQuery; CONST AField: STRING;
  CONST ATable: STRING): Integer;
FUNCTION Isdate(S: STRING): Boolean;
FUNCTION Appversion(CONST Filename: STRING): STRING;
function FileVerInfo(const Arquivo: String): String;
PROCEDURE Requete(Adocon: Tadoconnection; Sqltxt: STRING;
  Msgshow: Boolean); { C1 }
  Procedure GetScreenResolution( Var ppi_X, ppi_Y: Integer );

IMPLEMENTATION

Procedure GetScreenResolution( Var ppi_X, ppi_Y: Integer );
var
  dc: HDC;
begin
  dc:= GetDC(0);
  try
    ppi_x := GetDeviceCaps( dc, LOGPIXELSX );
    ppi_y := GetDeviceCaps( dc, LOGPIXELSY );
  finally
    ReleaseDC(0, dc);
  end;
end;

PROCEDURE Requete(Adocon: Tadoconnection; Sqltxt: STRING;
  Msgshow: Boolean); { C1 }
BEGIN
  IF Adocon.Connected = True THEN
  BEGIN
    { Création D'un Tadoquery À La Volée }
    WITH Tadoquery.Create(NIL) DO
    BEGIN
      TRY
        { Adoconnection1 Est Un Tadoconnection Connecté
          Sur La Base Dans Laquelle Se Trouve La Table Salaries_Encour }
        Connection := Adocon; // Adocon: Tadoconnection
        Sql.Text := Sqltxt; // Sqltxt:String
        Prepared := True;
        { Execsql Renvoie Le Nombre De Lignes Suppimées, On Peut L'utiliser
          Pour Afficher Un Message }
        Execsql;
      EXCEPT
        ON E: Exception DO
          { Renvoie Le Message D'erreur }
          Messagedlg(E.Message, Mterror, [Mbok], 0);
      END;
      { Libère Le Tadoquery }
      Free;
      IF Msgshow = True THEN
        Showmessage('Opération Terminé');
    END;
  END;
END; { --------------------------------------------------------------------- C1 }

function FileVerInfo(const Arquivo: String): String;
var
  Major, Minor, Release, Build: Integer;
  Zero: DWORD; {a variavel que recebe zero}
  TamanhoVersao: DWORD;
  PDadosVersao: pointer;
  PInfoFixaArquivo: PVSFixedFileInfo;
  TamanhoFixoInfoArquivo: UINT; //Inteiro de 32 bits;
begin
  {Pergunta ao windows tamanho do buffer para alocar a informa??o sobre a
  vers?o}
  TamanhoVersao := GetFileVersionInfoSize(PChar(Arquivo), Zero);
  {Se n?o h informa??es sobre a vers?o}
  if TamanhoVersao = 0 then
  begin
    result := '';
    ShowMessage('Sem informa??es sobre a vers?o');
    exit;
  end;
  {Aloca memria para guardar as informa?oes da vers?o}
  PDadosVersao := AllocMem(TamanhoVersao);
  try
    {Carrega recurso da vers?o do executvel}
    if GetFileVersionInfo(PChar(Arquivo), 0, TamanhoVersao, PDadosVersao) =
    False then
      raise Exception.Create('Impossvel obter informa??es da vers?o');
    {Pega a por??o fixa sobre a vers?o no buffer}
    if VerQueryValue(PDadosVersao, '\', pointer(PInfoFixaArquivo),
    TamanhoFixoInfoArquivo) = False then
    begin
      {Sem informa??es fixas nos recursos do arquivo}
      ShowMessage('Sem informa??es fixas sobre a vers?o');
      result := '';
      exit;
    end;
    {Extrai as informa??es fixas do resource do arquivo}
    Major := PInfoFixaArquivo^.dwFileVersionMS shr 16;
    Minor := PInfoFixaArquivo^.dwFileVersionMS and $FFFF;
    Release := PInfoFixaArquivo^.dwFileVersionLS shr 16;
    Build := PInfoFixaArquivo^.dwFileVersionLS and $FFFF;
  finally
    FreeMem(PDadosVersao);
  end;
  result :=
  IntToStr(Major)+'.'+IntToStr(Minor)+'.'+IntToStr(Release)+'.'+IntToStr(Build);
end;

FUNCTION Appversion(CONST Filename: STRING): STRING;
VAR
  Dwhandle: Thandle;
  Dwsize: Dword;
  Lpdata, Lpdata2: Pointer;
  Uisize: Uint;
BEGIN
  Result := '';
  Dwsize := Getfileversioninfosize(Pchar(Filename), Dwsize);
  IF Dwsize <> 0 THEN
  BEGIN
    Getmem(Lpdata, Dwsize);
    IF Getfileversioninfo(Pchar(Filename), Dwhandle, Dwsize, Lpdata) THEN
    BEGIN
      Uisize := Sizeof(Tvsfixedfileinfo);
      Verqueryvalue(Lpdata, '', Lpdata2, Uisize);
      WITH Pvsfixedfileinfo(Lpdata2)^ DO
        Result := Format('%d.%02d.%02d.%02d', [Hiword(Dwproductversionms),
          Loword(Dwproductversionms), Hiword(Dwproductversionls),
          Loword(Dwproductversionls)]);
    END;
    Freemem(Lpdata, Dwsize);
  END;
END;

FUNCTION Isdate(S: STRING): Boolean;
BEGIN
  TRY
    StrToDate(S);
    Result := True;
  EXCEPT
    Result := False;
  END;
END;

FUNCTION GetLastID(VAR AQuery: TADOQuery; CONST AField: STRING;
  CONST ATable: STRING): Integer;
BEGIN
  Result := -1;
  IF (AField = '') OR (ATable = '') THEN
    Exit;
  TRY
    AQuery.Active := False; // or aQuery.Close;
    AQuery.SQL.Clear;
    AQuery.SQL.Add('Select Last(' + AField + ') FROM ' + ATable);
    AQuery.Active := True; // or aQuery.Open;
    AQuery.First;
    Result := AQuery.Fields.Fields[0].AsInteger;
  FINALLY
    AQuery.Active := False;
    AQuery.SQL.Clear;
  END;
END;

FUNCTION Autoid: STRING;
VAR
  Id: STRING;
BEGIN
  Id := FormatDateTime('ddmmssz', Now);
  Result := Id;
END;

PROCEDURE OcultarSheets(PageControl: TPageControl);
VAR
  IPage: Integer;
BEGIN
  FOR IPage := 0 TO PageControl.PageCount - 1 DO
    PageControl.Pages[IPage].TabVisible := False;
  IF (PageControl.PageCount > 0) THEN
    PageControl.ActivePage := PageControl.Pages[1];
  PageControl.Style := TsButtons;
END;

FUNCTION Addchar(CONST Source: STRING; Len: Integer; Letr: Char): STRING;
VAR
  I: Integer;
BEGIN
  Result := Source;
  FOR I := 1 TO (Len - Length(Source)) DO
    Result := Letr + Result;
END; { ... }

FUNCTION Clerib(Banque, Agence, Compte, Rib: STRING): STRING;
BEGIN
  Banque := Addchar(Banque, 3, '0');
  Agence := Addchar(Agence, 5, '0');
  Compte := Addchar(Compte, 10, '0');
  Rib := Inttostr(97 - (Strtoint64(Agence + Compte) * 100) MOD 97);
  Rib := Banque + Agence + Compte + Addchar(Rib, 2, '0');
  Result := Rib;
END; { ... }

PROCEDURE Paramstr_region;
VAR
  Formatdz: Tformatsettings;
BEGIN
  // Create New Setting And Configure For The Algeria
  // Créer un nouveau paramètre et configurer pour l'Algérie
  WITH Formatsettings DO
    Formatdz := Tformatsettings.Create;
  Formatdz.Decimalseparator := '.';
  Formatdz.Thousandseparator := ' ';
  Formatdz.Currencydecimals := 2;
  Formatdz.Dateseparator := '/';
  Formatdz.Shortdateformat := 'dd/mm/yyyy';
  Formatdz.Longdateformat := 'dd/mm/yyyy';
  Formatdz.Timeseparator := ':';
  Formatdz.Timeamstring := 'Am';
  Formatdz.Timepmstring := 'Pm';
  Formatdz.Shorttimeformat := 'hh:nn';
  Formatdz.Longtimeformat := 'hh:nn:ss';
  Formatdz.Currencystring := 'Dz';
  // Assign The App Region Settings To The Newly Created
  // Attribuer les paramètres de la région à la nouvelle création
  Formatsettings := Formatdz;
  // Application.Updateformatsettings := True;
END; { _______________________________________________________________________ }

PROCEDURE Paramstr_form(Frm: Tform; W, H: Longint);
BEGIN
  // Frm.Width :=  Screen.Width Div 4; //
  // Frm.Height :=  Screen.Height Div 16 * 10;

  Frm.Font.Name := 'Segoe UI';
  Frm.Font.Size := 10;

  // Frm.BorderStyle := bsToolWindow;
  Frm.Scaled := True;
  Frm.Autoscroll := False;
  Frm.Bordericons := Frm.Bordericons - [Bimaximize];
  // Frm.Position := Poscreencenter;

  IF (Screen.Width <> W) THEN
  BEGIN
    Frm.Height := Longint(Frm.Height) * Longint(Screen.Height) DIV H;
    Frm.Width := Longint(Frm.Width) * Longint(Screen.Width) DIV W;
    Frm.Scaleby(W, H);
  END;
  Frm.Constraints.Maxheight := Frm.Height;
  Frm.Constraints.Maxwidth := Frm.Width;
  Frm.Constraints.Minheight := Frm.Height;
  Frm.Constraints.Minwidth := Frm.Width;

END; { _______________________________________________________________________ }

PROCEDURE AutoSizeStatusbarPanel(Sb: TStatusBar; Idx: Integer);
VAR
  S: STRING;
  Borders: ARRAY [0 .. 2] OF Integer;
BEGIN
  // don't deal with simple panels
  IF Sb.SimplePanel
  // don't resize the last panel
    OR (Idx >= Sb.Panels.Count - 1) THEN
    Exit;
  // get the borders of the statusbar
  // border[0] = width of the horizontal border
  // border[1] = width of the vertical border
  // border[2] = width of the border between rectangles
  SendMessage(Sb.Handle, SB_GETBORDERS, 0, Integer(@Borders));
  S := Sb.Panels[Idx].Text;
  // calculate the width of the Panel
  // Sb.Panels[Idx].Width := TrueFontWidth(Sb.Font, S) + Borders[2] * 2 + 2;
  Sb.Panels[Idx].Width := TrueFontWidth(Sb.Font, S) + Borders[2] * 2 + 30;
  // vertical border * 2 + 2 extra Pixels
END;

FUNCTION TrueFontWidth(Fnt: TFont; CONST Text: STRING): Integer;
VAR
  Dc: Hdc;
  Tsize: System.Types.TSize;
BEGIN
  Dc := GetDC(0);
  SelectObject(DC, Fnt.Handle);
  GetTextExtentPoint32(Dc, PChar(Text), Length(Text), Tsize);
  ReleaseDC(0, DC);
  Result := Tsize.Cx;
END;

/// ////////////////////////////////////////////
FUNCTION FirstOfCurrentMonth: TDateTime;
VAR
  Year, Month, Day: Word;
BEGIN
  DecodeDate(Date, Year, Month, Day);
  FirstOfCurrentMonth := EncodeDate(Year, Month, 1);
END;

/// ////////////////////////////////////////////
FUNCTION LastOfCurrentMonth: TDateTime;
VAR
  Year, Month, Day: Word;
  DerivedFirstNextMonth: TDateTime;
BEGIN
  DecodeDate(Date, Year, Month, Day);
  IF Month = 12 THEN
    LastOfCurrentMonth := EncodeDate(Year, 12, 31)
  ELSE
  BEGIN
    DerivedFirstNextMonth := EncodeDate(Year, Month + 1, 1);
    LastOfCurrentMonth := DerivedFirstNextMonth - 1;
  END;
END;

PROCEDURE Doincrementalfilter(Dataset: Tdataset;
  CONST Fieldname, Searchterm: STRING); { C2 }
BEGIN
  Dataset.Disablecontrols;
  TRY
    Assert(Assigned(Dataset), 'No Dataset Is Assigned');
    IF Searchterm = '' THEN
      Dataset.Filtered := False
    ELSE
    BEGIN
      Dataset.Filter := Fieldname + ' Like ' + Quotedstr(Searchterm + '*');
      Dataset.Filtered := True;
    END;
  FINALLY
    Dataset.Enablecontrols;
  END;
END;





{ *                                                                          * }
FUNCTION Inputcombo(CONST Acaption, Aprompt: STRING; CONST Alist: Tstrings)
  : STRING; { B3 }
  FUNCTION Getcharsize(Canvas: Tcanvas): Tpoint;
  VAR
    I: Integer;
    Buffer: ARRAY [0 .. 51] OF Char;
  BEGIN
    FOR I := 0 TO 25 DO
      Buffer[I] := Chr(I + Ord('A'));
    FOR I := 0 TO 25 DO
      Buffer[I + 26] := Chr(I + Ord('A'));
    Gettextextentpoint(Canvas.Handle, Buffer, 52, Tsize(Result));
    Result.X := Result.X DIV 52;
  END;

VAR
  Form: Tform;
  Prompt: Tlabel;
  Combo: Tcombobox;
  Dialogunits: Tpoint;
  Buttontop, Buttonwidth, Buttonheight: Integer;
BEGIN
  Result := '';
  Form := Tform.Create(Application);
  WITH Form DO
    TRY
      Canvas.Font := Font;
      Dialogunits := Getcharsize(Canvas);
      Borderstyle := Bsdialog;
      Caption := Acaption;
      Clientwidth := Muldiv(180, Dialogunits.X, 4);
      Position := Poscreencenter;
      Prompt := Tlabel.Create(Form);
      WITH Prompt DO
      BEGIN
        Parent := Form;
        Caption := Aprompt;
        Left := Muldiv(8, Dialogunits.X, 4);
        Top := Muldiv(8, Dialogunits.Y, 8);
        Constraints.Maxwidth := Muldiv(164, Dialogunits.X, 4);
        Wordwrap := True;
      END;
      Combo := Tcombobox.Create(Form);
      WITH Combo DO
      BEGIN
        Parent := Form;
        Style := Csdropdownlist;
        // Utiliser Pour La Saisie En Combo
        // Pour La Possibilité De Saisie Dans Les Utilisations Combinées
        // Style: = Csdropdown;
        Items.Assign(Alist);
        Itemindex := 0;
        Left := Prompt.Left;
        Top := Prompt.Top + Prompt.Height + 5;
        Width := Muldiv(164, Dialogunits.X, 4);
      END;
      Buttontop := Combo.Top + Combo.Height + 15;
      Buttonwidth := Muldiv(50, Dialogunits.X, 4);
      Buttonheight := Muldiv(14, Dialogunits.Y, 8);
      WITH Tbutton.Create(Form) DO
      BEGIN
        Parent := Form;
        Caption := 'Ok';
        Modalresult := Mrok;
        DEFAULT := True;
        Setbounds(Muldiv(38, Dialogunits.X, 4), Buttontop, Buttonwidth,
          Buttonheight);
      END;
      WITH Tbutton.Create(Form) DO
      BEGIN
        Parent := Form;
        Caption := 'Annuler ';
        Modalresult := Mrcancel;
        Cancel := True;
        Setbounds(Muldiv(92, Dialogunits.X, 4), Combo.Top + Combo.Height + 15,
          Buttonwidth, Buttonheight);
        Form.Clientheight := Top + Height + 13;
      END;
      IF Showmodal = Mrok THEN
      BEGIN
        Result := Combo.Text;
      END;
    FINALLY
      Form.Free;
    END;
END; { --------------------------------------------------------------------- B3 }

(*
  Initialization
  begin
  Testconnect := false;
  end;
  Finalization
  begin
  end;
*)
END.
