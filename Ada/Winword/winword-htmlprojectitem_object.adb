package body winword.HTMLProjectItem_Object is

   function Get_Application
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItem_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItem_Get_Creator);
   end Get_Creator;

   function Get_Name
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItem_Get_Name);
   end Get_Name;

   function Get_IsOpen
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItem_Get_IsOpen);
   end Get_IsOpen;

   procedure LoadFromFile
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         HTMLProjectItem_LoadFromFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end LoadFromFile;

   procedure Open
     (This     : HTMLProjectItem_Type;
      OpenKind : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         HTMLProjectItem_Open,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => OpenKind),
         Free);
   end Open;

   procedure SaveCopyAs
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         HTMLProjectItem_SaveCopyAs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end SaveCopyAs;

   function Get_Text
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItem_Get_Text);
   end Get_Text;

   procedure Put_Text
     (This : HTMLProjectItem_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HTMLProjectItem_Put_Text,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Text;

   function Get_Parent
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProjectItem_Get_Parent);
   end Get_Parent;

end winword.HTMLProjectItem_Object;

