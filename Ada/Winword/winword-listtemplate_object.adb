package body winword.ListTemplate_Object is

   function Get_Application
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplate_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplate_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplate_Get_Parent);
   end Get_Parent;

   function Get_OutlineNumbered
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplate_Get_OutlineNumbered);
   end Get_OutlineNumbered;

   procedure Put_OutlineNumbered
     (This : ListTemplate_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListTemplate_Put_OutlineNumbered,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_OutlineNumbered;

   function Get_Name
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplate_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : ListTemplate_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListTemplate_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_ListLevels
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListTemplate_Get_ListLevels);
   end Get_ListLevels;

   function Convert
     (This  : ListTemplate_Type;
      Level : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         ListTemplate_Convert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Level),
         Free);
   end Convert;

end winword.ListTemplate_Object;

