with GNATCOM.Dispinterface;

package winword.Dictionaries_Interface is

   type Dictionaries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Dictionaries_Type);

   function Pointer (This : Dictionaries_Type)
     return Pointer_To_Dictionaries;

   procedure Attach (This    : in out Dictionaries_Type;
                     Pointer : in     Pointer_To_Dictionaries);

   function Get_Application
     (This : Dictionaries_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Dictionaries_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Dictionaries_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Dictionaries_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Dictionaries_Type)
     return Interfaces.C.long;

   function Get_Maximum
     (This : Dictionaries_Type)
     return Interfaces.C.long;

   function Get_ActiveCustomDictionary
     (This : Dictionaries_Type)
     return Pointer_To_Dictionary;

   procedure Put_ActiveCustomDictionary
     (This : Dictionaries_Type;
      prop : Pointer_To_Dictionary);

   function Item
     (This  : Dictionaries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Dictionary;

   function Add
     (This     : Dictionaries_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return Pointer_To_Dictionary;

   procedure ClearAll
     (This : Dictionaries_Type);

end winword.Dictionaries_Interface;

