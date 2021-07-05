// ---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

// ---------------------------------------------------------------------------

UNIT Unit_Main;

INTERFACE

USES
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, System.ImageList, System.Actions, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCtrls, Vcl.StdCtrls,
  System.DateUtils,
  Vcl.CategoryButtons, Data.DB, Vcl.ActnList, Vcl.ImgList, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Imaging.Pngimage, Vcl.Mask,
  ScControls, ScCalendar, ScDBControls, Vcl.Buttons, FrxClass, FrxPreview;

TYPE
  TFrm_Main = CLASS(TForm)
    PnlToolbar: TPanel;
    SV: TSplitView;
    CatMenuItems: TCategoryButtons;
    ImlIcons: TImageList;
    ImgMenu: TImage;
    ActionList1: TActionList;
    ActHome: TAction;
    ActCompte: TAction;
    ActOperation: TAction;
    ActRapport: TAction;
    ActParametre: TAction;
    ActFermer: TAction;
    LblTitle: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    TabSheet5: TTabSheet;
    Panel5: TPanel;
    PnlSettings: TPanel;
    LblVclStyle: TLabel;
    GrpDisplayMode: TRadioGroup;
    GrpPlacement: TRadioGroup;
    GrpCloseStyle: TRadioGroup;
    GrpAnimation: TGroupBox;
    ChkUseAnimation: TCheckBox;
    CbxVclStyles: TComboBox;
    ChkCloseOnMenuClick: TCheckBox;
    Actouvrir: TAction;
    ActConnexion: TAction;
    ActdeConnexion: TAction;
    StatusBar1: TStatusBar;
    PaLBottom: TPanel;
    Panel8: TPanel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Panel7: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBLTypecompte: TDBLookupComboBox;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBGrid11: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Panel9: TPanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEMontant: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBMemo1: TDBMemo;
    Label21: TLabel;
    DBEFaitle: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit23: TDBEdit;
    DBCBoxType: TDBComboBox;
    DBCBoxCivilite: TDBComboBox;
    DBCBoxCentre: TDBComboBox;
    DBCBoxCategorie: TDBComboBox;
    DBCFaita: TDBComboBox;
    DBCBoxStatut: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBText1: TDBText;
    Label26: TLabel;
    DBText2: TDBText;
    ScDBDateEdit1: TscDBDateEdit;
    DBNavigator3: TDBNavigator;
    DBGrid1: TDBGrid;
    DBEdit11: TDBEdit;
    DBGrid2: TDBGrid;
    SpbEnregistrer: TSpeedButton;
    DBTOuverture: TDBText;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    SpeedButton3: TSpeedButton;
    Image1: TImage;
    Label27: TLabel;
    ProgressBar1: TProgressBar;
    RichEdit1: TRichEdit;
    DBText3: TDBText;
    DBCheckBox1: TDBCheckBox;
    Label28: TLabel;
    DBEdit12: TDBEdit;
    SB_Mois: TSpeedButton;
    DBGrid3: TDBGrid;
    SB_Catégory: TSpeedButton;
    CheckBox1: TCheckBox;
    Panel6: TPanel;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE GrpDisplayModeClick(Sender: TObject);
    PROCEDURE GrpPlacementClick(Sender: TObject);
    PROCEDURE GrpCloseStyleClick(Sender: TObject);
    PROCEDURE SVClosed(Sender: TObject);
    PROCEDURE SVOpened(Sender: TObject);
    PROCEDURE SVOpening(Sender: TObject);
    PROCEDURE CatMenuItemsCategoryCollapase(Sender: TObject;
      CONST Category: TButtonCategory);
    PROCEDURE ImgMenuClick(Sender: TObject);
    PROCEDURE ChkUseAnimationClick(Sender: TObject);
    PROCEDURE ActHomeExecute(Sender: TObject);
    PROCEDURE ActCompteExecute(Sender: TObject);
    PROCEDURE ActOperationExecute(Sender: TObject);
    PROCEDURE CbxVclStylesChange(Sender: TObject);
    PROCEDURE ActionList1Execute(Action: TBasicAction; VAR Handled: Boolean);
    PROCEDURE ActRapportExecute(Sender: TObject);
    PROCEDURE ActParametreExecute(Sender: TObject);
    PROCEDURE ActFermerExecute(Sender: TObject);
    PROCEDURE ActouvrirExecute(Sender: TObject);
    PROCEDURE ActConnexionExecute(Sender: TObject);
    PROCEDURE ActdeConnexionExecute(Sender: TObject);
    PROCEDURE DBNavigator2BeforeAction(Sender: TObject; Button: TNavigateBtn);
    PROCEDURE DBGrid11DblClick(Sender: TObject);
    PROCEDURE ShowhideGroup;
    PROCEDURE SpeedButton1Click(Sender: TObject);
    PROCEDURE FormPaint(Sender: TObject);
    PROCEDURE SpeedButton3Click(Sender: TObject);
    PROCEDURE SEtatClick(Sender: TObject);
    PROCEDURE SpbEnregistrerClick(Sender: TObject);
    PROCEDURE SB_MoisClick(Sender: TObject);
    PROCEDURE SB_CatégoryClick(Sender: TObject);
    PROCEDURE CheckBox1Click(Sender: TObject);
  PRIVATE
    { Déclarations privées }
  PUBLIC
    { Déclarations publiques }
  END;

