with GNATCOM.Dispinterface;

package winword.Sentences_Object is

   type Sentences_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT;

   function Get_First
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Last
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Sentences_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Sentences_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Sentences_Object;

