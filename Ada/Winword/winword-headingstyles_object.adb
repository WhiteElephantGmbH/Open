package body winword.HeadingStyles_Object is

   function Get_Application
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyles_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyles_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyles_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyles_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : HeadingStyles_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyles_Get_Count);
   end Get_Count;

   function Item
     (This  : HeadingStyles_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HeadingStyles_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This  : HeadingStyles_Type;
      Style : GNATCOM.Types.VARIANT;
      Level : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HeadingStyles_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level,
          2 => Style),
         Free);
   end Add;

end winword.HeadingStyles_Object;

