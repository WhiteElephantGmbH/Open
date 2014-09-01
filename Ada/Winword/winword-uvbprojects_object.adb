package body winword.uVBProjects_Object is

   function Item
     (This  : uVBProjects_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBProjects_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end Item;

   function Get_VBE
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProjects_Get_VBE);
   end Get_VBE;

   function Get_Parent
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProjects_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProjects_Get_Count);
   end Get_Count;

   function uNewEnum
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uVBProjects_uNewEnum);
   end uNewEnum;

   function Add
     (This  : uVBProjects_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBProjects_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uType),
         Free);
   end Add;

   procedure Remove
     (This : uVBProjects_Type;
      lpc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Invoke
        (This,
         uVBProjects_Remove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => lpc),
         Free);
   end Remove;

   function Open
     (This     : uVBProjects_Type;
      bstrPath : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBProjects_Open,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => bstrPath),
         Free);
   end Open;

end winword.uVBProjects_Object;

