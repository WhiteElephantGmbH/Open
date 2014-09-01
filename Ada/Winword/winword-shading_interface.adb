with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Shading_Interface is

   procedure Initialize (This : in out Shading_Type) is
   begin
      Set_IID (This, IID_Shading);
   end Initialize;

   function Pointer (This : Shading_Type)
     return Pointer_To_Shading
   is
   begin
      return To_Pointer_To_Shading (Address (This));
   end Pointer;

   procedure Attach (This    : in out Shading_Type;
                     Pointer : in     Pointer_To_Shading)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Shading_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : Shading_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : Shading_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_ForegroundPatternColorIndex
     (This : Shading_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ForegroundPatternColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ForegroundPatternColorIndex;

   procedure Put_ForegroundPatternColorIndex
     (This : Shading_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ForegroundPatternColorIndex
         (Pointer (This),
          prop));

   end Put_ForegroundPatternColorIndex;

   function Get_BackgroundPatternColorIndex
     (This : Shading_Type)
     return WdColorIndex
   is
       RetVal : aliased WdColorIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackgroundPatternColorIndex
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BackgroundPatternColorIndex;

   procedure Put_BackgroundPatternColorIndex
     (This : Shading_Type;
      prop : WdColorIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BackgroundPatternColorIndex
         (Pointer (This),
          prop));

   end Put_BackgroundPatternColorIndex;

   function Get_Texture
     (This : Shading_Type)
     return WdTextureIndex
   is
       RetVal : aliased WdTextureIndex;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Texture
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Texture;

   procedure Put_Texture
     (This : Shading_Type;
      prop : WdTextureIndex)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Texture
         (Pointer (This),
          prop));

   end Put_Texture;

   function Get_ForegroundPatternColor
     (This : Shading_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ForegroundPatternColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ForegroundPatternColor;

   procedure Put_ForegroundPatternColor
     (This : Shading_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_ForegroundPatternColor
         (Pointer (This),
          prop));

   end Put_ForegroundPatternColor;

   function Get_BackgroundPatternColor
     (This : Shading_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BackgroundPatternColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BackgroundPatternColor;

   procedure Put_BackgroundPatternColor
     (This : Shading_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BackgroundPatternColor
         (Pointer (This),
          prop));

   end Put_BackgroundPatternColor;

end winword.Shading_Interface;

