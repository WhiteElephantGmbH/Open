package body winword.uWindows_Object is

   function Get_VBE
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uWindows_Get_VBE);
   end Get_VBE;

   function Get_Parent
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uWindows_Get_Parent);
   end Get_Parent;

   function Item
     (This  : uWindows_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uWindows_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => index),
         Free);
   end Item;

   function Get_Count
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uWindows_Get_Count);
   end Get_Count;

   function uNewEnum
     (This : uWindows_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uWindows_uNewEnum);
   end uNewEnum;

   function CreateToolWindow
     (This         : uWindows_Type;
      AddInInst    : GNATCOM.Types.VARIANT;
      ProgId       : GNATCOM.Types.VARIANT;
      Caption      : GNATCOM.Types.VARIANT;
      GuidPosition : GNATCOM.Types.VARIANT;
      DocObj       : GNATCOM.Types.VARIANT;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         uWindows_CreateToolWindow,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => DocObj,
          2 => GuidPosition,
          3 => Caption,
          4 => ProgId,
          5 => AddInInst),
         Free);
   end CreateToolWindow;

end winword.uWindows_Object;

