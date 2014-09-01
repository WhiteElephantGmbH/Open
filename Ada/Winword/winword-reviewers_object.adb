package body winword.Reviewers_Object is

   function Getu_NewEnum
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewers_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Application
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewers_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewers_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewers_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : Reviewers_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reviewers_Get_Count);
   end Get_Count;

   function Item
     (This  : Reviewers_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Reviewers_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.Reviewers_Object;

