with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Frameset_Interface is

   procedure Initialize (This : in out Frameset_Type) is
   begin
      Set_IID (This, IID_Frameset);
   end Initialize;

   function Pointer (This : Frameset_Type)
     return Pointer_To_Frameset
   is
   begin
      return To_Pointer_To_Frameset (Address (This));
   end Pointer;

   procedure Attach (This    : in out Frameset_Type;
                     Pointer : in     Pointer_To_Frameset)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Frameset_Type)
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
     (This : Frameset_Type)
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
     (This : Frameset_Type)
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

   function Getu_NewEnum
     (This : Frameset_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Get_ParentFrameset
     (This : Frameset_Type)
     return Pointer_To_Frameset
   is
       RetVal : aliased Pointer_To_Frameset;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ParentFrameset
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ParentFrameset;

   function Get_Type
     (This : Frameset_Type)
     return WdFramesetType
   is
       RetVal : aliased WdFramesetType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_WidthType
     (This : Frameset_Type)
     return WdFramesetSizeType
   is
       RetVal : aliased WdFramesetSizeType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_WidthType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_WidthType;

   procedure Put_WidthType
     (This : Frameset_Type;
      prop : WdFramesetSizeType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_WidthType
         (Pointer (This),
          prop));

   end Put_WidthType;

   function Get_HeightType
     (This : Frameset_Type)
     return WdFramesetSizeType
   is
       RetVal : aliased WdFramesetSizeType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HeightType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HeightType;

   procedure Put_HeightType
     (This : Frameset_Type;
      prop : WdFramesetSizeType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HeightType
         (Pointer (This),
          prop));

   end Put_HeightType;

   function Get_Width
     (This : Frameset_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Width
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Width;

   procedure Put_Width
     (This : Frameset_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Width
         (Pointer (This),
          prop));

   end Put_Width;

   function Get_Height
     (This : Frameset_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Height
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Height;

   procedure Put_Height
     (This : Frameset_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Height
         (Pointer (This),
          prop));

   end Put_Height;

   function Get_ChildFramesetCount
     (This : Frameset_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ChildFramesetCount
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ChildFramesetCount;

   function Get_ChildFramesetItem
     (This  : Frameset_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Frameset
   is
       RetVal : aliased Pointer_To_Frameset;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_ChildFramesetItem
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_ChildFramesetItem;

   function Get_FramesetBorderWidth
     (This : Frameset_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FramesetBorderWidth
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FramesetBorderWidth;

   procedure Put_FramesetBorderWidth
     (This : Frameset_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FramesetBorderWidth
         (Pointer (This),
          prop));

   end Put_FramesetBorderWidth;

   function Get_FramesetBorderColor
     (This : Frameset_Type)
     return WdColor
   is
       RetVal : aliased WdColor;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FramesetBorderColor
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FramesetBorderColor;

   procedure Put_FramesetBorderColor
     (This : Frameset_Type;
      prop : WdColor)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FramesetBorderColor
         (Pointer (This),
          prop));

   end Put_FramesetBorderColor;

   function Get_FrameScrollbarType
     (This : Frameset_Type)
     return WdScrollbarType
   is
       RetVal : aliased WdScrollbarType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FrameScrollbarType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FrameScrollbarType;

   procedure Put_FrameScrollbarType
     (This : Frameset_Type;
      prop : WdScrollbarType)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FrameScrollbarType
         (Pointer (This),
          prop));

   end Put_FrameScrollbarType;

   function Get_FrameResizable
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FrameResizable
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FrameResizable;

   procedure Put_FrameResizable
     (This : Frameset_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FrameResizable
         (Pointer (This),
          prop));

   end Put_FrameResizable;

   function Get_FrameName
     (This : Frameset_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FrameName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FrameName;

   procedure Put_FrameName
     (This : Frameset_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FrameName
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_FrameName;

   function Get_FrameDisplayBorders
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FrameDisplayBorders
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FrameDisplayBorders;

   procedure Put_FrameDisplayBorders
     (This : Frameset_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FrameDisplayBorders
         (Pointer (This),
          prop));

   end Put_FrameDisplayBorders;

   function Get_FrameDefaultURL
     (This : Frameset_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FrameDefaultURL
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FrameDefaultURL;

   procedure Put_FrameDefaultURL
     (This : Frameset_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FrameDefaultURL
         (Pointer (This),
          prop));

      if Free then
               GNATCOM.Interface.Free (prop);
      
      end if;

   end Put_FrameDefaultURL;

   function Get_FrameLinkToFile
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FrameLinkToFile
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FrameLinkToFile;

   procedure Put_FrameLinkToFile
     (This : Frameset_Type;
      prop : GNATCOM.Types.VARIANT_BOOL)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_FrameLinkToFile
         (Pointer (This),
          prop));

   end Put_FrameLinkToFile;

   function AddNewFrame
     (This  : Frameset_Type;
      Where : WdFramesetNewFrameLocation)
     return Pointer_To_Frameset
   is
       RetVal : aliased Pointer_To_Frameset;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.AddNewFrame
         (Pointer (This),
          Where,
          RetVal'Unchecked_Access));

      return RetVal;
   end AddNewFrame;

   procedure Delete
     (This : Frameset_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

end winword.Frameset_Interface;

