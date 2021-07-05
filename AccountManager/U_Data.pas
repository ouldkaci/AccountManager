UNIT U_Data;

INTERFACE

USES
  Winapi.Windows, Winapi.Messages, System.Variants, Vcl.Forms, System.DateUtils,
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB, Vcl.Dialogs,
  FrxClass, FrxDBSet, FrxExportBaseDialog, FrxExportText, FrxExportRTF,
  FrxExportXLS, FrxExportDOCX, FrxExportPDF, FrxExportXLSX, FrxDesgn,
  FrxBarcode;

TYPE
  TU_Module = CLASS(TDataModule)
    ADOConnection: TADOConnection;
    ADOTeste: TADOConnection;
    TBanque: TADOTable;
    TCompte: TADOTable;
    TCompte_type: TADOTable;
    TOperation: TADOTable;
    ADOSetFiltre: TADODataSet;
    DSBanque: TDataSource;
    DsCompte: TDataSource;
    DSCompte_type: TDataSource;
    DSOperation: TDataSource;
    DSDset: TDataSource;
    TBanqueId_Banque: TAutoIncField;
    TBanqueIdx_Banque: TWideStringField;
    TBanqueNom_Banque: TWideStringField;
    TBanqueDes_Banque: TWideStringField;
    TCompte_typeN_Type_Comtpe: TAutoIncField;
    TCompte_typeIdx_Type_Comtpe: TWideStringField;
    TCompte_typeDésignation_Type_Comtpe: TWideStringField;
    OpenDialog1: TOpenDialog;
    TCompteN_Compte: TAutoIncField;
    TCompteidx_Compte: TWideStringField;
    TCompteDésignation: TWideStringField;
    TCompteIdx_Type: TWideStringField;
    TCompteIdx_Banque: TWideStringField;
    TCompteidx_Agence: TWideStringField;
    TCompteNuméro_Comtpe_Banque: TWideStringField;
    TCompteClé_Comtpe_Banque: TWideStringField;
    TCompteRib_Comtpe_Banque: TWideStringField;
    TCompteBalance_initiale: TBCDField;
    TCompteBalance_Finale: TBCDField;
    TCompteDate: TDateTimeField;
    ADOQuery: TADOQuery;
    TOperationN_Ope: TAutoIncField;
    TOperationType_Ope: TWideStringField;
    TOperationDate_Ope: TDateTimeField;
    TOperationJours_Ope: TWideStringField;
    TOperationMois_Ope: TWideStringField;
    TOperationAnnees_Ope: TWideStringField;
    TOperationMois_Annees_Ope: TWideStringField;
    TOperationMontant_Ope: TBCDField;
    TOperationTiers_Civilite_Ope: TWideStringField;
    TOperationTiers_Nom_Prénom: TWideStringField;
    TOperationTiers_Centre_Ope: TWideStringField;
    TOperationCategorie_Ope: TWideStringField;
    TOperationDesignation_Ope: TWideStringField;
    TOperationCommentaires_Ope: TWideMemoField;
    TOperationFait_Le_Ope: TDateTimeField;
    TOperationFait_a_Ope: TWideStringField;
    TOperationFait_par_Ope: TWideStringField;
    TOperationDébit: TBCDField;
    TOperationCrédit: TBCDField;
    TOperationBalance_Ope: TBCDField;
    TOperationStatut_Ope: TWideStringField;
    TOperationidx_Compte: TWideStringField;
    TOperationIdx_Ope: TWideStringField;
    FrxDBDataset: TfrxDBDataset;
    FrxReport: TfrxReport;
    FrxXLSExport1: TfrxXLSExport;
    ADOSetFiltreBalance_Finale: TBCDField;
    ADOSetFiltreBalance_initiale: TBCDField;
    ADOSetFiltreDate: TDateTimeField;
    ADOSetFiltreDésignation: TWideStringField;
    ADOSetFiltreIdx_Type: TWideStringField;
    ADOSetFiltreRib_Comtpe_Banque: TWideStringField;
    ADOSetFiltreBalance_Ope: TBCDField;
    ADOSetFiltreCategorie_Ope: TWideStringField;
    ADOSetFiltreCrédit: TBCDField;
    ADOSetFiltreDate_Ope: TDateTimeField;
    ADOSetFiltreDébit: TBCDField;
    ADOSetFiltreDesignation_Ope: TWideStringField;
    ADOSetFiltreFait_a_Ope: TWideStringField;
    ADOSetFiltreFait_Le_Ope: TDateTimeField;
    ADOSetFiltreOperationidx_Compte: TWideStringField;
    ADOSetFiltreIdx_Ope: TWideStringField;
    ADOSetFiltreMois_Annees_Ope: TWideStringField;
    ADOSetFiltreMontant_Ope: TBCDField;
    ADOSetFiltreN_Ope: TAutoIncField;
    ADOSetFiltreStatut_Ope: TWideStringField;
    ADOSetFiltreType_Ope: TWideStringField;
    ADOSetFiltreN_Compte: TAutoIncField;
    ADOSetFiltreCompteidx_Compte: TWideStringField;
    ADOSetFiltreIdx_Banque: TWideStringField;
    FrxXLSXExport1: TfrxXLSXExport;
    FrxPDFExport1: TfrxPDFExport;
    FrxDOCXExport1: TfrxDOCXExport;
    FrxRTFExport1: TfrxRTFExport;
    FrxDesigner1: TfrxDesigner;
    FrxDBDatasetOpe: TfrxDBDataset;
    FrxDBDatasetCPTTYPE: TfrxDBDataset;
    FrxDBDatasetCPT: TfrxDBDataset;
    FrxBarCodeObject1: TfrxBarCodeObject;
    ADOSetMois: TADODataSet;
    DSMois: TDataSource;
    ADOSetCategory: TADODataSet;
    DSCatecory: TDataSource;
    ADOSetpointe: TADODataSet;
    DSpointe: TDataSource;
    TOperationEtat: TWideStringField;
    TOperationChequier: TWideStringField;
    PROCEDURE ADOConnectionBeforeConnect(Sender: TObject);
    PROCEDURE ADOConnectionAfterConnect(Sender: TObject);
    PROCEDURE DsCompteDataChange(Sender: TObject; Field: TField);
    PROCEDURE TCompteBeforePost(DataSet: TDataSet);
    // PROCEDURE INIoperation(DataSet: TDataSet);
    PROCEDURE TOperationBeforePost(DataSet: TDataSet);
    PROCEDURE Comptaupdate(Sender: TObject);
    PROCEDURE Comptaupdate2fast(Sender: TObject);
    PROCEDURE DSOperationDataChange(Sender: TObject; Field: TField);
    PROCEDURE TOperationAfterPost(DataSet: TDataSet);
    PROCEDURE TOperationAfterInsert(DataSet: TDataSet);
    FUNCTION CalSoldeFinal(): Currency;
    PROCEDURE FrxReportGetValue(CONST VarName: STRING; VAR Value: Variant);

  PRIVATE
    { Déclarations privées }
  PUBLIC
    { Déclarations publiques }
  END;

