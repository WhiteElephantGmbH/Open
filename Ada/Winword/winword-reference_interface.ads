with GNATCOM.Dispinterface;

package winword.Reference_Interface is

   type Reference_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Reference_Type);

   function Pointer (This : Reference_Type)
     return Pointer_To_Reference;

   procedure Attach (This    : in out Reference_Type;
                     Pointer : in     Pointer_To_Reference);

   function Get_Collection
     (This    : Reference_Type)
     return Pointer_To_uReferences;

   function Get_VBE
     (This       : Reference_Type)
     return Pointer_To_VBE;

   function Get_Name
     (This      : Reference_Type)
     return GNATCOM.Types.BSTR;

   function Get_Guid
     (This      : Reference_Type)
     return GNATCOM.Types.BSTR;

   function Get_Major
     (This   : Reference_Type)
     return Interfaces.C.long;

   function Get_Minor
     (This   : Reference_Type)
     return Interfaces.C.long;

   function Get_FullPath
     (This          : Reference_Type)
     return GNATCOM.Types.BSTR;

   function Get_BuiltIn
     (This        : Reference_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_IsBroken
     (This       : Reference_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Type
     (This  : Reference_Type)
     return vbext_RefKind;

   function Get_Description
     (This      : Reference_Type)
     return GNATCOM.Types.BSTR;

end winword.Reference_Interface;