VAR
  Frm_Main: TFrm_Main;

IMPLEMENTATION

USES
  Vcl.Themes, U_Data, Units, AdjustGrid;

{$R *.dfm}

PROCEDURE TFrm_Main.ShowhideGroup;
BEGIN
  DBGrid11.Visible := NOT DBGrid11.Visible;
  DBGrid1.Visible := NOT DBGrid1.Visible;
  DBGrid2.Visible := NOT DBGrid2.Visible;
  Panel9.Visible := NOT Panel9.Visible;
  Panel8.Visible := NOT Panel8.Visible;
END;

PROCEDURE TFrm_Main.SEtatClick(Sender: TObject);
VAR
  Sc, Sd: Double;
BEGIN
  U_Module.ADOSetFiltre.Active := False;
  // Data_Module.ADODataSet.Parameters.Clear;
  U_Module.ADOSetFiltre.Parameters.ParamByName('paramsD1').Value :=
    DateToStr(DateTimePicker1.Date);
  U_Module.ADOSetFiltre.Parameters.ParamByName('paramsD2').Value :=
    DateToStr(DateTimePicker2.Date);

  U_Module.ADOSetFiltre.Parameters.ParamByName('paramsCompte').Value :=
    U_Module.TCompte.FieldByName('idx_Compte').AsString;;
  U_Module.ADOSetFiltre.Active := True;
  Sc := 0;
  Sd := 0;
  REPEAT
    Sc := Sc + U_Module.ADOSetFiltre.FieldByName('Crédit').AsFloat;
    Sd := Sd + U_Module.ADOSetFiltre.FieldByName('Débit').AsFloat;
    U_Module.ADOSetFiltre.Next;
  UNTIL U_Module.ADOSetFiltre.Eof;
  Total := Sc - Sd;
  //
END;

PROCEDURE TFrm_Main.SpbEnregistrerClick(Sender: TObject);
BEGIN
  // impremer Docuent de caisse
  U_Module.FrxReport.LoadFromFile(Extractfilepath(Application.Exename) +
    'Bon_Compte.fr3');
  U_Module.FrxReport.PrepareReport;
  U_Module.FrxReport.ShowReport();
END;

PROCEDURE TFrm_Main.SpeedButton1Click(Sender: TObject);
BEGIN
  SEtatClick(Sender);
  U_Module.FrxReport.LoadFromFile(Extractfilepath(Application.Exename) +
    'Etat_Periode.fr3');
  U_Module.FrxReport.PrepareReport;
  U_Module.FrxReport.ShowReport();
END;

PROCEDURE TFrm_Main.SpeedButton3Click(Sender: TObject);
  PROCEDURE SetZoom(CONST RichEdit: TCustomRichEdit; CONST Value: Integer);
  CONST
    EM_SETZOOM = (WM_USER + 225);
  BEGIN
    SendMessage(RichEdit.Handle, EM_SETZOOM, Value, 100);
  END;

VAR
  Zoomfactor: Real;
