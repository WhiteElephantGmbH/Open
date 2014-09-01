with GNATCOM.Dispinterface;

package winword.HangulHanjaConversionDictionaries_Interface is

   type HangulHanjaConversionDictionaries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HangulHanjaConversionDictionaries_Type);

   function Pointer (This : HangulHanjaConversionDictionaries_Type)
     return Pointer_To_HangulHanjaConversionDictionaries;

   procedure Attach (This    : in out HangulHanjaConversionDictionaries_Type;
                     Pointer : in     Pointer_To_HangulHanjaConversionDictionaries);

   function Get_Application
     (This : HangulHanjaConversionDictionaries_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HangulHanjaConversionDictionaries_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : HangulHanjaConversionDictionaries_Type)
     return Interfaces.C.long;

   function Get_Maximum
     (This : HangulHanjaConversionDictionaries_Type)
     return Interfaces.C.long;

   function Get_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return Pointer_To_Dictionary;

   procedure Put_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type;
      prop : Pointer_To_Dictionary);

   function Get_BuiltinDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return Pointer_To_Dictionary;

   function Item
     (This  : HangulHanjaConversionDictionaries_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Dictionary;

   function Add
     (This     : HangulHanjaConversionDictionaries_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return Pointer_To_Dictionary;

   procedure ClearAll
     (This : HangulHanjaConversionDictionaries_Type);

end winword.HangulHanjaConversionDictionaries_Interface;

