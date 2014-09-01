package body winword.uVBComponents_Object is

   function Item
     (This  : uVBComponents_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBComponents_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end Item;

   function Get_Parent
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponents_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponents_Get_Count);
   end Get_Count;

   function uNewEnum
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uVBComponents_uNewEnum);
   end uNewEnum;

   procedure Remove
     (This        : uVBComponents_Type;
      VBComponent : GNATCOM.Types.VARIANT;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         uVBComponents_Remove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => VBComponent),
         Free);
   end Remove;

   function Add
     (This          : uVBComponents_Type;
      ComponentType : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBComponents_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ComponentType),
         Free);
   end Add;

   function Import
     (This     : uVBComponents_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBComponents_Import,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end Import;

   function Get_VBE
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponents_Get_VBE);
   end Get_VBE;

   function AddCustom
     (This   : uVBComponents_Type;
      ProgId : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBComponents_AddCustom,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => ProgId),
         Free);
   end AddCustom;

   function AddMTDesigner
     (This  : uVBComponents_Type;
      index : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uVBComponents_AddMTDesigner,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end AddMTDesigner;

end winword.uVBComponents_Object;

