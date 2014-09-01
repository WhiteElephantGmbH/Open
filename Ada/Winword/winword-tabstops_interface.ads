with GNATCOM.Dispinterface;

package winword.TabStops_Interface is

   type TabStops_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TabStops_Type);

   function Pointer (This : TabStops_Type)
     return Pointer_To_TabStops;

   procedure Attach (This    : in out TabStops_Type;
                     Pointer : in     Pointer_To_TabStops);

   function Getu_NewEnum
     (This : TabStops_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TabStops_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : TabStops_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TabStops_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TabStops_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : TabStops_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TabStop;

   function Add
     (This      : TabStops_Type;
      Position  : Interfaces.C.C_float;
      Alignment : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Leader    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TabStop;

   procedure ClearAll
     (This : TabStops_Type);

   function Before
     (This     : TabStops_Type;
      Position : Interfaces.C.C_float)
     return Pointer_To_TabStop;

   function After
     (This     : TabStops_Type;
      Position : Interfaces.C.C_float)
     return Pointer_To_TabStop;

end winword.TabStops_Interface;

