package body winword.ProofreadingErrors_Object is

   function Get_Application
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ProofreadingErrors_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ProofreadingErrors_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ProofreadingErrors_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ProofreadingErrors_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ProofreadingErrors_Get_Count);
   end Get_Count;

   function Get_Type
     (This : ProofreadingErrors_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ProofreadingErrors_Get_Type);
   end Get_Type;

   function Item
     (This  : ProofreadingErrors_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ProofreadingErrors_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.ProofreadingErrors_Object;

