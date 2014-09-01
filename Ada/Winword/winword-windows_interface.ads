with GNATCOM.Dispinterface;

package winword.Windows_Interface is

   type Windows_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Windows_Type);

   function Pointer (This : Windows_Type)
     return Pointer_To_Windows;

   procedure Attach (This    : in out Windows_Type;
                     Pointer : in     Pointer_To_Windows);

   function Getu_NewEnum
     (This : Windows_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Windows_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Windows_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Windows_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Windows_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Windows_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Window;

   function Add
     (This   : Windows_Type;
      Window : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Window;

   procedure Arrange
     (This         : Windows_Type;
      ArrangeStyle : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING);

end winword.Windows_Interface;

