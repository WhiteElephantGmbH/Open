with GNATCOM.Dispinterface;

package winword.Panes_Interface is

   type Panes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Panes_Type);

   function Pointer (This : Panes_Type)
     return Pointer_To_Panes;

   procedure Attach (This    : in out Panes_Type;
                     Pointer : in     Pointer_To_Panes);

   function Getu_NewEnum
     (This : Panes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Panes_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Panes_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Panes_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Panes_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Panes_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Pane;

   function Add
     (This          : Panes_Type;
      SplitVertical : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Pane;

end winword.Panes_Interface;

