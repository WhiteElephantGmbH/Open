package body winword.Subdocument_Object is

   function Get_Application
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Parent);
   end Get_Parent;

   function Get_Locked
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Locked);
   end Get_Locked;

   procedure Put_Locked
     (This : Subdocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Subdocument_Put_Locked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Locked;

   function Get_Range
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Range);
   end Get_Range;

   function Get_Name
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Name);
   end Get_Name;

   function Get_Path
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Path);
   end Get_Path;

   function Get_HasFile
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_HasFile);
   end Get_HasFile;

   function Get_Level
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Subdocument_Get_Level);
   end Get_Level;

   procedure Delete
     (This : Subdocument_Type)
   is
   begin
      Invoke (This, Subdocument_Delete);
   end Delete;

   procedure Split
     (This   : Subdocument_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
   is
   begin
      Invoke
        (This,
         Subdocument_Split,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end Split;

   function Open
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Subdocument_Open);
   end Open;

end winword.Subdocument_Object;

