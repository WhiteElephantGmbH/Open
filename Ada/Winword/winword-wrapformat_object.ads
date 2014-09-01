with GNATCOM.Dispinterface;

package winword.WrapFormat_Object is

   type WrapFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Type
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Side
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Side
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceTop
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceTop
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceBottom
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceBottom
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceLeft
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceLeft
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceRight
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceRight
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_AllowOverlap
     (This : WrapFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AllowOverlap
     (This : WrapFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.WrapFormat_Object;

