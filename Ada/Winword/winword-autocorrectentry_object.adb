package body winword.AutoCorrectEntry_Object is

   function Get_Application
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntry_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntry_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntry_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntry_Get_Index);
   end Get_Index;

   function Get_Name
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntry_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : AutoCorrectEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrectEntry_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_Value
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntry_Get_Value);
   end Get_Value;

   procedure Put_Value
     (This : AutoCorrectEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCorrectEntry_Put_Value,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Value;

   function Get_RichText
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCorrectEntry_Get_RichText);
   end Get_RichText;

   procedure Delete
     (This : AutoCorrectEntry_Type)
   is
   begin
      Invoke (This, AutoCorrectEntry_Delete);
   end Delete;

   procedure Apply
     (This   : AutoCorrectEntry_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         AutoCorrectEntry_Apply,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end Apply;

end winword.AutoCorrectEntry_Object;

