with GNATCOM.Dispinterface;

package winword.Dictionary_Interface is

   type Dictionary_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Dictionary_Type);

   function Pointer (This : Dictionary_Type)
     return Pointer_To_Dictionary;

   procedure Attach (This    : in out Dictionary_Type;
                     Pointer : in     Pointer_To_Dictionary);

   function Get_Application
     (This : Dictionary_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Dictionary_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Dictionary_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : Dictionary_Type)
     return GNATCOM.Types.BSTR;

   function Get_Path
     (This : Dictionary_Type)
     return GNATCOM.Types.BSTR;

   function Get_LanguageID
     (This : Dictionary_Type)
     return WdLanguageID;

   procedure Put_LanguageID
     (This : Dictionary_Type;
      prop : WdLanguageID);

   function Get_ReadOnly
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Type
     (This : Dictionary_Type)
     return WdDictionaryType;

   function Get_LanguageSpecific
     (This : Dictionary_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_LanguageSpecific
     (This : Dictionary_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure Delete
     (This : Dictionary_Type);

end winword.Dictionary_Interface;

