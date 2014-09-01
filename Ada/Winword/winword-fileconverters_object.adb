package body winword.FileConverters_Object is

   function Get_Application
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverters_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverters_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverters_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverters_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverters_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_ConvertMacWordChevrons
     (This : FileConverters_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FileConverters_Get_ConvertMacWordChevrons);
   end Get_ConvertMacWordChevrons;

   procedure Put_ConvertMacWordChevrons
     (This : FileConverters_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         FileConverters_Put_ConvertMacWordChevrons,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ConvertMacWordChevrons;

   function Item
     (This  : FileConverters_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FileConverters_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

end winword.FileConverters_Object;

