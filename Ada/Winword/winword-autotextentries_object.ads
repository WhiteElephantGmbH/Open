with GNATCOM.Dispinterface;

package winword.AutoTextEntries_Object is

   type AutoTextEntries_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : AutoTextEntries_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : AutoTextEntries_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : AutoTextEntries_Type;
      Name   : GNATCOM.Types.VARIANT;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AppendToSpike
     (This   : AutoTextEntries_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.AutoTextEntries_Object;

