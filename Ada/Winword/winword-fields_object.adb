package body winword.Fields_Object is

   function Get_Application
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Fields_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Fields_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Fields_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Fields_Get_Count);
   end Get_Count;

   function Get_Locked
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Fields_Get_Locked);
   end Get_Locked;

   procedure Put_Locked
     (This : Fields_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Fields_Put_Locked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Locked;

   function Getu_NewEnum
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Fields_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : Fields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Fields_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure ToggleShowCodes
     (This : Fields_Type)
   is
   begin
      Invoke (This, Fields_ToggleShowCodes);
   end ToggleShowCodes;

   function Update
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Fields_Update);
   end Update;

   procedure Unlink
     (This : Fields_Type)
   is
   begin
      Invoke (This, Fields_Unlink);
   end Unlink;

   procedure UpdateSource
     (This : Fields_Type)
   is
   begin
      Invoke (This, Fields_UpdateSource);
   end UpdateSource;

   function Add
     (This               : Fields_Type;
      uRange             : GNATCOM.Types.VARIANT;
      uType              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Text               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PreserveFormatting : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Fields_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => PreserveFormatting,
          2 => Text,
          3 => uType,
          4 => uRange),
         Free);
   end Add;

end winword.Fields_Object;

