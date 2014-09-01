with GNATCOM.Dispinterface;

package winword.uOLEControl_Interface is

   type uOLEControl_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uOLEControl_Type);

   function Pointer (This : uOLEControl_Type)
     return Pointer_To_uOLEControl;

   procedure Attach (This    : in out uOLEControl_Type;
                     Pointer : in     Pointer_To_uOLEControl);

   function Get_Left
     (This : uOLEControl_Type)
     return Interfaces.C.C_float;

   procedure Put_Left
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float);

   function Get_Top
     (This : uOLEControl_Type)
     return Interfaces.C.C_float;

   procedure Put_Top
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float);

   function Get_Height
     (This : uOLEControl_Type)
     return Interfaces.C.C_float;

   procedure Put_Height
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float);

   function Get_Width
     (This : uOLEControl_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : uOLEControl_Type;
      prop : Interfaces.C.C_float);

   function Get_Name
     (This : uOLEControl_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : uOLEControl_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Automation
     (This : uOLEControl_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

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
     return GNATCOM.Types.BSTR;

   procedure Put_AltHTML
     (This : uOLEControl_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

end winword.uOLEControl_Interface;

