with GNATCOM.Dispinterface;

package winword.ShadowFormat_Object is

   type ShadowFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ForeColor
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Obscured
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Obscured
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OffsetX
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OffsetX
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_OffsetY
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_OffsetY
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Transparency
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Transparency
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Type
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Visible
     (This : ShadowFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : ShadowFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure IncrementOffsetX
     (This      : ShadowFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

   procedure IncrementOffsetY
     (This      : ShadowFormat_Type;
      Increment : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

end winword.ShadowFormat_Object;

