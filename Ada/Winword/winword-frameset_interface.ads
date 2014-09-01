with GNATCOM.Dispinterface;

package winword.Frameset_Interface is

   type Frameset_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Frameset_Type);

   function Pointer (This : Frameset_Type)
     return Pointer_To_Frameset;

   procedure Attach (This    : in out Frameset_Type;
                     Pointer : in     Pointer_To_Frameset);

   function Get_Application
     (This : Frameset_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Frameset_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Frameset_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : Frameset_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_ParentFrameset
     (This : Frameset_Type)
     return Pointer_To_Frameset;

   function Get_Type
     (This : Frameset_Type)
     return WdFramesetType;

   function Get_WidthType
     (This : Frameset_Type)
     return WdFramesetSizeType;

   procedure Put_WidthType
     (This : Frameset_Type;
      prop : WdFramesetSizeType);

   function Get_HeightType
     (This : Frameset_Type)
     return WdFramesetSizeType;

   procedure Put_HeightType
     (This : Frameset_Type;
      prop : WdFramesetSizeType);

   function Get_Width
     (This : Frameset_Type)
     return Interfaces.C.long;

   procedure Put_Width
     (This : Frameset_Type;
      prop : Interfaces.C.long);

   function Get_Height
     (This : Frameset_Type)
     return Interfaces.C.long;

   procedure Put_Height
     (This : Frameset_Type;
      prop : Interfaces.C.long);

   function Get_ChildFramesetCount
     (This : Frameset_Type)
     return Interfaces.C.long;

   function Get_ChildFramesetItem
     (This  : Frameset_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Frameset;

   function Get_FramesetBorderWidth
     (This : Frameset_Type)
     return Interfaces.C.C_float;

   procedure Put_FramesetBorderWidth
     (This : Frameset_Type;
      prop : Interfaces.C.C_float);

   function Get_FramesetBorderColor
     (This : Frameset_Type)
     return WdColor;

   procedure Put_FramesetBorderColor
     (This : Frameset_Type;
      prop : WdColor);

   function Get_FrameScrollbarType
     (This : Frameset_Type)
     return WdScrollbarType;

   procedure Put_FrameScrollbarType
     (This : Frameset_Type;
      prop : WdScrollbarType);

   function Get_FrameResizable
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FrameResizable
     (This : Frameset_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FrameName
     (This : Frameset_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_FrameName
     (This : Frameset_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_FrameDisplayBorders
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FrameDisplayBorders
     (This : Frameset_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_FrameDefaultURL
     (This : Frameset_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_FrameDefaultURL
     (This : Frameset_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_FrameLinkToFile
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_FrameLinkToFile
     (This : Frameset_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function AddNewFrame
     (This  : Frameset_Type;
      Where : WdFramesetNewFrameLocation)
     return Pointer_To_Frameset;

   procedure Delete
     (This : Frameset_Type);

end winword.Frameset_Interface;

