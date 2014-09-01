package body winword.TableOfAuthoritiesCategory_Object is

   function Get_Application
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthoritiesCategory_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthoritiesCategory_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthoritiesCategory_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthoritiesCategory_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : TableOfAuthoritiesCategory_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         TableOfAuthoritiesCategory_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_Index
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, TableOfAuthoritiesCategory_Get_Index);
   end Get_Index;

end winword.TableOfAuthoritiesCategory_Object;