BEGIN
  RichEdit1.Clear;
  // Zoomfactor :=0;
  Zoomfactor := (RichEdit1.Width / Frm_Main.Width) * 100;

  SetZoom(RichEdit1, Trunc(Zoomfactor));

  SEtatClick(Sender);
  U_Module.FrxReport.LoadFromFile(Extractfilepath(Application.Exename) +
    'Etat_Periode.fr3');
  U_Module.FrxReport.PrepareReport;
  // rtf

  U_Module.FrxRTFExport1.DefaultPath := Extractfilepath(Paramstr(0));
  U_Module.FrxRTFExport1.FileName := Extractfilepath(Paramstr(0)) +
    'Etat_Periode.rtf';
  U_Module.FrxReport.Export(U_Module.FrxRTFExport1);

  RichEdit1.PlainText := False;
  RichEdit1.Lines.LoadFromFile(Extractfilepath(Paramstr(0)) +
    'Etat_Periode.rtf');

  SetZoom(RichEdit1, Trunc(Zoomfactor));
  Richedit1.Repaint;
END;

/// ///////////////////////////////////////////////////
PROCEDURE Format_integer_field(Atable: TDataSet);
VAR
  I: Integer;
BEGIN
  IF Atable.Active THEN
    IF Atable.FieldCount > 0 THEN
      WITH Atable DO
      BEGIN
        FOR I := 0 TO FieldCount - 1 DO
          IF (Fields[I] IS TBCDField) THEN
          BEGIN
           // (Fields[I] AS TBCDField).DisplayFormat := '### ###.## dz';
           // (Fields[I] AS TBCDField).EditFormat := '#.##';
            (Fields[I] AS TBCDField).currency:=true;
          END
          ELSE IF (Fields[I] IS TFloatField) THEN
          BEGIN
         //   (Fields[I] AS TFloatField).DisplayFormat := '### ###.## dz';
           // (Fields[I] AS TFloatField).EditFormat := '#.##';
            (Fields[I] AS TFloatField).currency:=true;
          END;
      END;
END;
/// //////////////////////////////

PROCEDURE TFrm_Main.SB_MoisClick(Sender: TObject);
VAR
  Sc, Sd: Double;
  Fsc, Fsd: TBCDField;
BEGIN
  U_Module.ADOSetMois.Active := False;
  U_Module.ADOSetCategory.Active := False;

  // Data_Module.ADODataSet.Parameters.Clear;
  U_Module.ADOSetMois.Parameters.ParamByName('paramsD1').Value :=
    DateToStr(DateTimePicker1.Date);
  U_Module.ADOSetMois.Parameters.ParamByName('paramsD2').Value :=
    DateToStr(DateTimePicker2.Date);

  U_Module.ADOSetMois.Parameters.ParamByName('paramsCompte').Value :=
    U_Module.TCompte.FieldByName('idx_Compte').AsString;
  /// ////////////////////
  U_Module.ADOSetMois.Active := True;
  Sc := 0;
  Sd := 0;

  Total := Sc - Sd;
  Format_integer_field(U_Module.ADOSetMois);
  DBGrid3.DataSource := U_Module.DSMois;
  AdjustColumnWidths(DBGrid3);
  ShowScrollBar(Frm_Main.DBGrid3.Handle, SB_VERT, False);
  ShowScrollBar(Frm_Main.DBGrid3.Handle, SB_HORZ, False);

  U_Module.ADOSetMois.First;
  REPEAT
    Sc := Sc + U_Module.ADOSetMois.FieldByName('Crédit_').AsFloat;
    Sd := Sd + U_Module.ADOSetMois.FieldByName('Débit_').AsFloat;
    U_Module.ADOSetMois.Next;
  UNTIL U_Module.ADOSetMois.Eof;

  Panel6.Caption := ' Total Crédit : ' + CurrToStrF(Sc, FfCurrency, 2) +
    ' Total débit : ' + CurrToStrf(Sd, FfCurrency, 2) + ' Total : ' +
    CurrToStrf(Total, FfCurrency, 2);
END;

PROCEDURE TFrm_Main.SB_CatégoryClick(Sender: TObject);
VAR
  Sc, Sd: Double;
