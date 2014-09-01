package body winword.SignatureSet_Object is

   function Get_Application
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SignatureSet_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SignatureSet_Get_Creator);
   end Get_Creator;

   function Getu_NewEnum
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SignatureSet_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SignatureSet_Get_Count);
   end Get_Count;

   function Get_Item
     (This : SignatureSet_Type;
      iSig : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         SignatureSet_Get_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => iSig),
         Free);
   end Get_Item;

   function Add
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, SignatureSet_Add);
   end Add;

   procedure Commit
     (This : SignatureSet_Type)
   is
   begin
      Invoke (This, SignatureSet_Commit);
   end Commit;

   function Get_Parent
     (This : SignatureSet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, SignatureSet_Get_Parent);
   end Get_Parent;

end winword.SignatureSet_Object;

