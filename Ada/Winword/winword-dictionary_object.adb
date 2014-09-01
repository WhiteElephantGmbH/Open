package body winword.Dictionary_Object is

   function Get_Application
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_Name);
   end Get_Name;

   function Get_Path
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_Path);
   end Get_Path;

   function Get_LanguageID
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_LanguageID);
   end Get_LanguageID;

   procedure Put_LanguageID
     (This : Dictionary_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Dictionary_Put_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageID;

   function Get_ReadOnly
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_ReadOnly);
   end Get_ReadOnly;

   function Get_Type
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_Type);
   end Get_Type;

   function Get_LanguageSpecific
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dictionary_Get_LanguageSpecific);
   end Get_LanguageSpecific;

   procedure Put_LanguageSpecific
     (This : Dictionary_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Dictionary_Put_LanguageSpecific,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LanguageSpecific;

   procedure Delete
     (This : Dictionary_Type)
   is
   begin
      Invoke (This, Dictionary_Delete);
   end Delete;

end winword.Dictionary_Object;

