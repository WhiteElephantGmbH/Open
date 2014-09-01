package body winword.RecentFile_Object is

   function Get_Application
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFile_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFile_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFile_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFile_Get_Name);
   end Get_Name;

   function Get_Index
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFile_Get_Index);
   end Get_Index;

   function Get_ReadOnly
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFile_Get_ReadOnly);
   end Get_ReadOnly;

   procedure Put_ReadOnly
     (This : RecentFile_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         RecentFile_Put_ReadOnly,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ReadOnly;

   function Get_Path
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, RecentFile_Get_Path);
   end Get_Path;

   function Open
     (This : RecentFile_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, RecentFile_Open);
   end Open;

   procedure Delete
     (This : RecentFile_Type)
   is
   begin
      Invoke (This, RecentFile_Delete);
   end Delete;

end winword.RecentFile_Object;

