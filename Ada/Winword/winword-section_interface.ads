with GNATCOM.Dispinterface;

package winword.Section_Interface is

   type Section_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Section_Type);

   function Pointer (This : Section_Type)
     return Pointer_To_Section;

   procedure Attach (This    : in out Section_Type;
                     Pointer : in     Pointer_To_Section);

   function Get_Range
     (This : Section_Type)
     return Pointer_To_uRange;

   function Get_Application
     (This : Section_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Section_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Section_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_PageSetup
     (This : Section_Type)
     return Pointer_To_PageSetup;

   procedure Put_PageSetup
     (This : Section_Type;
      prop : Pointer_To_PageSetup);

   function Get_Headers
     (This : Section_Type)
     return Pointer_To_HeadersFooters;

   function Get_Footers
     (This : Section_Type)
     return Pointer_To_HeadersFooters;

   function Get_ProtectedForForms
     (This : Section_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ProtectedForForms
     (This : Section_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Index
     (This : Section_Type)
     return Interfaces.C.long;

   function Get_Borders
     (This : Section_Type)
     return Pointer_To_Borders;

   procedure Put_Borders
     (This : Section_Type;
      prop : Pointer_To_Borders);

end winword.Section_Interface;

