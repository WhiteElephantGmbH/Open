package body winword.AddIn_Object is

   function Get_Description
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIn_Get_Description);
   end Get_Description;

   procedure Put_Description
     (This : AddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AddIn_Put_Description,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Description;

   function Get_VBE
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIn_Get_VBE);
   end Get_VBE;

   function Get_Collection
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIn_Get_Collection);
   end Get_Collection;

   function Get_ProgId
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIn_Get_ProgId);
   end Get_ProgId;

   function Get_Guid
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIn_Get_Guid);
   end Get_Guid;

   function Get_Connect
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIn_Get_Connect);
   end Get_Connect;

   procedure Put_Connect
     (This : AddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AddIn_Put_Connect,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Connect;

   function Get_Object
     (This : AddIn_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AddIn_Get_Object);
   end Get_Object;

   procedure Put_Object
     (This : AddIn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AddIn_Put_Object,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Object;

end winword.AddIn_Object;

