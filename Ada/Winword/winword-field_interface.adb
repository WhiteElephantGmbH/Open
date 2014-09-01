with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Field_Interface is

   procedure Initialize (This : in out Field_Type) is
   begin
      Set_IID (This, IID_Field);
   end Initialize;

   function Pointer (This : Field_Type)
     return Pointer_To_Field
   is
   begin
      return To_Pointer_To_Field (Address (This));
   end Pointer;

   procedure Attach (This    : in out Field_Type;
                     Pointer : in     Pointer_To_Field)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Field_Type)
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
     (This : Field_Type)
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
     (This : Field_Type)
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

   function Get_Code
     (This : Field_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Code
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Code;

   procedure Put_Code
     (This : Field_Type;
      prop : Pointer_To_uRange)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Code
         (Pointer (This),
          prop));

   end Put_Code;

   function Get_Type
     (This : Field_Type)
     return WdFieldType
   is
       RetVal : aliased WdFieldType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Locked
     (This : Field_Type)
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
     (This : Field_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Locked
         (Pointer (This),
          prop));

   end Put_Locked;

   function Get_Kind
     (This : Field_Type)
     return WdFieldKind
   is
       RetVal : aliased WdFieldKind;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Kind
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Kind;

   function Get_Result
     (This : Field_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Result
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Result;

   procedure Put_Result
     (This : Field_Type;
      prop : Pointer_To_uRange)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Result
         (Pointer (This),
          prop));

   end Put_Result;

   function Get_Data
     (This : Field_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Data
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Data;

   procedure Put_Data
     (This : Field_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Data
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_Data;

   function Get_Next
     (This : Field_Type)
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Next
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Next;

   function Get_Previous
     (This : Field_Type)
     return Pointer_To_Field
   is
       RetVal : aliased Pointer_To_Field;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Previous
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Previous;

   function Get_Index
     (This : Field_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   function Get_ShowCodes
     (This : Field_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ShowCodes
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ShowCodes;

   procedure Put_ShowCodes
     (This : Field_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ShowCodes
         (Pointer (This),
          prop));

   end Put_ShowCodes;

   function Get_LinkFormat
     (This : Field_Type)
     return Pointer_To_LinkFormat
   is
       RetVal : aliased Pointer_To_LinkFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_LinkFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_LinkFormat;

   function Get_OLEFormat
     (This : Field_Type)
     return Pointer_To_OLEFormat
   is
       RetVal : aliased Pointer_To_OLEFormat;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_OLEFormat
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_OLEFormat;

   function Get_InlineShape
     (This : Field_Type)
     return Pointer_To_InlineShape
   is
       RetVal : aliased Pointer_To_InlineShape;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_InlineShape
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_InlineShape;

   procedure uSelect
     (This : Field_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   function Update
     (This : Field_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Update
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Update;

   procedure Unlink
     (This : Field_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Unlink
         (Pointer (This)));

   end Unlink;

   procedure UpdateSource
     (This : Field_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.UpdateSource
         (Pointer (This)));

   end UpdateSource;

   procedure DoClick
     (This : Field_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DoClick
         (Pointer (This)));

   end DoClick;

   procedure Copy
     (This : Field_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This)));

   end Copy;

   procedure Cut
     (This : Field_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Cut
         (Pointer (This)));

   end Cut;

   procedure Delete
     (This : Field_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.Field_Interface;

