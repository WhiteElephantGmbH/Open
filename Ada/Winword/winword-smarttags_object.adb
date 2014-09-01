package body winword.SmartTags_Object is

   function Getu_NewEnum
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTags_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTags_Get_Count);
   end Get_Count;

   function Get_Application
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTags_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTags_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : SmartTags_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SmartTags_Get_Parent);
   end Get_Parent;

   function Item
     (This  : SmartTags_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         SmartTags_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This       : SmartTags_Type;
      Name       : GNATCOM.Types.VARIANT;
      uRange     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Properties : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         SmartTags_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Properties,
          2 => uRange,
          3 => Name),
         Free);
   end Add;

end winword.SmartTags_Object;

