with GNATCOM.Dispinterface;

package winword.HangulHanjaConversionDictionaries_Object is

   type HangulHanjaConversionDictionaries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Maximum
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ActiveCustomDictionary
     (This : HangulHanjaConversionDictionaries_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_BuiltinDictionary
     (This : HangulHanjaConversionDictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : HangulHanjaConversionDictionaries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This     : HangulHanjaConversionDictionaries_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ClearAll
     (This : HangulHanjaConversionDictionaries_Type);

end winword.HangulHanjaConversionDictionaries_Object;

