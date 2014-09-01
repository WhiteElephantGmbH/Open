with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Subdocument_Interface is

   procedure Initialize (This : in out Subdocument_Type) is
   begin
      Set_IID (This, IID_Subdocument);
   end Initialize;

   function Pointer (This : Subdocument_Type)
     return Pointer_To_Subdocument
   is
   begin
      return To_Pointer_To_Subdocument (Address (This));
   end Pointer;

   procedure Attach (This    : in out Subdocument_Type;
                     Pointer : in     Pointer_To_Subdocument)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Subdocument_Type)
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
     (This : Subdocument_Type)
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
     (This : Subdocument_Type)
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

   function Get_Locked
     (This : Subdocument_Type)
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
     (This : Subdocument_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Locked
         (Pointer (This),
          prop));

   end Put_Locked;

   function Get_Range
     (This : Subdocument_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Name
     (This : Subdocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_Path
     (This : Subdocument_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Path
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Path;

   function Get_HasFile
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasFile
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasFile;

   function Get_Level
     (This : Subdocument_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Level
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Level;

   procedure Delete
     (This : Subdocument_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   procedure Split
     (This   : Subdocument_Type;
      uRange : Pointer_To_uRange)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Split
         (Pointer (This),
          uRange));

   end Split;

   function Open
     (This : Subdocument_Type)
     return Pointer_To_uDocument
   is
       RetVal : aliased Pointer_To_uDocument;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Open;

end winword.Subdocument_Interface;

