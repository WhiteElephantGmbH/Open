with GNATCOM.Dispinterface;

package winword.MailingLabel_Interface is

   type MailingLabel_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out MailingLabel_Type);

   function Pointer (This : MailingLabel_Type)
     return Pointer_To_MailingLabel;

   procedure Attach (This    : in out MailingLabel_Type;
                     Pointer : in     Pointer_To_MailingLabel);

   function Get_Application
     (This : MailingLabel_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : MailingLabel_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : MailingLabel_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_DefaultPrintBarCode
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_DefaultPrintBarCode
     (This : MailingLabel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_DefaultLaserTray
     (This : MailingLabel_Type)
     return WdPaperTray;

   procedure Put_DefaultLaserTray
     (This : MailingLabel_Type;
      prop : WdPaperTray);

   function Get_CustomLabels
     (This : MailingLabel_Type)
     return Pointer_To_CustomLabels;

   function Get_DefaultLabelName
     (This : MailingLabel_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_DefaultLabelName
     (This : MailingLabel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function CreateNewDocument2000
     (This           : MailingLabel_Type;
      Name           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoText       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ExtractAddress : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LaserTray      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument;

   procedure PrintOut2000
     (This           : MailingLabel_Type;
      Name           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ExtractAddress : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LaserTray      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SingleLabel    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Row            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Column         : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   procedure LabelOptions
     (This : MailingLabel_Type);

   function CreateNewDocument
     (This               : MailingLabel_Type;
      Name               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoText           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ExtractAddress     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LaserTray          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintEPostageLabel : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Vertical           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_uDocument;

   procedure PrintOut
     (This               : MailingLabel_Type;
      Name               : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Address            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ExtractAddress     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      LaserTray          : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SingleLabel        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Row                : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Column             : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      PrintEPostageLabel : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Vertical           : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

   function Get_Vertical
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Vertical
     (This : MailingLabel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.MailingLabel_Interface;

