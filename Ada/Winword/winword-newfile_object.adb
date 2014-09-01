package body winword.NewFile_Object is

   function Get_Application
     (This : NewFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, NewFile_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : NewFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, NewFile_Get_Creator);
   end Get_Creator;

   function Add
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.VARIANT;
      Section     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         NewFile_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Action,
          2 => DisplayName,
          3 => Section,
          4 => FileName),
         Free);
   end Add;

   function Remove
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.VARIANT;
      Section     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         NewFile_Remove,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Action,
          2 => DisplayName,
          3 => Section,
          4 => FileName),
         Free);
   end Remove;

end winword.NewFile_Object;

