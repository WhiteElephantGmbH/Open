with GNATCOM.Dispinterface;

package winword.AutoCorrectEntry_Object is

   type AutoCorrectEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : AutoCorrectEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Value
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This : AutoCorrectEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_RichText
     (This : AutoCorrectEntry_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : AutoCorrectEntry_Type);

   procedure Apply
     (This   : AutoCorrectEntry_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

end winword.AutoCorrectEntry_Object;

