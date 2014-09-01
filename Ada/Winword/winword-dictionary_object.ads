with GNATCOM.Dispinterface;

package winword.Dictionary_Object is

   type Dictionary_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Path
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageID
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageID
     (This : Dictionary_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ReadOnly
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   function Get_LanguageSpecific
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LanguageSpecific
     (This : Dictionary_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : Dictionary_Type);

end winword.Dictionary_Object;

