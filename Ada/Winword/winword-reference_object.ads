with GNATCOM.Dispinterface;

package winword.Reference_Object is

   type Reference_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Collection
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Guid
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Major
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Minor
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FullPath
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_BuiltIn
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsBroken
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Description
     (This : Reference_Type)
     return GNATCOM.Types.VARIANT;

end winword.Reference_Object;

