with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.OLEFormat_Interface is

   procedure Initialize (This : in out OLEFormat_Type) is
   begin
      Set_IID (This, IID_OLEFormat);
   end Initialize;

   function Pointer (This : OLEFormat_Type)
     return Pointer_To_OLEFormat
   is
   begin
      return To_Pointer_To_OLEFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out OLEFormat_Type;
                     Pointer : in     Pointer_To_OLEFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : OLEFormat_Type)
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
     (This : OLEFormat_Type)
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
     (This : OLEFormat_Type)
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

   function Get_ClassType
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ClassType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ClassType;

   procedure Put_ClassType
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ClassType
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_ClassType;

   function Get_DisplayAsIcon
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DisplayAsIcon
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DisplayAsIcon;

   procedure Put_DisplayAsIcon
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DisplayAsIcon
         (Pointer (This),
          prop));

   end Put_DisplayAsIcon;

   function Get_IconName
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IconName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IconName;

   procedure Put_IconName
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IconName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_IconName;

   function Get_IconPath
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IconPath
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IconPath;

   function Get_IconIndex
     (This : OLEFormat_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IconIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IconIndex;

   procedure Put_IconIndex
     (This : OLEFormat_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IconIndex
         (Pointer (This),
          prop));

   end Put_IconIndex;

   function Get_IconLabel
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IconLabel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IconLabel;

   procedure Put_IconLabel
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IconLabel
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_IconLabel;

   function Get_Label
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Label
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Label;

   function Get_Object
     (This : OLEFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Object
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Object;

   function Get_ProgID
     (This : OLEFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ProgID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ProgID;

   procedure Activate
     (This : OLEFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   procedure Edit
     (This : OLEFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Edit
         (Pointer (This)));

   end Edit;

   procedure Open
     (This : OLEFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open
         (Pointer (This)));

   end Open;

   procedure DoVerb
     (This      : OLEFormat_Type;
      VerbIndex : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DoVerb
         (Pointer (This),
          VerbIndex));

   end DoVerb;

   procedure ConvertTo
     (This          : OLEFormat_Type;
      ClassType     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      DisplayAsIcon : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconFileName  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconIndex     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      IconLabel     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ConvertTo
         (Pointer (This),
          ClassType,
          DisplayAsIcon,
          IconFileName,
          IconIndex,
          IconLabel));

   end ConvertTo;

   procedure ActivateAs
     (This      : OLEFormat_Type;
      ClassType : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.ActivateAs
         (Pointer (This),
          ClassType));

      if Free then
               GNATCOM.Interface.Free (ClassType);
      
      end if;

   end ActivateAs;

   function Get_PreserveFormattingOnUpdate
     (This : OLEFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_PreserveFormattingOnUpdate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_PreserveFormattingOnUpdate;

   procedure Put_PreserveFormattingOnUpdate
     (This : OLEFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_PreserveFormattingOnUpdate
         (Pointer (This),
          prop));

   end Put_PreserveFormattingOnUpdate;

end winword.OLEFormat_Interface;

