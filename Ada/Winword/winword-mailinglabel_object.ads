with GNATCOM.Dispinterface;

package winword.MailingLabel_Object is

   type MailingLabel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultPrintBarCode
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultPrintBarCode
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DefaultLaserTray
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultLaserTray
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CustomLabels
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   function Get_DefaultLabelName
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DefaultLabelName
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function CreateNewDocument2000
     (This           : MailingLabel_Type;
      Name           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoText       : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ExtractAddress : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LaserTray      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure PrintOut2000
     (This           : MailingLabel_Type;
      Name           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ExtractAddress : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LaserTray      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SingleLabel    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Row            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Column         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free           : Boolean := True);

   procedure LabelOptions
     (This : MailingLabel_Type);

   function CreateNewDocument
     (This               : MailingLabel_Type;
      Name               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      AutoText           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ExtractAddress     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LaserTray          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintEPostageLabel : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Vertical           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure PrintOut
     (This               : MailingLabel_Type;
      Name               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Address            : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ExtractAddress     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      LaserTray          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      SingleLabel        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Row                : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Column             : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PrintEPostageLabel : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Vertical           : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True);

   function Get_Vertical
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Vertical
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.MailingLabel_Object;

