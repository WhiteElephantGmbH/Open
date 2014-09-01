with GNATCOM.Dispinterface;

package winword.TableOfAuthoritiesCategory_Object is

   type TableOfAuthoritiesCategory_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : TableOfAuthoritiesCategory_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Index
     (This : TableOfAuthoritiesCategory_Type)
     return GNATCOM.Types.VARIANT;

end winword.TableOfAuthoritiesCategory_Object;

