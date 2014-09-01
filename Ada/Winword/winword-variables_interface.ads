with GNATCOM.Dispinterface;

package winword.Variables_Interface is

   type Variables_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Variables_Type);

   function Pointer (This : Variables_Type)
     return Pointer_To_Variables;

   procedure Attach (This    : in out Variables_Type;
                     Pointer : in     Pointer_To_Variables);

   function Getu_NewEnum
     (This : Variables_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Variables_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Variables_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Variables_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Variables_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Variables_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Variable;

   function Add
     (This  : Variables_Type;
      Name  : GNATCOM.Types.BSTR;
      Value : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Free  : Boolean := True)
     return Pointer_To_Variable;

end winword.Variables_Interface;

