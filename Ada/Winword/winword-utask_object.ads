with GNATCOM.Dispinterface;

package winword.uTask_Object is

   type uTask_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Left
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Top
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Top
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_WindowState
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_WindowState
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Visible
     (This : uTask_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Visible
     (This : uTask_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Activate
     (This : uTask_Type;
      Wait : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free : Boolean := True);

   procedure Close
     (This : uTask_Type);

   procedure Move
     (This : uTask_Type;
      Left : GNATCOM.Types.VARIANT;
      Top  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Resize
     (This   : uTask_Type;
      Width  : GNATCOM.Types.VARIANT;
      Height : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   procedure SendWindowMessage
     (This    : uTask_Type;
      Message : GNATCOM.Types.VARIANT;
      wParam  : GNATCOM.Types.VARIANT;
      lParam  : GNATCOM.Types.VARIANT;
      Free    : Boolean := True);

end winword.uTask_Object;

