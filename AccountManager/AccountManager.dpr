// ---------------------------------------------------------------------------

// This software is Copyright (c) 2015 Embarcadero Technologies, Inc.
// You may only use this software if you are an authorized licensee
// of an Embarcadero developer tools product.
// This software is considered a Redistributable as defined under
// the software license agreement that comes with the Embarcadero Products
// and is subject to that software license agreement.

// ---------------------------------------------------------------------------

PROGRAM AccountManager;

USES
  Vcl.Forms,
  Unit_Main IN 'Unit_Main.pas' {Frm_Main} ,
  Vcl.Themes,
  Vcl.Styles, System.SysUtils,
  U_Data IN 'U_Data.pas' {U_Module: TDataModule};

{$R *.res}

BEGIN
  IF Now > StrToDateTime('11/03/2022') THEN
    Application.Terminate;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.Title := 'Account Forecast';

  Application.CreateForm(TFrm_Main, Frm_Main);
  Application.CreateForm(TU_Module, U_Module);
  Application.Run;

END.
