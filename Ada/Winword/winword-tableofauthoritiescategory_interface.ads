with GNATCOM.Dispinterface;

package winword.TableOfAuthoritiesCategory_Interface is

   type TableOfAuthoritiesCategory_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TableOfAuthoritiesCategory_Type);

   function Pointer (This : TableOfAuthoritiesCategory_Type)
     return Pointer_To_TableOfAuthoritiesCategory;

   procedure Attach (This    : in out TableOfAuthoritiesCategory_Type;
                     Pointer : in     Pointer_To_TableOfAuthoritiesCategory);

   function Get_Application
     (This : TableOfAuthoritiesCategory_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TableOfAuthoritiesCategory_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : TableOfAuthoritiesCategory_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Index
     (This : TableOfAuthoritiesCategory_Type)
     return Interfaces.C.long;

end winword.TableOfAuthoritiesCategory_Interface;

