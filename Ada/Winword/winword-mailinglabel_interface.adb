with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.MailingLabel_Interface is

   procedure Initialize (This : in out MailingLabel_Type) is
   begin
      Set_IID (This, IID_MailingLabel);
   end Initialize;

   function Pointer (This : MailingLabel_Type)
     return Pointer_To_MailingLabel
   is
   begin
      return To_Pointer_To_MailingLabel (Address (This));
   end Pointer;

   procedure Attach (This    : in out MailingLabel_Type;
                     Pointer : in     Pointer_To_MailingLabel)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : MailingLabel_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : MailingLabel_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : MailingLabel_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_DefaultPrintBarCode
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultPrintBarCode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultPrintBarCode;

   procedure Put_DefaultPrintBarCode
     (This : MailingLabel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultPrintBarCode
         (Pointer (This),
          prop));

   end Put_DefaultPrintBarCode;

   function Get_DefaultLaserTray
     (This : MailingLabel_Type)
     return WdPaperTray
   is
       RetVal : aliased WdPaperTray;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultLaserTray
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultLaserTray;

   procedure Put_DefaultLaserTray
     (This : MailingLabel_Type;
      prop : WdPaperTray)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultLaserTray
         (Pointer (This),
          prop));

   end Put_DefaultLaserTray;

   function Get_CustomLabels
     (This : MailingLabel_Type)
     return Pointer_To_CustomLabels
   is
       RetVal : aliased Pointer_To_CustomLabels;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CustomLabels
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CustomLabels;

   function Get_DefaultLabelName
     (This : MailingLabel_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DefaultLabelName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DefaultLabelName;

   procedure Put_DefaultLabelName
     (This : MailingLabel_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DefaultLabelName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_DefaultLabelName;

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
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateNewDocument2000
         (Pointer (This),
          Name,
          Address,
          AutoText,
          ExtractAddress,
          LaserTray,
          RetVal'Unchecked_Access));

      return RetVal;
   end CreateNewDocument2000;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut2000
         (Pointer (This),
          Name,
          Address,
          ExtractAddress,
          LaserTray,
          SingleLabel,
          Row,
          Column));

   end PrintOut2000;

   procedure LabelOptions
     (This : MailingLabel_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LabelOptions
         (Pointer (This)));

   end LabelOptions;

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
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.CreateNewDocument
         (Pointer (This),
          Name,
          Address,
          AutoText,
          ExtractAddress,
          LaserTray,
          PrintEPostageLabel,
          Vertical,
          RetVal'Unchecked_Access));

      return RetVal;
   end CreateNewDocument;

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
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PrintOut
         (Pointer (This),
          Name,
          Address,
          ExtractAddress,
          LaserTray,
          SingleLabel,
          Row,
          Column,
          PrintEPostageLabel,
          Vertical));

   end PrintOut;

   function Get_Vertical
     (This : MailingLabel_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Vertical
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Vertical;

   procedure Put_Vertical
     (This : MailingLabel_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Vertical
         (Pointer (This),
          prop));

   end Put_Vertical;

end winword.MailingLabel_Interface;

