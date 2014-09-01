with GNATCOM.Dispinterface;

package winword.AutoTextEntry_Object is

   type AutoTextEntry_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : AutoTextEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StyleName
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Value
     (This : AutoTextEntry_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This : AutoTextEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : AutoTextEntry_Type);

   function Insert
     (This     : AutoTextEntry_Type;
      Where    : GNATCOM.Types.VARIANT;
      RichText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.AutoTextEntry_Object;

