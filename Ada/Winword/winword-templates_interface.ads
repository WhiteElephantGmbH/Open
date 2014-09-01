with GNATCOM.Dispinterface;

package winword.Templates_Interface is

   type Templates_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Templates_Type);

   function Pointer (This : Templates_Type)
     return Pointer_To_Templates;

   procedure Attach (This    : in out Templates_Type;
                     Pointer : in     Pointer_To_Templates);

   function Get_Application
     (This : Templates_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Templates_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Templates_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Count
     (This : Templates_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This : Templates_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Item
     (This  : Templates_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Template;

end winword.Templates_Interface;

