with GNATCOM.Dispinterface;

package winword.Property_Interface is

   type Property_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Property_Type);

   function Pointer (This : Property_Type)
     return Pointer_To_Property;

   procedure Attach (This    : in out Property_Type;
                     Pointer : in     Pointer_To_Property);

   function Get_Value
     (This       : Property_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This       : Property_Type;
      lppvReturn : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   function Get_IndexedValue
     (This       : Property_Type;
      Index1     : GNATCOM.Types.VARIANT;
      Index2     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index3     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index4     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Put_IndexedValue
     (This       : Property_Type;
      Index1     : GNATCOM.Types.VARIANT;
      Index2     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index3     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index4     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      lppvReturn : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   function Get_NumIndices
     (This      : Property_Type)
     return Interfaces.C.short;

   function Get_Application
     (This      : Property_Type)
     return Pointer_To_Application;

   function Get_Parent
     (This       : Property_Type)
     return Pointer_To_uProperties;

   function Get_Name
     (This         : Property_Type)
     return GNATCOM.Types.BSTR;

   function Get_VBE
     (This      : Property_Type)
     return Pointer_To_VBE;

   function Get_Collection
     (This       : Property_Type)
     return Pointer_To_uProperties;

   function Get_Object
     (This   : Property_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   procedure PutRef_Object
     (This   : Property_Type;
      lppunk : GNATCOM.Types.Pointer_To_IUnknown);

end winword.Property_Interface;

