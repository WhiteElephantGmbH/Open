with GNATCOM.Dispinterface;

package winword.LanguageSettings_Interface is

   type LanguageSettings_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out LanguageSettings_Type);

   function Pointer (This : LanguageSettings_Type)
     return Pointer_To_LanguageSettings;

   procedure Attach (This    : in out LanguageSettings_Type;
                     Pointer : in     Pointer_To_LanguageSettings);

   function Get_Application
     (This    : LanguageSettings_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : LanguageSettings_Type)
     return Interfaces.C.long;

   function Get_LanguageID
     (This : LanguageSettings_Type;
      Id   : MsoAppLanguageID)
     return Interfaces.C.int;

   function Get_LanguagePreferredForEditing
     (This : LanguageSettings_Type;
      lid  : MsoLanguageID)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Parent
     (This    : LanguageSettings_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

end winword.LanguageSettings_Interface;

