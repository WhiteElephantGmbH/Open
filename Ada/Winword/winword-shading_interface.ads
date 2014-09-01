with GNATCOM.Dispinterface;

package winword.Shading_Interface is

   type Shading_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Shading_Type);

   function Pointer (This : Shading_Type)
     return Pointer_To_Shading;

   procedure Attach (This    : in out Shading_Type;
                     Pointer : in     Pointer_To_Shading);

   function Get_Application
     (This : Shading_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Shading_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Shading_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ForegroundPatternColorIndex
     (This : Shading_Type)
     return WdColorIndex;

   procedure Put_ForegroundPatternColorIndex
     (This : Shading_Type;
      prop : WdColorIndex);

   function Get_BackgroundPatternColorIndex
     (This : Shading_Type)
     return WdColorIndex;

   procedure Put_BackgroundPatternColorIndex
     (This : Shading_Type;
      prop : WdColorIndex);

   function Get_Texture
     (This : Shading_Type)
     return WdTextureIndex;

   procedure Put_Texture
     (This : Shading_Type;
      prop : WdTextureIndex);

   function Get_ForegroundPatternColor
     (This : Shading_Type)
     return WdColor;

   procedure Put_ForegroundPatternColor
     (This : Shading_Type;
      prop : WdColor);

   function Get_BackgroundPatternColor
     (This : Shading_Type)
     return WdColor;

   procedure Put_BackgroundPatternColor
     (This : Shading_Type;
      prop : WdColor);

end winword.Shading_Interface;

