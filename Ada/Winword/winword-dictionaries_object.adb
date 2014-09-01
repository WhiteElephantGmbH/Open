package body winword.Dictionaries_Object is

   function Get_Application
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionaries_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionaries_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionaries_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionaries_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionaries_Get_Count);
   end Get_Count;

   function Get_Maximum
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionaries_Get_Maximum);
   end Get_Maximum;

   function Get_ActiveCustomDictionary
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionaries_Get_ActiveCustomDictionary);
   end Get_ActiveCustomDictionary;

   procedure Put_ActiveCustomDictionary
     (This : Dictionaries_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Dictionaries_Put_ActiveCustomDictionary,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ActiveCustomDictionary;

   function Item
     (This  : Dictionaries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Dictionaries_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This     : Dictionaries_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Dictionaries_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end Add;

   procedure ClearAll
     (This : Dictionaries_Type)
   is
   begin
      Invoke (This, Dictionaries_ClearAll);
   end ClearAll;

end winword.Dictionaries_Object;