BEGIN
  U_Module.ADOSetMois.Active := False;
  U_Module.ADOSetCategory.Active := False;
  DBGrid3.DataSource := U_Module.DSCatecory;
  // Data_Module.ADODataSet.Parameters.Clear;
  U_Module.ADOSetCategory.Parameters.ParamByName('paramsD1').Value :=
    DateToStr(DateTimePicker1.Date);
  U_Module.ADOSetCategory.Parameters.ParamByName('paramsD2').Value :=
    DateToStr(DateTimePicker2.Date);

  U_Module.ADOSetCategory.Parameters.ParamByName('paramsCompte').Value :=
    U_Module.TCompte.FieldByName('idx_Compte').AsString;
  /// /////////////////
  U_Module.ADOSetCategory.Active := True;

  // U_Module.ADOSetMois.FieldByName('Crédit_').Currency;
  // U_Module.ADOSetMois.FieldByName('Débit_').Currency;

  Sc := 0;
  Sd := 0;

  // U_Module.ADODataSet1.Active:=true;
  Format_integer_field(U_Module.ADOSetCategory);
  DBGrid3.DataSource := U_Module.DSCatecory;
  AdjustColumnWidths(DBGrid3);
  ShowScrollBar(Frm_Main.DBGrid3.Handle, SB_VERT, False);
  ShowScrollBar(Frm_Main.DBGrid3.Handle, SB_HORZ, False);

  U_Module.ADOSetCategory.First;
  REPEAT
    Sc := Sc + U_Module.ADOSetCategory.FieldByName('Crédit_').AsFloat;
    Sd := Sd + U_Module.ADOSetCategory.FieldByName('Débit_').AsFloat;
    U_Module.ADOSetCategory.Next;
  UNTIL U_Module.ADOSetCategory.Eof;
  Total := Sc - Sd;

  Panel6.Caption := ' Total Crédit : ' + CurrToStrF(Sc, FfCurrency, 2) +
    ' Total débit : ' + CurrToStrf(Sd, FfCurrency, 2) + ' Total : ' +
    CurrToStrf(Total, FfCurrency, 2);
END;

PROCEDURE TFrm_Main.FormCreate(Sender: TObject);
VAR
  StyleName: STRING;
  X, Y: Integer;
BEGIN
  // Paramstr_form(Frm_Main, Screen.Width, Screen.Height);
  Paramstr_region;
  FOR StyleName IN TStyleManager.StyleNames DO
    CbxVclStyles.Items.Add(StyleName);
  CbxVclStyles.ItemIndex := CbxVclStyles.Items.IndexOf
    (TStyleManager.ActiveStyle.Name);
  ShowhideGroup;

  OcultarSheets(PageControl1);
  PageControl1.ActivePageIndex := 0;
  IF FileExists(Extractfilepath(Paramstr(0)) + 'commune.txt') THEN
    DBCFaita.Items.LoadFromFile(Extractfilepath(Paramstr(0)) + 'commune.txt');

  IF FileExists(Extractfilepath(Paramstr(0)) + 'Categorie.txt') THEN
    DBCBoxCategorie.Items.LoadFromFile(Extractfilepath(Paramstr(0)) +
      'Categorie.txt');

  IF FileExists(Extractfilepath(Paramstr(0)) + 'Centre.txt') THEN
    DBCBoxCentre.Items.LoadFromFile(Extractfilepath(Paramstr(0)) +
      'Centre.txt');

  IF FileExists(Extractfilepath(Paramstr(0)) + 'Ilas_Logo Origin.bmp') THEN
    Image1.Picture.LoadFromFile(Extractfilepath(Paramstr(0)) +
      'Ilas_Logo Origin.bmp');
  CbxVclStyles.ItemIndex := 2;
  CbxVclStylesChange(Sender);
  // AdjustSize;
  DateTimePicker1.Date := FirstOfCurrentMonth;
  DateTimePicker2.Date := LastOfCurrentMonth;
  // Label27.Caption:=Label27.Caption+'  '+Appversion(Application.ExeName);
  Label27.Caption := 'FileVerInfo' + '  ' +
    FileVerInfo(Application.ExeName) + '    ';
  // (StrToDate(FormatDateTime('dd/mm/yyyy', Now)));
  GetScreenResolution(X, Y);
  // Frm_Main.PixelsPerInch := 96 * 2;
  StatusBar1.Panels[2].Text := Inttostr(X) + '-' + Inttostr(Y);
END;

PROCEDURE TFrm_Main.FormPaint(Sender: TObject);
BEGIN
  AdjustColumnWidths(Frm_Main.DBGrid1);
  ShowScrollBar(Frm_Main.DBGrid1.Handle, SB_VERT, False);
  ShowScrollBar(Frm_Main.DBGrid1.Handle, SB_HORZ, False);
  AdjustColumnWidths(Frm_Main.DBGrid11);
  ShowScrollBar(Frm_Main.DBGrid11.Handle, SB_VERT, False);
  ShowScrollBar(Frm_Main.DBGrid11.Handle, SB_HORZ, False);
  AdjustColumnWidths(Frm_Main.DBGrid2);
  ShowScrollBar(Frm_Main.DBGrid2.Handle, SB_VERT, False);
  ShowScrollBar(Frm_Main.DBGrid2.Handle, SB_HORZ, False);
