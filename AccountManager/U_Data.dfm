object U_Module: TU_Module
  OldCreateOrder = False
  Height = 683
  Width = 847
  object ADOConnection: TADOConnection
    LoginPrompt = False
    AfterConnect = ADOConnectionAfterConnect
    BeforeConnect = ADOConnectionBeforeConnect
    Left = 40
    Top = 32
  end
  object ADOTeste: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=MultiCaisse.mdb;Per' +
      'sist Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 120
    Top = 32
  end
  object TBanque: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    IndexFieldNames = 'Idx_Banque'
    MasterFields = 'Idx_Banque'
    MasterSource = DsCompte
    TableName = 'Banque'
    Left = 40
    Top = 88
    object TBanqueId_Banque: TAutoIncField
      FieldName = 'Id_Banque'
      ReadOnly = True
    end
    object TBanqueIdx_Banque: TWideStringField
      FieldName = 'Idx_Banque'
      Size = 3
    end
    object TBanqueNom_Banque: TWideStringField
      FieldName = 'Nom_Banque'
      Size = 75
    end
    object TBanqueDes_Banque: TWideStringField
      FieldName = 'Des_Banque'
      Size = 4
    end
  end
  object TCompte: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    BeforePost = TCompteBeforePost
    TableName = 'Compte'
    Left = 40
    Top = 144
    object TCompteN_Compte: TAutoIncField
      FieldName = 'N_Compte'
      ReadOnly = True
    end
    object TCompteidx_Compte: TWideStringField
      FieldName = 'idx_Compte'
      Size = 5
    end
    object TCompteDésignation: TWideStringField
      FieldName = 'D'#233'signation'
      Size = 50
    end
    object TCompteIdx_Type: TWideStringField
      FieldName = 'Idx_Type'
      Size = 2
    end
    object TCompteIdx_Banque: TWideStringField
      FieldName = 'Idx_Banque'
      Size = 3
    end
    object TCompteidx_Agence: TWideStringField
      FieldName = 'idx_Agence'
      Size = 5
    end
    object TCompteNuméro_Comtpe_Banque: TWideStringField
      FieldName = 'Num'#233'ro_Comtpe_Banque'
      Size = 10
    end
    object TCompteClé_Comtpe_Banque: TWideStringField
      FieldName = 'Cl'#233'_Comtpe_Banque'
      Size = 2
    end
    object TCompteRib_Comtpe_Banque: TWideStringField
      FieldName = 'Rib_Comtpe_Banque'
    end
    object TCompteBalance_initiale: TBCDField
      FieldName = 'Balance_initiale'
      currency = True
      Precision = 19
    end
    object TCompteBalance_Finale: TBCDField
      FieldName = 'Balance_Finale'
      currency = True
      Precision = 19
    end
    object TCompteDate: TDateTimeField
      FieldName = 'Date'
    end
  end
  object TCompte_type: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'Compte_type'
    Left = 40
    Top = 200
    object TCompte_typeN_Type_Comtpe: TAutoIncField
      FieldName = 'N_Type_Comtpe'
      ReadOnly = True
    end
    object TCompte_typeIdx_Type_Comtpe: TWideStringField
      FieldName = 'Idx_Type_Comtpe'
      Size = 2
    end
    object TCompte_typeDésignation_Type_Comtpe: TWideStringField
      FieldName = 'D'#233'signation_Type_Comtpe'
      Size = 25
    end
  end
  object TOperation: TADOTable
    Connection = ADOConnection
    CursorType = ctStatic
    AfterInsert = TOperationAfterInsert
    BeforePost = TOperationBeforePost
    AfterPost = TOperationAfterPost
    IndexFieldNames = 'idx_Compte'
    MasterFields = 'idx_Compte'
    MasterSource = DsCompte
    TableDirect = True
    TableName = 'Operation'
    Left = 40
    Top = 256
    object TOperationN_Ope: TAutoIncField
      FieldName = 'N_Ope'
      ReadOnly = True
    end
    object TOperationType_Ope: TWideStringField
      FieldName = 'Type_Ope'
      Size = 15
    end
    object TOperationDate_Ope: TDateTimeField
      FieldName = 'Date_Ope'
    end
    object TOperationJours_Ope: TWideStringField
      FieldName = 'Jours_Ope'
      Size = 2
    end
    object TOperationMois_Ope: TWideStringField
      FieldName = 'Mois_Ope'
      Size = 2
    end
    object TOperationAnnees_Ope: TWideStringField
      FieldName = 'Annees_Ope'
      Size = 4
    end
    object TOperationMois_Annees_Ope: TWideStringField
      FieldName = 'Mois_Annees_Ope'
      Size = 7
    end
    object TOperationMontant_Ope: TBCDField
      FieldName = 'Montant_Ope'
      currency = True
      Precision = 19
    end
    object TOperationTiers_Civilite_Ope: TWideStringField
      FieldName = 'Tiers_Civilite_Ope'
      Size = 15
    end
    object TOperationTiers_Nom_Prénom: TWideStringField
      FieldName = 'Tiers_Nom_Pr'#233'nom'
      Size = 75
    end
    object TOperationTiers_Centre_Ope: TWideStringField
      FieldName = 'Tiers_Centre_Ope'
      Size = 25
    end
    object TOperationCategorie_Ope: TWideStringField
      FieldName = 'Categorie_Ope'
      Size = 75
    end
    object TOperationDesignation_Ope: TWideStringField
      FieldName = 'Designation_Ope'
      Size = 150
    end
    object TOperationCommentaires_Ope: TWideMemoField
      FieldName = 'Commentaires_Ope'
      BlobType = ftWideMemo
    end
    object TOperationFait_Le_Ope: TDateTimeField
      FieldName = 'Fait_Le_Ope'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss:_zzz'
    end
    object TOperationFait_a_Ope: TWideStringField
      FieldName = 'Fait_a_Ope'
      Size = 25
    end
    object TOperationFait_par_Ope: TWideStringField
      FieldName = 'Fait_par_Ope'
      Size = 45
    end
    object TOperationDébit: TBCDField
      FieldName = 'D'#233'bit'
      currency = True
      Precision = 19
    end
    object TOperationCrédit: TBCDField
      FieldName = 'Cr'#233'dit'
      currency = True
      Precision = 19
    end
    object TOperationBalance_Ope: TBCDField
      FieldName = 'Balance_Ope'
      currency = True
      Precision = 19
    end
    object TOperationStatut_Ope: TWideStringField
      FieldName = 'Statut_Ope'
      Size = 25
    end
    object TOperationidx_Compte: TWideStringField
      FieldName = 'idx_Compte'
      Size = 8
    end
    object TOperationIdx_Ope: TWideStringField
      FieldName = 'Idx_Ope'
      Size = 15
    end
    object TOperationEtat: TWideStringField
      FieldName = 'Etat'
      Size = 1
    end
    object TOperationChequier: TWideStringField
      FieldName = 'Chequier'
      Size = 10
    end
  end
  object ADOSetFiltre: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Balance_Finale, Balance_initiale, Date, D'#233'signation, Idx_' +
      'Type, Rib_Comtpe_Banque, Balance_Ope, Categorie_Ope, Cr'#233'dit, Dat' +
      'e_Ope, D'#233'bit, Designation_Ope, Fait_a_Ope, Fait_Le_Ope,Operation' +
      '.idx_Compte, Idx_Ope, Mois_Annees_Ope, Montant_Ope, N_Ope, Statu' +
      't_Ope, Type_Ope, N_Compte,  Compte.idx_Compte, Idx_Banque'#13#10'from ' +
      'Compte,Operation'#13#10'where (Operation.Date_Ope Between :paramsD1 An' +
      'd :paramsD2) and'#13#10'(Operation.idx_Compte=:paramsCompte) and'#13#10'(Ope' +
      'ration.idx_Compte= Compte.idx_Compte)'#13#10'order by Date_Ope'
    Parameters = <
      item
        Name = 'paramsD1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsD2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsCompte'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 240
    Top = 144
    object ADOSetFiltreBalance_Finale: TBCDField
      FieldName = 'Balance_Finale'
      Precision = 19
    end
    object ADOSetFiltreBalance_initiale: TBCDField
      FieldName = 'Balance_initiale'
      Precision = 19
    end
    object ADOSetFiltreDate: TDateTimeField
      FieldName = 'Date'
    end
    object ADOSetFiltreDésignation: TWideStringField
      FieldName = 'D'#233'signation'
      Size = 50
    end
    object ADOSetFiltreIdx_Type: TWideStringField
      FieldName = 'Idx_Type'
      Size = 2
    end
    object ADOSetFiltreRib_Comtpe_Banque: TWideStringField
      FieldName = 'Rib_Comtpe_Banque'
    end
    object ADOSetFiltreBalance_Ope: TBCDField
      FieldName = 'Balance_Ope'
      Precision = 19
    end
    object ADOSetFiltreCategorie_Ope: TWideStringField
      FieldName = 'Categorie_Ope'
      Size = 75
    end
    object ADOSetFiltreCrédit: TBCDField
      FieldName = 'Cr'#233'dit'
      Precision = 19
    end
    object ADOSetFiltreDate_Ope: TDateTimeField
      FieldName = 'Date_Ope'
    end
    object ADOSetFiltreDébit: TBCDField
      FieldName = 'D'#233'bit'
      Precision = 19
    end
    object ADOSetFiltreDesignation_Ope: TWideStringField
      FieldName = 'Designation_Ope'
      Size = 150
    end
    object ADOSetFiltreFait_a_Ope: TWideStringField
      FieldName = 'Fait_a_Ope'
      Size = 25
    end
    object ADOSetFiltreFait_Le_Ope: TDateTimeField
      FieldName = 'Fait_Le_Ope'
    end
    object ADOSetFiltreOperationidx_Compte: TWideStringField
      FieldName = 'Operation.idx_Compte'
      Size = 8
    end
    object ADOSetFiltreIdx_Ope: TWideStringField
      FieldName = 'Idx_Ope'
      Size = 15
    end
    object ADOSetFiltreMois_Annees_Ope: TWideStringField
      FieldName = 'Mois_Annees_Ope'
      Size = 7
    end
    object ADOSetFiltreMontant_Ope: TBCDField
      FieldName = 'Montant_Ope'
      Precision = 19
    end
    object ADOSetFiltreN_Ope: TAutoIncField
      FieldName = 'N_Ope'
      ReadOnly = True
    end
    object ADOSetFiltreStatut_Ope: TWideStringField
      FieldName = 'Statut_Ope'
      Size = 25
    end
    object ADOSetFiltreType_Ope: TWideStringField
      FieldName = 'Type_Ope'
      Size = 15
    end
    object ADOSetFiltreN_Compte: TAutoIncField
      FieldName = 'N_Compte'
      ReadOnly = True
    end
    object ADOSetFiltreCompteidx_Compte: TWideStringField
      FieldName = 'Compte.idx_Compte'
      Size = 5
    end
    object ADOSetFiltreIdx_Banque: TWideStringField
      FieldName = 'Idx_Banque'
      Size = 3
    end
  end
  object DSBanque: TDataSource
    DataSet = TBanque
    Left = 120
    Top = 88
  end
  object DsCompte: TDataSource
    DataSet = TCompte
    OnDataChange = DsCompteDataChange
    Left = 120
    Top = 144
  end
  object DSCompte_type: TDataSource
    DataSet = TCompte_type
    Left = 120
    Top = 200
  end
  object DSOperation: TDataSource
    DataSet = TOperation
    OnDataChange = DSOperationDataChange
    Left = 120
    Top = 256
  end
  object DSDset: TDataSource
    DataSet = ADOSetFiltre
    Left = 332
    Top = 144
  end
  object OpenDialog1: TOpenDialog
    Title = 'Selectionne le ficheir de la base donne '
    Left = 560
    Top = 56
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 240
    Top = 32
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Balance_Finale=Balance_Finale'
      'Balance_initiale=Balance_initiale'
      'Date=Date'
      'D'#233'signation=D'#233'signation'
      'Idx_Type=Idx_Type'
      'Rib_Comtpe_Banque=Rib_Comtpe_Banque'
      'Balance_Ope=Balance_Ope'
      'Categorie_Ope=Categorie_Ope'
      'Cr'#233'dit=Cr'#233'dit'
      'Date_Ope=Date_Ope'
      'D'#233'bit=D'#233'bit'
      'Designation_Ope=Designation_Ope'
      'Fait_a_Ope=Fait_a_Ope'
      'Fait_Le_Ope=Fait_Le_Ope'
      'Operation.idx_Compte=Operation.idx_Compte'
      'Idx_Ope=Idx_Ope'
      'Mois_Annees_Ope=Mois_Annees_Ope'
      'Montant_Ope=Montant_Ope'
      'N_Ope=N_Ope'
      'Statut_Ope=Statut_Ope'
      'Type_Ope=Type_Ope'
      'N_Compte=N_Compte'
      'Compte.idx_Compte=Compte.idx_Compte'
      'Idx_Banque=Idx_Banque')
    DataSource = DSDset
    BCDToCurrency = False
    Left = 480
    Top = 456
  end
  object frxReport: TfrxReport
    Version = '6.6.17'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Par d'#233'faut'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44135.672609907400000000
    ReportOptions.LastChange = 44136.717564108810000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = frxReportGetValue
    Left = 518
    Top = 512
    Datasets = <
      item
        DataSet = frxDBDatasetOpe
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Lettre'
        Value = Null
      end
      item
        Name = 'Title'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Memo4: TfrxMemoView
        AllowVectorExport = True
        Left = 227.190219640000000000
        Top = 170.078740160000000000
        Width = 264.566929130000000000
        Height = 37.795300000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        Frame.Color = clGray
        Frame.Typ = []
        Fill.BackColor = 15000804
        Fill.ForeColor = clNone
        Fill.Style = bsClear
        HAlign = haCenter
        Memo.UTF8W = (
          'Bon [Title]')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo5: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795275590000000000
        Top = 566.929133860000000000
        Width = 226.771641340000000000
        Height = 56.692913390000000000
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Somme de (en chiffre et en lettre)')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795275590000000000
        Top = 415.748031500000000000
        Width = 226.771653540000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Motif [Title]')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Align = baWidth
        AllowVectorExport = True
        Top = 1020.472440944880000000
        Width = 718.110700000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftTop]
        HAlign = haCenter
        Memo.UTF8W = (
          
            'En foi de quoi, la pr'#233'sente fiche est '#233'tablie pour servir et val' +
            'oir ce que de droit.')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        AllowVectorExport = True
        Top = 699.212586220000000000
        Width = 264.567100000000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        Frame.Typ = []
        Memo.UTF8W = (
          'Le prenant')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795275590000000000
        Top = 226.771653540000000000
        Width = 113.385900000000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        Frame.Typ = []
        Memo.UTF8W = (
          'Objet : ')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        AllowVectorExport = True
        Left = 264.566929130000000000
        Top = 377.952755910000000000
        Width = 453.543307090000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Tiers_Centre_Ope"]')
        ParentFont = False
      end
      object Memo16: TfrxMemoView
        AllowVectorExport = True
        Width = 718.110700000000000000
        Height = 105.826840000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = [ftTop, ftBottom]
        Memo.UTF8W = (
          'Integrated Logistic & Administration Services '
          ''
          'Activit'#233':Prestation de services'
          'Siege Social:Cit'#233' gare sud N'#176'03 Ouargla'
          'Adresse postal: BP 1258 Poste Amirouche Hassi Messaoud '
          'Employeur:30 568 610 53'
          'E-Mail @:ilas.services@ilasdz.com'
          'Fax:029 78 26 02'
          'Tel:029 78 26 01')
        ParentFont = False
      end
      object Picture1: TfrxPictureView
        AllowVectorExport = True
        Left = 377.953000000000000000
        Top = 7.559060000000000000
        Width = 340.157700000000000000
        Height = 90.708720000000000000
        Frame.Typ = []
        FileLink = 'Ilas_Logo Origin.Bmp'
        HightQuality = False
        Transparent = False
        TransparentColor = clWhite
      end
      object Memo17: TfrxMemoView
        AllowVectorExport = True
        Top = 113.385826770000000000
        Width = 340.157700000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Bon N'#176' :  [frxDBDataset1."N_Ope"]  / ILASDRH / 2020')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        AllowVectorExport = True
        Left = 574.488560000000000000
        Top = 113.385814570000000000
        Width = 26.456710000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'Le :')
        ParentFont = False
      end
      object Memo18: TfrxMemoView
        AllowVectorExport = True
        Left = 600.945270000000000000
        Top = 113.385814570000000000
        Width = 117.165430000000000000
        Height = 18.897650000000000000
        DisplayFormat.FormatStr = 'dd mmm yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          '[Date]')
        ParentFont = False
      end
      object Memo19: TfrxMemoView
        AllowVectorExport = True
        Left = 340.157700000000000000
        Top = 113.385826771654000000
        Width = 230.551330000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          'Fait '#224' : [frxDBDataset1."Fait_a_Ope"]')
        ParentFont = False
      end
      object Memo21: TfrxMemoView
        AllowVectorExport = True
        Left = 264.567100000000000000
        Top = 340.157480310000000000
        Width = 453.543355910000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Tiers_Nom_Pr'#233'nom"]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end>
      end
      object Memo22: TfrxMemoView
        AllowVectorExport = True
        Left = 264.566929130000000000
        Top = 415.748031500000000000
        Width = 453.543307090000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Designation_Ope"]')
        ParentFont = False
      end
      object Memo23: TfrxMemoView
        AllowVectorExport = True
        Left = 264.566929130000000000
        Top = 453.543307090000000000
        Width = 453.543307090000000000
        Height = 75.590551180000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Commentaires_Ope"]')
        ParentFont = False
      end
      object Memo24: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795275590000000000
        Top = 453.543307090000000000
        Width = 226.771653540000000000
        Height = 75.590575590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Observation (s)')
        ParentFont = False
      end
      object Memo25: TfrxMemoView
        Align = baRight
        AllowVectorExport = True
        Left = 151.181468500000000000
        Top = 226.771653540000000000
        Width = 566.929231500000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Categorie_Ope"]')
        ParentFont = False
      end
      object Memo26: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795275590000000000
        Top = 377.952755910000000000
        Width = 226.771653540000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Centre')
        ParentFont = False
      end
      object Memo27: TfrxMemoView
        AllowVectorExport = True
        Left = 264.566929130000000000
        Top = 566.929133860000000000
        Width = 453.543307090000000000
        Height = 56.692913390000000000
        DisplayFormat.FormatStr = '%2.2m'
        DisplayFormat.Kind = fkNumeric
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Montant_Ope"]'
          '[Lettre]')
        ParentFont = False
      end
      object Memo30: TfrxMemoView
        AllowVectorExport = True
        Left = 491.338900000000000000
        Top = 1001.574803149610000000
        Width = 222.992270000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Fait :[frxDBDataset1."Fait_par_Ope"]')
        ParentFont = False
      end
      object Memo31: TfrxMemoView
        AllowVectorExport = True
        Left = 264.566941340000000000
        Top = 661.417310630000000000
        Width = 453.543319290000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Statut_Ope"]')
        ParentFont = False
      end
      object BarCode1: TfrxBarCodeView
        AllowVectorExport = True
        Left = -3.779530000000000000
        Top = 982.677165350000000000
        Width = 129.000000000000000000
        Height = 37.795300000000000000
        BarType = bcCode39Extended
        DataField = 'Idx_Ope'
        DataSet = frxDBDatasetOpe
        DataSetName = 'frxDBDataset1'
        Frame.Typ = []
        Rotation = 0
        TestLine = False
        Text = '12345678'
        WideBarRatio = 2.000000000000000000
        Zoom = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ColorBar = clBlack
      end
      object Memo29: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 623.622035040000000000
        Width = 226.771800000000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Date [Title]')
        ParentFont = False
      end
      object Memo32: TfrxMemoView
        AllowVectorExport = True
        Left = 264.566929130000000000
        Top = 623.622035040000000000
        Width = 453.543307090000000000
        Height = 37.795275590000000000
        DisplayFormat.FormatStr = 'dd mmm yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Fait_Le_Ope"]')
        ParentFont = False
      end
      object Memo33: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 661.417310630000000000
        Width = 226.771726770000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Statut  [Title]')
        ParentFont = False
      end
      object Memo28: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 302.362204720000000000
        Width = 680.315400000000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Tiers : ')
        ParentFont = False
      end
      object Memo35: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 529.133858270000000000
        Width = 226.771653540000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          'Date pi'#232'ces jointes')
        ParentFont = False
      end
      object Memo36: TfrxMemoView
        AllowVectorExport = True
        Left = 264.566929130000000000
        Top = 529.133858270000000000
        Width = 453.543307090000000000
        Height = 37.795275590000000000
        DisplayFormat.FormatStr = 'dd mmm yyyy'
        DisplayFormat.Kind = fkDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Date_Ope"]')
        ParentFont = False
      end
      object Memo37: TfrxMemoView
        AllowVectorExport = True
        Left = 264.567100000000000000
        Top = 699.212586220000000000
        Width = 453.543307090000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          'Directeur D'#39'administration G'#233'n'#233'rale et des moyens')
        ParentFont = False
      end
      object Memo38: TfrxMemoView
        AllowVectorExport = True
        Top = 718.110224020000000000
        Width = 264.567100000000000000
        Height = 113.385826770000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -9
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsUnderline]
        Frame.Typ = []
        Memo.UTF8W = (
          'Nom&Pr'#233'nom:'
          'pi'#232'ce d'#39'identit'#233':'
          'Visa :')
        ParentFont = False
      end
      object Memo39: TfrxMemoView
        AllowVectorExport = True
        Left = 37.795300000000000000
        Top = 340.157700000000000000
        Width = 226.771555910000000000
        Height = 37.795275590000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        Frame.Color = clGray
        Frame.Typ = []
        Memo.UTF8W = (
          '[frxDBDataset1."Tiers_Civilite_Ope"]')
        ParentFont = False
        Formats = <
          item
          end
          item
          end>
      end
    end
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = True
    DataOnly = False
    ExportEMF = True
    ExportPictures = False
    MergeCells = False
    OpenExcelAfterExport = True
    AsText = False
    Background = False
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = True
    Left = 219
    Top = 512
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 308
    Top = 512
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 129
    Top = 512
  end
  object frxDOCXExport1: TfrxDOCXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 40
    Top = 512
  end
  object frxRTFExport1: TfrxRTFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = True
    DataOnly = True
    PictureType = gpPNG
    ExportPageBreaks = False
    ExportPictures = False
    OpenAfterExport = False
    Wysiwyg = False
    Creator = 'FastReport'
    SuppressPageHeadersFooters = True
    HeaderFooterMode = hfNone
    AutoSize = True
    Left = 56
    Top = 464
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 392
    Top = 456
  end
  object frxDBDatasetOpe: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_Ope=N_Ope'
      'Type_Ope=Type_Ope'
      'Date_Ope=Date_Ope'
      'Jours_Ope=Jours_Ope'
      'Mois_Ope=Mois_Ope'
      'Annees_Ope=Annees_Ope'
      'Mois_Annees_Ope=Mois_Annees_Ope'
      'Montant_Ope=Montant_Ope'
      'Tiers_Civilite_Ope=Tiers_Civilite_Ope'
      'Tiers_Nom_Pr'#233'nom=Tiers_Nom_Pr'#233'nom'
      'Tiers_Centre_Ope=Tiers_Centre_Ope'
      'Categorie_Ope=Categorie_Ope'
      'Designation_Ope=Designation_Ope'
      'Commentaires_Ope=Commentaires_Ope'
      'Fait_Le_Ope=Fait_Le_Ope'
      'Fait_a_Ope=Fait_a_Ope'
      'Fait_par_Ope=Fait_par_Ope'
      'D'#233'bit=D'#233'bit'
      'Cr'#233'dit=Cr'#233'dit'
      'Balance_Ope=Balance_Ope'
      'Statut_Ope=Statut_Ope'
      'idx_Compte=idx_Compte'
      'Idx_Ope=Idx_Ope')
    DataSource = DSOperation
    BCDToCurrency = False
    Left = 472
    Top = 360
  end
  object frxDBDatasetCPTTYPE: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'N_Type_Comtpe=N_Type_Comtpe'
      'Idx_Type_Comtpe=Idx_Type_Comtpe'
      'D'#233'signation_Type_Comtpe=D'#233'signation_Type_Comtpe')
    DataSource = DSCompte_type
    BCDToCurrency = False
    Left = 480
    Top = 416
  end
  object frxDBDatasetCPT: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DsCompte
    BCDToCurrency = False
    Left = 336
    Top = 368
  end
  object frxBarCodeObject1: TfrxBarCodeObject
    Left = 432
    Top = 512
  end
  object ADOSetMois: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Mois_Annees_Ope,sum(Cr'#233'dit) as Cr'#233'dit_ ,sum(D'#233'bit) as D'#233'b' +
      'it_'#13#10'from (select Balance_Finale, Balance_initiale, Date, D'#233'sign' +
      'ation, Idx_Type, Rib_Comtpe_Banque, Balance_Ope, Categorie_Ope, ' +
      'Cr'#233'dit, Date_Ope, D'#233'bit, Designation_Ope, Fait_a_Ope, Fait_Le_Op' +
      'e,Operation.idx_Compte, Idx_Ope, Mois_Annees_Ope, Montant_Ope, N' +
      '_Ope, Statut_Ope, Type_Ope, N_Compte,  Compte.idx_Compte, Idx_Ba' +
      'nque'#13#10'from Compte,Operation'#13#10'where (Operation.Date_Ope Between :' +
      'paramsD1 And :paramsD2) and'#13#10'(Operation.idx_Compte=:paramsCompte' +
      ') and'#13#10'(Operation.idx_Compte= Compte.idx_Compte)'#13#10'order by Date_' +
      'Ope)'#13#10'where Operation.idx_Compte= Compte.idx_Compte'#13#10'group by Mo' +
      'is_Annees_Ope'
    Parameters = <
      item
        Name = 'paramsD1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsD2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsCompte'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 240
    Top = 88
  end
  object DSMois: TDataSource
    DataSet = ADOSetMois
    Left = 332
    Top = 88
  end
  object ADOSetCategory: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Categorie_Ope,sum(Cr'#233'dit) as Cr'#233'dit_ ,sum(D'#233'bit) as D'#233'bit' +
      '_'#13#10'from (select Balance_Finale, Balance_initiale, Date, D'#233'signat' +
      'ion, Idx_Type, Rib_Comtpe_Banque, Balance_Ope, Categorie_Ope, Cr' +
      #233'dit, Date_Ope, D'#233'bit, Designation_Ope, Fait_a_Ope, Fait_Le_Ope,' +
      'Operation.idx_Compte, Idx_Ope, Mois_Annees_Ope, Montant_Ope, N_O' +
      'pe, Statut_Ope, Type_Ope, N_Compte,  Compte.idx_Compte, Idx_Banq' +
      'ue'#13#10'from Compte,Operation'#13#10'where (Operation.Date_Ope Between :pa' +
      'ramsD1 And :paramsD2) and'#13#10'(Operation.idx_Compte=:paramsCompte) ' +
      'and'#13#10'(Operation.idx_Compte= Compte.idx_Compte)'#13#10'order by Date_Op' +
      'e)'#13#10'where Operation.idx_Compte= Compte.idx_Compte'#13#10'group by Cate' +
      'gorie_Ope'
    Parameters = <
      item
        Name = 'paramsD1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsD2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsCompte'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 240
    Top = 200
  end
  object DSCatecory: TDataSource
    DataSet = ADOSetCategory
    Left = 332
    Top = 200
  end
  object ADOSetpointe: TADODataSet
    Connection = ADOConnection
    CursorType = ctStatic
    CommandText = 
      'select Operation.Idx_Ope,Operation.Etat,sum(Cr'#233'dit) as Cr'#233'dit_ ,' +
      'sum(D'#233'bit) as D'#233'bit_'#13#10'from (select Operation.Chequier,Operation.' +
      'Etat,Balance_Finale, Balance_initiale, Date, D'#233'signation, Idx_Ty' +
      'pe, Rib_Comtpe_Banque, Balance_Ope, Categorie_Ope, Cr'#233'dit, Date_' +
      'Ope, D'#233'bit, Designation_Ope, Fait_a_Ope, Fait_Le_Ope,Operation.i' +
      'dx_Compte,Operation.Idx_Ope, Mois_Annees_Ope, Montant_Ope, N_Ope' +
      ', Statut_Ope, Type_Ope, N_Compte,  Compte.idx_Compte, Idx_Banque' +
      #13#10'from Compte,Operation'#13#10'where (Operation.Date_Ope Between :para' +
      'msD1 And :paramsD2) and'#13#10'(Operation.idx_Compte=:paramsCompte) an' +
      'd'#13#10'(Operation.idx_Compte= Compte.idx_Compte)'#13#10'order by Date_Ope)' +
      #13#10'where Operation.idx_Compte= Compte.idx_Compte'#13#10'group by Operat' +
      'ion.Idx_Ope,Operation.Etat'
    Parameters = <
      item
        Name = 'paramsD1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsD2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'paramsCompte'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    Left = 240
    Top = 256
  end
  object DSpointe: TDataSource
    DataSet = ADOSetpointe
    Left = 332
    Top = 256
  end
end
