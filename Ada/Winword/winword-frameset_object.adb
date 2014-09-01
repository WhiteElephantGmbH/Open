package body winword.Frameset_Object is

   function Get_Application
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_ParentFrameset
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_ParentFrameset);
   end Get_ParentFrameset;

   function Get_Type
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_Type);
   end Get_Type;

   function Get_WidthType
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_WidthType);
   end Get_WidthType;

   procedure Put_WidthType
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_WidthType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_WidthType;

   function Get_HeightType
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_HeightType);
   end Get_HeightType;

   procedure Put_HeightType
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_HeightType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HeightType;

   function Get_Width
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Height
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_ChildFramesetCount
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_ChildFramesetCount);
   end Get_ChildFramesetCount;

   function Get_ChildFramesetItem
     (This  : Frameset_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get
        (This,
         Frameset_Get_ChildFramesetItem,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Get_ChildFramesetItem;

   function Get_FramesetBorderWidth
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FramesetBorderWidth);
   end Get_FramesetBorderWidth;

   procedure Put_FramesetBorderWidth
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FramesetBorderWidth,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FramesetBorderWidth;

   function Get_FramesetBorderColor
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FramesetBorderColor);
   end Get_FramesetBorderColor;

   procedure Put_FramesetBorderColor
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FramesetBorderColor,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FramesetBorderColor;

   function Get_FrameScrollbarType
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FrameScrollbarType);
   end Get_FrameScrollbarType;

   procedure Put_FrameScrollbarType
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FrameScrollbarType,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FrameScrollbarType;

   function Get_FrameResizable
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FrameResizable);
   end Get_FrameResizable;

   procedure Put_FrameResizable
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FrameResizable,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FrameResizable;

   function Get_FrameName
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FrameName);
   end Get_FrameName;

   procedure Put_FrameName
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FrameName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FrameName;

   function Get_FrameDisplayBorders
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FrameDisplayBorders);
   end Get_FrameDisplayBorders;

   procedure Put_FrameDisplayBorders
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FrameDisplayBorders,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FrameDisplayBorders;

   function Get_FrameDefaultURL
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FrameDefaultURL);
   end Get_FrameDefaultURL;

   procedure Put_FrameDefaultURL
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FrameDefaultURL,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FrameDefaultURL;

   function Get_FrameLinkToFile
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frameset_Get_FrameLinkToFile);
   end Get_FrameLinkToFile;

   procedure Put_FrameLinkToFile
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Frameset_Put_FrameLinkToFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_FrameLinkToFile;

   function AddNewFrame
     (This  : Frameset_Type;
      Where : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Frameset_AddNewFrame,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Where),
         Free);
   end AddNewFrame;

   procedure Delete
     (This : Frameset_Type)
   is
   begin
      Invoke (This, Frameset_Delete);
   end Delete;

end winword.Frameset_Object;

