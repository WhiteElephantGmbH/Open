with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Tables_Interface is

   procedure Initialize (This : in out Tables_Type) is
   begin
      Set_IID (This, IID_Tables);
   end Initialize;

   function Pointer (This : Tables_Type)
     return Pointer_To_Tables
   is
   begin
      return To_Pointer_To_Tables (Address (This));
   end Pointer;

   procedure Attach (This    : in out Tables_Type;
                     Pointer : in     Pointer_To_Tables)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Getu_NewEnum
     (This : Tables_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_Count
     (This : Tables_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Get_Application
     (This : Tables_Type)
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
     (This : Tables_Type)
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
     (This : Tables_Type)
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

   function Item
     (This  : Tables_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Table
   is
       RetVal : aliased Pointer_To_Table;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function AddOld
     (This       : Tables_Type;
      uRange     : Pointer_To_uRange;
      NumRows    : Interfaces.C.long;
      NumColumns : Interfaces.C.long)
     return Pointer_To_Table
   is
       RetVal : aliased Pointer_To_Table;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddOld
         (Pointer (This),
          uRange,
          NumRows,
          NumColumns,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddOld;

   function Add
     (This                 : Tables_Type;
      uRange               : Pointer_To_uRange;
      NumRows              : Interfaces.C.long;
      NumColumns           : Interfaces.C.long;
      DefaultTableBehavior : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      AutoFitBehavior      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Table
   is
       RetVal : aliased Pointer_To_Table;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          uRange,
          NumRows,
          NumColumns,
          DefaultTableBehavior,
          AutoFitBehavior,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

   function Get_NestingLevel
     (This : Tables_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NestingLevel
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NestingLevel;

end winword.Tables_Interface;

