package body winword.LanguageSettings_Object is

   function Get_Application
     (This : LanguageSettings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LanguageSettings_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : LanguageSettings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LanguageSettings_Get_Creator);
   end Get_Creator;

   function Get_LanguageID
     (This : LanguageSettings_Type;
      Id   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         LanguageSettings_Get_LanguageID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Id),
         Free);
   end Get_LanguageID;

   function Get_LanguagePreferredForEditing
     (This : LanguageSettings_Type;
      lid  : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         LanguageSettings_Get_LanguagePreferredForEditing,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => lid),
         Free);
   end Get_LanguagePreferredForEditing;

   function Get_Parent
     (This : LanguageSettings_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LanguageSettings_Get_Parent);
   end Get_Parent;

end winword.LanguageSettings_Object;

