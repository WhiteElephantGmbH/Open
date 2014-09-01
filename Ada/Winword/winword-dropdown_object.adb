package body winword.DropDown_Object is

   function Get_Application
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropDown_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropDown_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropDown_Get_Parent);
   end Get_Parent;

   function Get_Valid
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropDown_Get_Valid);
   end Get_Valid;

   function Get_Default
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropDown_Get_Default);
   end Get_Default;

   procedure Put_Default
     (This : DropDown_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DropDown_Put_Default,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Default;

   function Get_Value
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropDown_Get_Value);
   end Get_Value;

   procedure Put_Value
     (This : DropDown_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         DropDown_Put_Value,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Value;

   function Get_ListEntries
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DropDown_Get_ListEntries);
   end Get_ListEntries;

end winword.DropDown_Object;

