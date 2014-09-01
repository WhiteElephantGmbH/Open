with GNATCOM.Dispinterface;

package winword.HTMLDivisions_Interface is

   type HTMLDivisions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HTMLDivisions_Type);

   function Pointer (This : HTMLDivisions_Type)
     return Pointer_To_HTMLDivisions;

   procedure Attach (This    : in out HTMLDivisions_Type;
                     Pointer : in     Pointer_To_HTMLDivisions);

   function Get_Application
     (This : HTMLDivisions_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : HTMLDivisions_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : HTMLDivisions_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : HTMLDivisions_Type)
     return Interfaces.C.long;

   function Get_NestingLevel
     (This : HTMLDivisions_Type)
     return Interfaces.C.long;

   function Add
     (This   : HTMLDivisions_Type;
      uRange : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_HTMLDivision;

   function Item
     (This  : HTMLDivisions_Type;
      Index : Interfaces.C.long)
     return Pointer_To_HTMLDivision;

end winword.HTMLDivisions_Interface;

