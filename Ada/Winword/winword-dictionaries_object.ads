with GNATCOM.Dispinterface;

package winword.Dictionaries_Object is

   type Dictionaries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Maximum
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ActiveCustomDictionary
     (This : Dictionaries_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ActiveCustomDictionary
     (This : Dictionaries_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Dictionaries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This     : Dictionaries_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ClearAll
     (This : Dictionaries_Type);

end winword.Dictionaries_Object;

