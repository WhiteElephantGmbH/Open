package body winword.PageNumber_Object is

   function Get_Application
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumber_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumber_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumber_Get_Parent);
   end Get_Parent;

   function Get_Index
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumber_Get_Index);
   end Get_Index;

   function Get_Alignment
     (This : PageNumber_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, PageNumber_Get_Alignment);
   end Get_Alignment;

   procedure Put_Alignment
     (This : PageNumber_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         PageNumber_Put_Alignment,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Alignment;

   procedure uSelect
     (This : PageNumber_Type)
   is
   begin
      Invoke (This, PageNumber_uSelect);
   end uSelect;

   procedure Copy
     (This : PageNumber_Type)
   is
   begin
      Invoke (This, PageNumber_Copy);
   end Copy;

   procedure Cut
     (This : PageNumber_Type)
   is
   begin
      Invoke (This, PageNumber_Cut);
   end Cut;

   procedure Delete
     (This : PageNumber_Type)
   is
   begin
      Invoke (This, PageNumber_Delete);
   end Delete;

end winword.PageNumber_Object;

