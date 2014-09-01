with GNATCOM.Dispinterface;

package winword.Styles_Interface is

   type Styles_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Styles_Type);

   function Pointer (This : Styles_Type)
     return Pointer_To_Styles;

   procedure Attach (This    : in out Styles_Type;
                     Pointer : in     Pointer_To_Styles);

   function Get_Application
     (This : Styles_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Styles_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Styles_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Styles_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Styles_Type)
     return Interfaces.C.long;

   function Item
     (This  : Styles_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Style;

   function Add
     (This  : Styles_Type;
      Name  : GNATCOM.Types.BSTR;
      uType : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free  : Boolean := True)
     return Pointer_To_Style;

end winword.Styles_Interface;

