with GNATCOM.Dispinterface;

package winword.Zoom_Interface is

   type Zoom_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Zoom_Type);

   function Pointer (This : Zoom_Type)
     return Pointer_To_Zoom;

   procedure Attach (This    : in out Zoom_Type;
                     Pointer : in     Pointer_To_Zoom);

   function Get_Application
     (This : Zoom_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Zoom_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Zoom_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Percentage
     (This : Zoom_Type)
     return Interfaces.C.long;

   procedure Put_Percentage
     (This : Zoom_Type;
      prop : Interfaces.C.long);

   function Get_PageFit
     (This : Zoom_Type)
     return WdPageFit;

   procedure Put_PageFit
     (This : Zoom_Type;
      prop : WdPageFit);

   function Get_PageRows
     (This : Zoom_Type)
     return Interfaces.C.long;

   procedure Put_PageRows
     (This : Zoom_Type;
      prop : Interfaces.C.long);

   function Get_PageColumns
     (This : Zoom_Type)
     return Interfaces.C.long;

   procedure Put_PageColumns
     (This : Zoom_Type;
      prop : Interfaces.C.long);

end winword.Zoom_Interface;