END;

PROCEDURE TFrm_Main.CbxVclStylesChange(Sender: TObject);
BEGIN
  TStyleManager.SetStyle(CbxVclStyles.Text);
END;

PROCEDURE TFrm_Main.CatMenuItemsCategoryCollapase(Sender: TObject;
  CONST Category: TButtonCategory);
BEGIN
  // Empêcher le groupe de catégories catMenuItems d'être réduit
  CatMenuItems.Categories[0].Collapsed := False;
END;

PROCEDURE TFrm_Main.ImgMenuClick(Sender: TObject);
BEGIN
  IF SV.Opened THEN
    SV.Close
  ELSE
    SV.Open;
END;

PROCEDURE TFrm_Main.GrpDisplayModeClick(Sender: TObject);
BEGIN
  SV.DisplayMode := TSplitViewDisplayMode(GrpDisplayMode.ItemIndex);
END;

PROCEDURE TFrm_Main.GrpCloseStyleClick(Sender: TObject);
BEGIN
  SV.CloseStyle := TSplitViewCloseStyle(GrpCloseStyle.ItemIndex);
END;

PROCEDURE TFrm_Main.GrpPlacementClick(Sender: TObject);
BEGIN
  SV.Placement := TSplitViewPlacement(GrpPlacement.ItemIndex);
END;

PROCEDURE TFrm_Main.SVClosed(Sender: TObject);
BEGIN
  // Lorsque TSplitView est fermé, ajustez ButtonOptions et Width
  CatMenuItems.ButtonOptions := CatMenuItems.ButtonOptions - [BoShowCaptions];
  IF SV.CloseStyle = SvcCompact THEN
    CatMenuItems.Width := SV.CompactWidth;
END;

PROCEDURE TFrm_Main.SVOpened(Sender: TObject);
BEGIN
  // Lorsque vous n'animez pas, modifiez la taille de catMenuItems lorsque TSplitView est ouvert
  CatMenuItems.ButtonOptions := CatMenuItems.ButtonOptions + [BoShowCaptions];
  CatMenuItems.Width := SV.OpenedWidth;
END;

PROCEDURE TFrm_Main.SVOpening(Sender: TObject);
BEGIN
  // Lors de l'animation, modifiez la taille de catMenuItems au début de l'ouverture
  CatMenuItems.ButtonOptions := CatMenuItems.ButtonOptions + [BoShowCaptions];
  CatMenuItems.Width := SV.OpenedWidth;
END;

{ *                                                             Action Liste * }
PROCEDURE TFrm_Main.CheckBox1Click(Sender: TObject);
VAR
  Sc, Sd: Double;
  Fsc, Fsd: TBCDField;
  Bool: STRING;
BEGIN
  U_Module.ADOSetMois.Active := False;
  U_Module.ADOSetCategory.Active := False;
  U_Module.ADOSetpointe.Active := False;

  // Data_Module.ADODataSet.Parameters.Clear;
  U_Module.ADOSetpointe.Parameters.ParamByName('paramsD1').Value :=
    DateToStr(DateTimePicker1.Date);
  U_Module.ADOSetpointe.Parameters.ParamByName('paramsD2').Value :=
    DateToStr(DateTimePicker2.Date);

  U_Module.ADOSetpointe.Parameters.ParamByName('paramsCompte').Value :=
    U_Module.TCompte.FieldByName('idx_Compte').AsString;
  /// ////////////////////
  U_Module.ADOSetpointe.Active := True;

  Total := Sc - Sd;
  Format_integer_field(U_Module.ADOSetpointe);
  DBGrid3.DataSource := U_Module.DSpointe;

  AdjustColumnWidths(DBGrid3);
  ShowScrollBar(Frm_Main.DBGrid3.Handle, SB_VERT, False);
  ShowScrollBar(Frm_Main.DBGrid3.Handle, SB_HORZ, False);

  IF CheckBox1.Checked THEN
    Bool := 'O'
  ELSE
    Bool := 'N';

  Doincrementalfilter(U_Module.ADOSetpointe, 'Etat', Bool);

  Sc := 0;
  Sd := 0;
  REPEAT
    Sc := Sc + U_Module.ADOSetpointe.FieldByName('Crédit_').AsFloat;
    Sd := Sd + U_Module.ADOSetpointe.FieldByName('Débit_').AsFloat;
    U_Module.ADOSetpointe.Next;
  UNTIL U_Module.ADOSetpointe.Eof;

  Panel6.Caption := ' Total Crédit : ' + CurrToStrF(Sc, FfCurrency, 2) +
    ' Total débit : ' + CurrToStrf(Sd, FfCurrency, 2) + ' Total : ' +
    CurrToStrf(Total, FfCurrency, 2);
