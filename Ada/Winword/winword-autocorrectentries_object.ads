with GNATCOM.Dispinterface;

package winword.AutoCorrectEntries_Object is

   type AutoCorrectEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : AutoCorrectEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : AutoCorrectEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This  : AutoCorrectEntries_Type;
      Name  : GNATCOM.Types.VARIANT;
      Value : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddRichText
     (This   : AutoCorrectEntries_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.AutoCorrectEntries_Object;

