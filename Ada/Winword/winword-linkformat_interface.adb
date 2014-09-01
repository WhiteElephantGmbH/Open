with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.LinkFormat_Interface is

   procedure Initialize (This : in out LinkFormat_Type) is
   begin
      Set_IID (This, IID_LinkFormat);
   end Initialize;

   function Pointer (This : LinkFormat_Type)
     return Pointer_To_LinkFormat
   is
   begin
      return To_Pointer_To_LinkFormat (Address (This));
   end Pointer;

   procedure Attach (This    : in out LinkFormat_Type;
                     Pointer : in     Pointer_To_LinkFormat)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : LinkFormat_Type)
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
     (This : LinkFormat_Type)
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
     (This : LinkFormat_Type)
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

   function Get_AutoUpdate
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_AutoUpdate
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_AutoUpdate;

   procedure Put_AutoUpdate
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_AutoUpdate
         (Pointer (This),
          prop));

   end Put_AutoUpdate;

   function Get_SourceName
     (This : LinkFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SourceName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SourceName;

   function Get_SourcePath
     (This : LinkFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SourcePath
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SourcePath;

   function Get_Locked
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Locked
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Locked;

   procedure Put_Locked
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Locked
         (Pointer (This),
          prop));

   end Put_Locked;

   function Get_Type
     (This : LinkFormat_Type)
     return WdLinkType
   is
       RetVal : aliased WdLinkType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_SourceFullName
     (This : LinkFormat_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SourceFullName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SourceFullName;

   procedure Put_SourceFullName
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SourceFullName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_SourceFullName;

   function Get_SavePictureWithDocument
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_SavePictureWithDocument
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_SavePictureWithDocument;

   procedure Put_SavePictureWithDocument
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_SavePictureWithDocument
         (Pointer (This),
          prop));

   end Put_SavePictureWithDocument;

   procedure BreakLink
     (This : LinkFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.BreakLink
         (Pointer (This)));

   end BreakLink;

   procedure Update
     (This : LinkFormat_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This)));

   end Update;

end winword.LinkFormat_Interface;

