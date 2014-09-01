with GNATCOM.Dispinterface;

package winword.uOLEControl_Object is

   type uOLEControl_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Left
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Left
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Top
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Top
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Height
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Height
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Name
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Name
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Automation
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : uOLEControl_Type);

   procedure Copy
     (This : uOLEControl_Type);

   procedure Cut
     (This : uOLEControl_Type);

   procedure Delete
     (This : uOLEControl_Type);

   procedure Activate
     (This : uOLEControl_Type);

   function Get_AltHTML
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AltHTML
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.uOLEControl_Object;

