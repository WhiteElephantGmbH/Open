with GNATCOM.Dispinterface;

package winword.Frameset_Object is

   type Frameset_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ParentFrameset
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   function Get_WidthType
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WidthType
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_HeightType
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_HeightType
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ChildFramesetCount
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ChildFramesetItem
     (This  : Frameset_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_FramesetBorderWidth
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FramesetBorderWidth
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FramesetBorderColor
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FramesetBorderColor
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FrameScrollbarType
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FrameScrollbarType
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FrameResizable
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FrameResizable
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FrameName
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FrameName
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FrameDisplayBorders
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FrameDisplayBorders
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FrameDefaultURL
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FrameDefaultURL
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FrameLinkToFile
     (This : Frameset_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FrameLinkToFile
     (This : Frameset_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function AddNewFrame
     (This  : Frameset_Type;
      Where : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Frameset_Type);

end winword.Frameset_Object;

