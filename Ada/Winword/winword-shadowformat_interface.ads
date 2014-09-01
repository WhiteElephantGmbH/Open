with GNATCOM.Dispinterface;

package winword.ShadowFormat_Interface is

   type ShadowFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ShadowFormat_Type);

   function Pointer (This : ShadowFormat_Type)
     return Pointer_To_ShadowFormat;

   procedure Attach (This    : in out ShadowFormat_Type;
                     Pointer : in     Pointer_To_ShadowFormat);

   function Get_Application
     (This : ShadowFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ShadowFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ShadowFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ForeColor
     (This : ShadowFormat_Type)
     return Pointer_To_ColorFormat;

   function Get_Obscured
     (This : ShadowFormat_Type)
     return MsoTriState;

   procedure Put_Obscured
     (This : ShadowFormat_Type;
      prop : MsoTriState);

   function Get_OffsetX
     (This : ShadowFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_OffsetX
     (This : ShadowFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_OffsetY
     (This : ShadowFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_OffsetY
     (This : ShadowFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_Transparency
     (This : ShadowFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_Transparency
     (This : ShadowFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_Type
     (This : ShadowFormat_Type)
     return MsoShadowType;

   procedure Put_Type
     (This : ShadowFormat_Type;
      prop : MsoShadowType);

   function Get_Visible
     (This : ShadowFormat_Type)
     return MsoTriState;

   procedure Put_Visible
     (This : ShadowFormat_Type;
      prop : MsoTriState);

   procedure IncrementOffsetX
     (This      : ShadowFormat_Type;
      Increment : Interfaces.C.C_float);

   procedure IncrementOffsetY
     (This      : ShadowFormat_Type;
      Increment : Interfaces.C.C_float);

end winword.ShadowFormat_Interface;

