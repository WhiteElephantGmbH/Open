package body winword.AutoCorrectEntries_Object is

   function Get_Application
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntries_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntries_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntries_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntries_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntries_Get_Count);
   end Get_Count;

   function Item
     (This  : AutoCorrectEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoCorrectEntries_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This  : AutoCorrectEntries_Type;
      Name  : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoCorrectEntries_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Value,
          2 => Name),
         Free);
   end Add;

   function AddRichText
     (This   : AutoCorrectEntries_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoCorrectEntries_AddRichText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange,
          2 => Name),
         Free);
   end AddRichText;

end winword.AutoCorrectEntries_Object;

