package body winword.Property_Object is

   function Get_Value
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_Value);
   end Get_Value;

   procedure Put_Value
     (This : Property_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Property_Put_Value,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Value;

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
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         Property_Get_IndexedValue,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index4,
          2 => Index3,
          3 => Index2,
          4 => Index1),
         Free);
   end Get_IndexedValue;

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
      Free   : Boolean := True)
   is
   begin
      Put
        (This,
         Property_Put_IndexedValue,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P5,
          2 => Index4,
          3 => Index3,
          4 => Index2,
          5 => Index1),
         Free);
   end Put_IndexedValue;

   function Get_NumIndices
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_NumIndices);
   end Get_NumIndices;

   function Get_Application
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_Application);
   end Get_Application;

   function Get_Parent
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_Name);
   end Get_Name;

   function Get_VBE
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_VBE);
   end Get_VBE;

   function Get_Collection
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_Collection);
   end Get_Collection;

   function Get_Object
     (This : Property_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Property_Get_Object);
   end Get_Object;

   procedure PutRef_Object
     (This : Property_Type;
      P1   : GNATCOM.Types.VARIANT)
   is
   begin
      PutRef
        (This,
         Property_PutRef_Object,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1));
   end PutRef_Object;

end winword.Property_Object;

