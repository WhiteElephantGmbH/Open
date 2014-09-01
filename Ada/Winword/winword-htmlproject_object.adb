package body winword.HTMLProject_Object is

   function Get_Application
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProject_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProject_Get_Creator);
   end Get_Creator;

   function Get_State
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProject_Get_State);
   end Get_State;

   procedure RefreshProject
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         HTMLProject_RefreshProject,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Refresh),
         Free);
   end RefreshProject;

   procedure RefreshDocument
     (This    : HTMLProject_Type;
      Refresh : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
   is
   begin
      Invoke
        (This,
         HTMLProject_RefreshDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Refresh),
         Free);
   end RefreshDocument;

   function Get_HTMLProjectItems
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProject_Get_HTMLProjectItems);
   end Get_HTMLProjectItems;

   function Get_Parent
     (This : HTMLProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLProject_Get_Parent);
   end Get_Parent;

   procedure Open
     (This     : HTMLProject_Type;
      OpenKind : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         HTMLProject_Open,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => OpenKind),
         Free);
   end Open;

end winword.HTMLProject_Object;

