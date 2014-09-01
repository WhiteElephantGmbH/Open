with GNATCOM.Dispinterface;

package winword.HTMLProjectItems_Interface is

   type HTMLProjectItems_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out HTMLProjectItems_Type);

   function Pointer (This : HTMLProjectItems_Type)
     return Pointer_To_HTMLProjectItems;

   procedure Attach (This    : in out HTMLProjectItems_Type;
                     Pointer : in     Pointer_To_HTMLProjectItems);

   function Get_Application
     (This    : HTMLProjectItems_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : HTMLProjectItems_Type)
     return Interfaces.C.long;

   function Item
     (This     : HTMLProjectItems_Type;
      Index    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_HTMLProjectItem;

   function Get_Count
     (This     : HTMLProjectItems_Type)
     return Interfaces.C.long;

   function Getu_NewEnum
     (This     : HTMLProjectItems_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Parent
     (This    : HTMLProjectItems_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

end winword.HTMLProjectItems_Interface;

