package body winword.MailingLabel_Object is

   function Get_Application
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_Parent);
   end Get_Parent;

   function Get_DefaultPrintBarCode
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_DefaultPrintBarCode);
   end Get_DefaultPrintBarCode;

   procedure Put_DefaultPrintBarCode
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailingLabel_Put_DefaultPrintBarCode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultPrintBarCode;

   function Get_DefaultLaserTray
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_DefaultLaserTray);
   end Get_DefaultLaserTray;

   procedure Put_DefaultLaserTray
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailingLabel_Put_DefaultLaserTray,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultLaserTray;

   function Get_CustomLabels
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_CustomLabels);
   end Get_CustomLabels;

   function Get_DefaultLabelName
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_DefaultLabelName);
   end Get_DefaultLabelName;

   procedure Put_DefaultLabelName
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailingLabel_Put_DefaultLabelName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultLabelName;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailingLabel_CreateNewDocument2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LaserTray,
          2 => ExtractAddress,
          3 => AutoText,
          4 => Address,
          5 => Name),
         Free);
   end CreateNewDocument2000;

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
      Free           : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailingLabel_PrintOut2000,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Column,
          2 => Row,
          3 => SingleLabel,
          4 => LaserTray,
          5 => ExtractAddress,
          6 => Address,
          7 => Name),
         Free);
   end PrintOut2000;

   procedure LabelOptions
     (This : MailingLabel_Type)
   is
   begin
      Invoke (This, MailingLabel_LabelOptions);
   end LabelOptions;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         MailingLabel_CreateNewDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Vertical,
          2 => PrintEPostageLabel,
          3 => LaserTray,
          4 => ExtractAddress,
          5 => AutoText,
          6 => Address,
          7 => Name),
         Free);
   end CreateNewDocument;

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
      Free               : Boolean := True)
   is
   begin
      Invoke
        (This,
         MailingLabel_PrintOut,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Vertical,
          2 => PrintEPostageLabel,
          3 => Column,
          4 => Row,
          5 => SingleLabel,
          6 => LaserTray,
          7 => ExtractAddress,
          8 => Address,
          9 => Name),
         Free);
   end PrintOut;

   function Get_Vertical
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, MailingLabel_Get_Vertical);
   end Get_Vertical;

   procedure Put_Vertical
     (This : MailingLabel_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         MailingLabel_Put_Vertical,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Vertical;

end winword.MailingLabel_Object;

