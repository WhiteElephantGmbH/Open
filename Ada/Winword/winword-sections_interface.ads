with GNATCOM.Dispinterface;

package winword.Sections_Interface is

   type Sections_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Sections_Type);

   function Pointer (This : Sections_Type)
     return Pointer_To_Sections;

   procedure Attach (This    : in out Sections_Type;
                     Pointer : in     Pointer_To_Sections);

   function Getu_NewEnum
     (This : Sections_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Sections_Type)
     return Interfaces.C.long;

   function Get_First
     (This : Sections_Type)
     return Pointer_To_Section;

   function Get_Last
     (This : Sections_Type)
     return Pointer_To_Section;

   function Get_Application
     (This : Sections_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Sections_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Sections_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_PageSetup
     (This : Sections_Type)
     return Pointer_To_PageSetup;

   procedure Put_PageSetup
     (This : Sections_Type;
      prop : Pointer_To_PageSetup);

   function Item
     (This  : Sections_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Section;

   function Add
     (This   : Sections_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Start  : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Section;

end winword.Sections_Interface;

