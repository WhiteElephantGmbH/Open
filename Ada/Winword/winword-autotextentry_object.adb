package body winword.AutoTextEntry_Object is

   function Get_Application
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntry_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntry_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntry_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntry_Get_Index);
   end Get_Index;

   function Get_Name
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntry_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : AutoTextEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoTextEntry_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_StyleName
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntry_Get_StyleName);
   end Get_StyleName;

   function Get_Value
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoTextEntry_Get_Value);
   end Get_Value;

   procedure Put_Value
     (This : AutoTextEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoTextEntry_Put_Value,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Value;

   procedure Delete
     (This : AutoTextEntry_Type)
   is
   begin
      Invoke (This, AutoTextEntry_Delete);
   end Delete;

   function Insert
     (This     : AutoTextEntry_Type;
      Where    : GNATCOM.Types.VARIANT;
      RichText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         AutoTextEntry_Insert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => RichText,
          2 => Where),
         Free);
   end Insert;

end winword.AutoTextEntry_Object;

