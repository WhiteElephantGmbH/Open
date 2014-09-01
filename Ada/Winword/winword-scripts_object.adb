package body winword.Scripts_Object is

   function Get_Application
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Scripts_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Scripts_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Scripts_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Scripts_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Scripts_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : Scripts_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Scripts_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This       : Scripts_Type;
      Anchor     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Location   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Language   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Id         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extended   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ScriptText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Scripts_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ScriptText,
          2 => Extended,
          3 => Id,
          4 => Language,
          5 => Location,
          6 => Anchor),
         Free);
   end Add;

   procedure Delete
     (This : Scripts_Type)
   is
   begin
      Invoke (This, Scripts_Delete);
   end Delete;

end winword.Scripts_Object;

