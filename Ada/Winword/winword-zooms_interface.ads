with GNATCOM.Dispinterface;

package winword.Zooms_Interface is

   type Zooms_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Zooms_Type);

   function Pointer (This : Zooms_Type)
     return Pointer_To_Zooms;

   procedure Attach (This    : in out Zooms_Type;
                     Pointer : in     Pointer_To_Zooms);

   function Get_Application
     (This : Zooms_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Zooms_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Zooms_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : Zooms_Type;
      Index : WdViewType)
     return Pointer_To_Zoom;

end winword.Zooms_Interface;

