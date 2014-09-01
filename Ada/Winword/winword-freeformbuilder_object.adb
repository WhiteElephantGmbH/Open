package body winword.FreeformBuilder_Object is

   function Get_Application
     (This : FreeformBuilder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FreeformBuilder_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : FreeformBuilder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FreeformBuilder_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : FreeformBuilder_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, FreeformBuilder_Get_Parent);
   end Get_Parent;

   procedure AddNodes
     (This        : FreeformBuilder_Type;
      SegmentType : GNATCOM.Types.VARIANT;
      EditingType : GNATCOM.Types.VARIANT;
      X1          : GNATCOM.Types.VARIANT;
      Y1          : GNATCOM.Types.VARIANT;
      X2          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Y2          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      X3          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Y3          : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
   is
   begin
      Invoke
        (This,
         FreeformBuilder_AddNodes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Y3,
          2 => X3,
          3 => Y2,
          4 => X2,
          5 => Y1,
          6 => X1,
          7 => EditingType,
          8 => SegmentType),
         Free);
   end AddNodes;

   function ConvertToShape
     (This   : FreeformBuilder_Type;
      Anchor : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         FreeformBuilder_ConvertToShape,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Anchor),
         Free);
   end ConvertToShape;

end winword.FreeformBuilder_Object;

