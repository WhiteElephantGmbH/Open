with GNATCOM.Dispinterface;

package winword.Property_Object is

   type Property_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Value
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This : Property_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_IndexedValue
     (This   : Property_Type;
      Index1 : GNATCOM.Types.VARIANT;
      Index2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Index3 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Index4 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_IndexedValue
     (This   : Property_Type;
      Index1 : GNATCOM.Types.VARIANT;
      Index2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Index3 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Index4 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      P5     : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   function Get_NumIndices
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Collection
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Object
     (This : Property_Type)
     return GNATCOM.Types.VARIANT;

   procedure PutRef_Object
     (This : Property_Type;
      P1   : GNATCOM.Types.VARIANT);

end winword.Property_Object;

