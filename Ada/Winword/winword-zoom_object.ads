with GNATCOM.Dispinterface;

package winword.Zoom_Object is

   type Zoom_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Percentage
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Percentage
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageFit
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageFit
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageRows
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageRows
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_PageColumns
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_PageColumns
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Zoom_Object;

