package body winword.ListEntry_Object is

   function Get_Application
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntry_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntry_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntry_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntry_Get_Index);
   end Get_Index;

   function Get_Name
     (This : ListEntry_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, ListEntry_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : ListEntry_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         ListEntry_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   procedure Delete
     (This : ListEntry_Type)
   is
   begin
      Invoke (This, ListEntry_Delete);
   end Delete;

end winword.ListEntry_Object;