VAR
  U_Module: TU_Module;
  Balances: Currency;

IMPLEMENTATION

{$R *.dfm}

USES
  Unit_Main, Units, AdjustGrid, Convert;

FUNCTION TU_Module.CalSoldeFinal(): Currency;
BEGIN
  { select Balance from(
    select  idx_Compte,sum(Crédit-Débit) as balance
    from Operation
    where idx_Compte='CE001'
    group by idx_Compte   ) }
  TRY
    ADOQuery.Active := False; // or aQuery.Close;
    ADOQuery.SQL.Clear;
    ADOQuery.SQL.Add('select Balance from(' +
      ' select  idx_Compte,sum(Crédit-Débit) as balance' + ' from Operation' +
      ' where idx_Compte=''' + TCompte.FieldByName('idx_Compte').AsString +
      ''' group by idx_Compte)');
    ADOQuery.Active := True; // or aQuery.Open;
    ADOQuery.First;
    Result := ADOQuery.Fields.Fields[0].AsCurrency +
      TCompte.FieldByName('Balance_initiale').AsCurrency;
  FINALLY
    ADOQuery.Active := False;
    ADOQuery.SQL.Clear;
  END;
END;

PROCEDURE TU_Module.ADOConnectionAfterConnect(Sender: TObject);
BEGIN
  IF ADOConnection.Connected = True THEN
  BEGIN
    TBanque.Active := True;
    TCompte.Active := True;
    TCompte_type.Active := True;
    TOperation.Active := True;
  END;
END;

PROCEDURE TU_Module.ADOConnectionBeforeConnect(Sender: TObject);
VAR
  Db_name, Db_password, St_rconnexion: STRING;
BEGIN
  // SB_Déconnexion.Click;
  OpenDialog1.InitialDir := Extractfilepath(Paramstr(0));

  IF FileExists(Extractfilepath(Paramstr(0)) + 'MultiCaisse.mdb') THEN
    Db_name := Extractfilepath(Paramstr(0)) + 'MultiCaisse.mdb'
  ELSE IF OpenDialog1.Execute() THEN
    Db_name := OpenDialog1.FileName; // else   Application.Terminate
  IF Db_name <> '' THEN
  BEGIN
    Db_password := '';
    St_rconnexion := 'Provider=Microsoft.Jet.OLEDB.4.0;' + 'User ID=Admin;' +
      'Data Source=' + Db_name + ';' +
    // 'Mode=Share Deny Write;'+
      'Jet OLEDB:System database="";' + 'Jet OLEDB:Registry Path="";' +
      'Jet OLEDB:Database Password=' + Db_password + ';' +
      'Jet OLEDB:Engine Type=5;' + 'Jet OLEDB:Database Locking Mode=0;' +
      'Jet OLEDB:Global Partial Bulk Ops=2;' +
      'Jet OLEDB:Global Bulk Transactions=1;' +
      'Jet OLEDB:New Database Password="";' +
      'Jet OLEDB:Create System Database=False;' +
      'Jet OLEDB:Encrypt Database=False;' +
      'Jet OLEDB:Don''t Copy Locale on Compact=False;' +
      'Jet OLEDB:Compact Without Replica Repair=False;' +
      'Jet OLEDB:SFP=False;';
    U_Module.ADOConnection.ConnectionString := St_rconnexion;
  END;

  Frm_Main.StatusBar1.Panels[1].Text := 'Fichier : ' + ExtractFileName(Db_name);
END;

PROCEDURE TU_Module.Comptaupdate2fast(Sender: TObject);
VAR
  SoldeFinal: Currency;
  S: Integer;
BEGIN
  S := GetTickCount;
  TOperation.DisableControls;
  Application.ProcessMessages;
  Frm_Main.ProgressBar1.Max := U_Module.TOperation.RecordCount; //
  U_Module.TOperation.Refresh;
  U_Module.TOperation.First;
  U_Module.TOperation.Edit;
  U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency :=
    U_Module.TOperation.FieldByName('Crédit').AsCurrency -
    U_Module.TOperation.FieldByName('Débit').AsCurrency +
    +U_Module.TCompte.FieldByName('Balance_initiale').AsCurrency;
  U_Module.TOperation.Post;
  SoldeFinal := U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency;
  U_Module.TOperation.Next;
  REPEAT
    U_Module.TOperation.Edit;
    Application.ProcessMessages;
    U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency := SoldeFinal +
      U_Module.TOperation.FieldByName('Crédit').AsCurrency -
      U_Module.TOperation.FieldByName('Débit').AsCurrency;
    SoldeFinal := U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency;
    IF U_Module.TOperationDate_Ope.AsString = '' THEN
      U_Module.TOperationDate_Ope.AsString := FormatDateTime('d/mm/yyyy',
        U_Module.TOperationFait_Le_Ope.AsDateTime);
    Frm_Main.ProgressBar1.Position := U_Module.TOperation.RecNo; //
    U_Module.TOperation.Post;
    U_Module.TOperation.Next;
  UNTIL U_Module.TOperation.Eof;
  U_Module.TOperation.First;
  Frm_Main.StatusBar1.Panels[3].Text := ' ' + 'MilliSecond Of (  ' +
    IntToStr(GetTickCount - S) + '  )';

  TOperation.EnableControls;
  Frm_Main.ProgressBar1.Position := 0;
END;

PROCEDURE TU_Module.Comptaupdate(Sender: TObject);
VAR
  SomDébit, SomCrédit: Currency;
  S: Integer;
BEGIN
  S := GetTickCount;
  TOperation.DisableControls;
  Application.ProcessMessages;
  Frm_Main.ProgressBar1.Max := U_Module.TOperation.RecordCount; //
  U_Module.TOperation.Refresh;
  U_Module.TOperation.First;
  SomDébit := 0;
  SomCrédit := 0;
  REPEAT
    U_Module.TOperation.Edit;
    SomDébit := SomDébit + CalSoldeFinal + U_Module.TOperation.FieldByName
      ('Débit').AsCurrency;
    SomCrédit := SomCrédit + CalSoldeFinal + U_Module.TOperation.FieldByName
      ('Crédit').AsCurrency;
    U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency := SomCrédit -
      SomDébit + U_Module.TCompte.FieldByName('Balance_initiale').AsCurrency;

    U_Module.TOperation.Post;
    U_Module.TOperation.Next;
    Frm_Main.ProgressBar1.Position := U_Module.TOperation.RecNo;
  UNTIL U_Module.TOperation.Eof;
  Frm_Main.ProgressBar1.Position := 0;
  U_Module.TOperation.First;
  Frm_Main.StatusBar1.Panels[3].Text := ' ' + 'MilliSecond Of (  ' +
    IntToStr(GetTickCount - S) + '  )';
  TOperation.EnableControls;
END;

PROCEDURE TU_Module.DsCompteDataChange(Sender: TObject; Field: TField);
BEGIN
  IF TCompte.FieldByName('Idx_Type').Text = 'CE' THEN
    Frm_Main.Panel7.Visible := False
  ELSE
    Frm_Main.Panel7.Visible := True;
  Frm_Main.OnPaint(Sender);

END;

PROCEDURE TU_Module.DSOperationDataChange(Sender: TObject; Field: TField);
BEGIN
  AdjustColumnWidths(Frm_Main.DBGrid2);
  // ShowScrollBar(Frm_Main.DBGrid2.Handle, SB_VERT, False);
  ShowScrollBar(Frm_Main.DBGrid2.Handle, SB_HORZ, False);

END;

PROCEDURE TU_Module.FrxReportGetValue(CONST VarName: STRING;
  VAR Value: Variant);
BEGIN
  IF Varname = 'VarD1' THEN
    Value := Datetostr(Frm_Main.DateTimePicker1.Date);
  IF Varname = 'VarD2' THEN
    Value := Datetostr(Frm_Main.DateTimePicker2.Date);
  IF Varname = 'VarTo' THEN
    Value := Total;

  IF Varname = 'Lettre' THEN
    Value := Convert.NombreTexte(TOperation.FieldByName('Montant_Ope')
      .AsCurrency);
  IF Varname = 'Title' THEN
    IF TOperation.FieldByName('Type_Ope').AsString = 'Débit' THEN
      Value := 'de décaissement'
    ELSE IF TOperation.FieldByName('Type_Ope').AsString = 'Crédit' THEN
      Value := 'd’encaissement';
END;

PROCEDURE TU_Module.TCompteBeforePost(DataSet: TDataSet);
VAR
  Strib: STRING;
BEGIN
  IF U_Module.TCompte.State IN [DsBrowse] = False THEN
  BEGIN
    IF U_Module.TCompte.State IN [DsInsert] THEN
    BEGIN
      U_Module.TCompte.FieldByName('idx_Compte').Text :=
        U_Module.TCompte.FieldByName('Idx_Type').Text +
        Addchar(Inttostr(GetLastID(U_Module.ADOQuery, 'N_Compte', 'Compte') +
        1), 3, '0');

      U_Module.TCompte.FieldByName('date').Text :=
        FormatDateTime('d/mm/yyyy', Now);
    END;
    IF TCompte.FieldByName('Idx_Type').Text = 'CB' THEN
    BEGIN
      U_Module.TCompte.FieldByName('Rib_Comtpe_Banque').AsString :=
        Clerib(U_Module.TCompte.FieldByName('Idx_Banque').AsString,
        U_Module.TCompte.FieldByName('idx_Agence').AsString,
        U_Module.TCompte.FieldByName('Numéro_Comtpe_Banque').AsString,
        U_Module.TCompte.FieldByName('Clé_Comtpe_Banque').AsString);

      Strib := U_Module.TCompte.FieldByName('Rib_Comtpe_Banque').AsString;
      U_Module.TCompte.FieldByName('Clé_Comtpe_Banque').AsString := Strib[19] +
        Strib[20];
    END;
    IF U_Module.TCompte.FieldByName('Balance_initiale').AsString = '' THEN
      U_Module.TCompte.FieldByName('Balance_initiale').AsCurrency := 0;
    IF U_Module.TCompte.FieldByName('Balance_Finale').AsString = '' THEN
      U_Module.TCompte.FieldByName('Balance_Finale').AsCurrency := 0;

    IF TCompte.FieldByName('Idx_Type').Text = '' THEN
      RAISE Exception.Create('Message d''erreur' + #13#10 + #13#10 +
        'L’entité   « Caractère de Relevé »   inoccupée');
  END;
END;
(*
  'Type_Ope'
  'Tiers_Civilite_Ope'
  'Fait_a_Ope'
  'Tiers_Centre_Ope'
  'Designation_Ope'
*)

PROCEDURE TU_Module.TOperationAfterInsert(DataSet: TDataSet);
BEGIN

  Frm_Main.DBCBoxType.ItemIndex := 0; { 'Débit''Crédit'; }
  U_Module.TOperation.FieldByName('Type_Ope').AsString :=
    Frm_Main.DBCBoxType.Items[Frm_Main.DBCBoxType.ItemIndex];
  Frm_Main.DBCBoxCivilite.ItemIndex := 0; { Civilite }
  U_Module.TOperation.FieldByName('Tiers_Civilite_Ope').AsString :=
    Frm_Main.DBCBoxCivilite.Items[Frm_Main.DBCBoxCivilite.ItemIndex];
  Frm_Main.DBCFaita.ItemIndex := 0; { Fait }
  U_Module.TOperation.FieldByName('Fait_a_Ope').AsString :=
    Frm_Main.DBCFaita.Items[Frm_Main.DBCFaita.ItemIndex];
  Frm_Main.DBCBoxCentre.ItemIndex := 0; { Centre }
  U_Module.TOperation.FieldByName('Tiers_Centre_Ope').AsString :=
    Frm_Main.DBCBoxCentre.Items[Frm_Main.DBCBoxCentre.ItemIndex];
  Frm_Main.DBCBoxCategorie.ItemIndex := 0; { Categorie }
  U_Module.TOperation.FieldByName('Categorie_Ope').AsString :=
    Frm_Main.DBCBoxCategorie.Items[Frm_Main.DBCBoxCategorie.ItemIndex];
  Frm_Main.DBCBoxStatut.ItemIndex := 0; { Statut }
  U_Module.TOperation.FieldByName('Statut_Ope').AsString :=
    Frm_Main.DBCBoxStatut.Items[Frm_Main.DBCBoxStatut.ItemIndex];
  Frm_Main.DBEMontant.Text := '0'; { Montant }
  U_Module.TOperation.FieldByName('Montant_Ope').AsCurrency := 0;

  U_Module.TOperation.FieldByName('Commentaires_Ope').AsString :=
    '- ) ' + #13#10 + '- ) ' + #13#10 + '- ) ';      //3
END;

PROCEDURE TU_Module.TOperationAfterPost(DataSet: TDataSet);
BEGIN
  TCompte.Edit;
  TCompte.FieldByName('Balance_Finale').AsCurrency := U_Module.CalSoldeFinal;
  TCompte.Post;
END;

PROCEDURE TU_Module.TOperationBeforePost(DataSet: TDataSet);
VAR
  D, M, Y: Word;
  Tempsolde: Currency;
BEGIN
  IF U_Module.TOperation.State IN [DsBrowse] = False THEN
  BEGIN
    IF U_Module.TOperation.State IN [DsInsert] THEN
    BEGIN
      U_Module.TOperation.FieldByName('Idx_Ope').AsString :=
        Addchar(Inttostr(GetLastID(U_Module.ADOQuery, 'N_Ope', 'Operation') +
        1), 4, '0') + U_Module.TCompte.FieldByName('Idx_Type').AsString +
        Addchar(Inttostr(SecondsBetween(FileDateToDateTime
        (FileAge(Application.ExeName)), Now)), 8, '0');

      U_Module.TOperation.FieldByName('Fait_Le_Ope').AsDateTime := Now;
      // FormatDateTime('d/mm/yyyy', Now);
    END;
    DecodeDate(TOperation.FieldByName('Date_ope').AsDateTime, Y, M, D);
    U_Module.TOperation.FieldByName('Jours_Ope').AsString :=
      Addchar(Inttostr(D), 2, '0');
    U_Module.TOperation.FieldByName('Mois_Ope').AsString :=
      Addchar(Inttostr(M), 2, '0');
    U_Module.TOperation.FieldByName('Annees_Ope').AsString :=
      Addchar(Inttostr(Y), 4, '0');
    U_Module.TOperation.FieldByName('Mois_Annees_Ope').AsString :=
      Addchar(Inttostr(M), 2, '0') + '-' + Addchar(Inttostr(Y), 4, '0');

    // IF DBR.Value = 'Débit' THEN
    IF U_Module.TOperation.FieldByName('Type_Ope').AsString = 'Débit' THEN
    BEGIN
      U_Module.TOperation.FieldByName('Débit').AsCurrency :=
        U_Module.TOperation.FieldByName('Montant_Ope').AsCurrency;
      U_Module.TOperation.FieldByName('Crédit').AsCurrency := 0;
    END;

    // IF DBR.Value = 'Crédit' THEN
    IF U_Module.TOperation.FieldByName('Type_Ope').AsString = 'Crédit' THEN
    BEGIN
      U_Module.TOperation.FieldByName('Crédit').AsCurrency :=
        U_Module.TOperation.FieldByName('Montant_Ope').AsCurrency;
      U_Module.TOperation.FieldByName('Débit').AsCurrency := 0;
    END;
    IF U_Module.TOperation.FieldByName('Type_Ope').AsString <> '' THEN;

    IF U_Module.TOperation.State IN [DsInsert] THEN
    BEGIN
      U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency := CalSoldeFinal
        - U_Module.TOperation.FieldByName('Débit').AsCurrency +
        U_Module.TOperation.FieldByName('Crédit').AsCurrency;
    END;
    IF U_Module.TOperation.State IN [DsEdit] THEN
    BEGIN
      Tempsolde := U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency +
        (U_Module.TOperation.FieldByName('Crédit').AsCurrency -
        U_Module.TOperation.FieldByName('Débit').AsCurrency);
      U_Module.TOperation.FieldByName('Balance_Ope').AsCurrency := Tempsolde -
        (U_Module.TOperation.FieldByName('Crédit').AsCurrency -
        U_Module.TOperation.FieldByName('Débit').AsCurrency);
    END;

  END;

END;

END.
