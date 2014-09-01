with GNATCOM.Dispinterface;

package winword.ListTemplate_Interface is

   type ListTemplate_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListTemplate_Type);

   function Pointer (This : ListTemplate_Type)
     return Pointer_To_ListTemplate;

   procedure Attach (This    : in out ListTemplate_Type;
                     Pointer : in     Pointer_To_ListTemplate);

   function Get_Application
     (This : ListTemplate_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListTemplate_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListTemplate_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_OutlineNumbered
     (This : ListTemplate_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_OutlineNumbered
     (This : ListTemplate_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Name
     (This : ListTemplate_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : ListTemplate_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ListLevels
     (This : ListTemplate_Type)
     return Pointer_To_ListLevels;

   function Convert
     (This  : ListTemplate_Type;
      Level : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ListTemplate;

end winword.ListTemplate_Interface;

