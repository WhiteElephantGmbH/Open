package body winword.Versions_Object is

   function Get_Application
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Versions_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Versions_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Versions_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Versions_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Versions_Get_Count);
   end Get_Count;

   function Get_AutoVersion
     (This : Versions_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Versions_Get_AutoVersion);
   end Get_AutoVersion;

   procedure Put_AutoVersion
     (This : Versions_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Versions_Put_AutoVersion,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoVersion;

   function Item
     (This  : Versions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Versions_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   procedure Save
     (This    : Versions_Type;
      Comment : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         Versions_Save,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Comment),
         Free);
   end Save;

end winword.Versions_Object;