END;

PROCEDURE TFrm_Main.ChkUseAnimationClick(Sender: TObject);
BEGIN
  SV.UseAnimation := ChkUseAnimation.Checked;
END; { ... }

PROCEDURE TFrm_Main.DBGrid11DblClick(Sender: TObject);
BEGIN
  PageControl1.ActivePageIndex := 2;
END; { ... }

PROCEDURE TFrm_Main.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
BEGIN
  IF Button IN [NbEdit, NbInsert] THEN

  ELSE IF Button IN [NbCancel, NbRefresh] THEN
    IF Button = NbRefresh THEN
      U_Module.Comptaupdate2fast(Sender)
    ELSE
END; { ... }

PROCEDURE TFrm_Main.ActionList1Execute(Action: TBasicAction; // 0
  VAR Handled: Boolean);
VAR
  Strtitle: STRING;
BEGIN
  PageControl1.ActivePageIndex := CatMenuItems.SelectedItem.Index - 3;
  Strtitle := 'Account Forecast  #fr Prévision de compte';
  LblTitle.Caption := '';
  LblTitle.Caption := Strtitle + '  <  ' + ' Page :' + '  >  '
  // PageControl1.ActivePage.Caption
    + CatMenuItems.SelectedItem.Caption;
END; { ... }

PROCEDURE TFrm_Main.ActHomeExecute(Sender: TObject); // 1
BEGIN
  IF SV.Opened AND ChkCloseOnMenuClick.Checked THEN
    SV.Close;
END; { ... }

PROCEDURE TFrm_Main.ActCompteExecute(Sender: TObject); // 2
BEGIN
  IF SV.Opened AND ChkCloseOnMenuClick.Checked THEN
    SV.Close;
END; { ... }

PROCEDURE TFrm_Main.ActOperationExecute(Sender: TObject); // 3
BEGIN
  IF SV.Opened AND ChkCloseOnMenuClick.Checked THEN
    SV.Close;
END; { ... }

PROCEDURE TFrm_Main.ActRapportExecute(Sender: TObject); // 4
BEGIN
  IF SV.Opened AND ChkCloseOnMenuClick.Checked THEN
    SV.Close;
END; { ... }

PROCEDURE TFrm_Main.ActFermerExecute(Sender: TObject); // 6
BEGIN
  Application.Terminate;
END; { ... }

PROCEDURE TFrm_Main.ActParametreExecute(Sender: TObject); // 5
BEGIN
  IF SV.Opened AND ChkCloseOnMenuClick.Checked THEN
    SV.Close;
END; { ... }

PROCEDURE TFrm_Main.ActouvrirExecute(Sender: TObject); // 01
BEGIN
  IF U_Module.ADOConnection.Connected = False THEN
  BEGIN
    U_Module.ADOConnection.Connected := False;
    U_Module.ADOConnection.Connected := True;
    ShowhideGroup;

  END;
  PageControl1.ActivePageIndex := 0;
END; { ... }

PROCEDURE TFrm_Main.ActConnexionExecute(Sender: TObject); // 02
BEGIN
  IF U_Module.ADOConnection.Connected = False THEN
  BEGIN
    U_Module.ADOConnection.Connected := True;
    ShowhideGroup;

  END;
  PageControl1.ActivePageIndex := 0;
END; { ... }

PROCEDURE TFrm_Main.ActdeConnexionExecute(Sender: TObject); // 03
BEGIN
  IF U_Module.ADOConnection.Connected = True THEN
  BEGIN
    U_Module.ADOConnection.Connected := False;
    ShowhideGroup;
  END;
  PageControl1.ActivePageIndex := 0;
END; { ... }

END.
