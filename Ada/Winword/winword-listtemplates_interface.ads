with GNATCOM.Dispinterface;

package winword.ListTemplates_Interface is

   type ListTemplates_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ListTemplates_Type);

   function Pointer (This : ListTemplates_Type)
     return Pointer_To_ListTemplates;

   procedure Attach (This    : in out ListTemplates_Type;
                     Pointer : in     Pointer_To_ListTemplates);

   function Getu_NewEnum
     (This : ListTemplates_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : ListTemplates_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : ListTemplates_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ListTemplates_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ListTemplates_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : ListTemplates_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ListTemplate;

   function Add
     (This            : ListTemplates_Type;
      OutlineNumbered : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Name            : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_ListTemplate;

end winword.ListTemplates_Interface;

