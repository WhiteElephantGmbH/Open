package body winword.Reference_Object is

   function Get_Collection
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_Collection);
   end Get_Collection;

   function Get_VBE
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_VBE);
   end Get_VBE;

   function Get_Name
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_Name);
   end Get_Name;

   function Get_Guid
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_Guid);
   end Get_Guid;

   function Get_Major
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_Major);
   end Get_Major;

   function Get_Minor
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_Minor);
   end Get_Minor;

   function Get_FullPath
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_FullPath);
   end Get_FullPath;

   function Get_BuiltIn
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_BuiltIn);
   end Get_BuiltIn;

   function Get_IsBroken
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_IsBroken);
   end Get_IsBroken;

   function Get_Type
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_Type);
   end Get_Type;

   function Get_Description
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Reference_Get_Description);
   end Get_Description;

end winword.Reference_Object;

