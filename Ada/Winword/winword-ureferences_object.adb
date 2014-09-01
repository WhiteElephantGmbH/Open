package body winword.uReferences_Object is

   function Get_Parent
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uReferences_Get_Parent);
   end Get_Parent;

   function Get_VBE
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uReferences_Get_VBE);
   end Get_VBE;

   function Item
     (This  : uReferences_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uReferences_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end Item;

   function Get_Count
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uReferences_Get_Count);
   end Get_Count;

   function uNewEnum
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uReferences_uNewEnum);
   end uNewEnum;

   function AddFromGuid
     (This  : uReferences_Type;
      Guid  : GNATCOM.Types.VARIANT;
      Major : GNATCOM.Types.VARIANT;
      Minor : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uReferences_AddFromGuid,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Minor,
          2 => Major,
          3 => Guid),
         Free);
   end AddFromGuid;

   function AddFromFile
     (This     : uReferences_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uReferences_AddFromFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end AddFromFile;

   procedure Remove
     (This      : uReferences_Type;
      Reference : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         uReferences_Remove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Reference),
         Free);
   end Remove;

end winword.uReferences_Object;

