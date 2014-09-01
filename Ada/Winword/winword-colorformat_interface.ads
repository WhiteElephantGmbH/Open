with GNATCOM.Dispinterface;

package winword.ColorFormat_Interface is

   type ColorFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out ColorFormat_Type);

   function Pointer (This : ColorFormat_Type)
     return Pointer_To_ColorFormat;

   procedure Attach (This    : in out ColorFormat_Type;
                     Pointer : in     Pointer_To_ColorFormat);

   function Get_Application
     (This : ColorFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : ColorFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : ColorFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_RGB
     (This : ColorFormat_Type)
     return Interfaces.C.long;

   procedure Put_RGB
     (This : ColorFormat_Type;
      prop : Interfaces.C.long);

   function Get_SchemeColor
     (This : ColorFormat_Type)
     return Interfaces.C.long;

   procedure Put_SchemeColor
     (This : ColorFormat_Type;
      prop : Interfaces.C.long);

   function Get_Type
     (This : ColorFormat_Type)
     return MsoColorType;

   function Get_Name
     (This : ColorFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Name
     (This : ColorFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_TintAndShade
     (This : ColorFormat_Type)
     return Interfaces.C.C_float;

   procedure Put_TintAndShade
     (This : ColorFormat_Type;
      prop : Interfaces.C.C_float);

   function Get_OverPrint
     (This : ColorFormat_Type)
     return MsoTriState;

   procedure Put_OverPrint
     (This : ColorFormat_Type;
      prop : MsoTriState);

   function Get_Ink
     (This  : ColorFormat_Type;
      Index : Interfaces.C.long)
     return Interfaces.C.C_float;

   procedure Put_Ink
     (This  : ColorFormat_Type;
      Index : Interfaces.C.long;
      prop  : Interfaces.C.C_float);

   function Get_Cyan
     (This : ColorFormat_Type)
     return Interfaces.C.long;

   procedure Put_Cyan
     (This : ColorFormat_Type;
      prop : Interfaces.C.long);

   function Get_Magenta
     (This : ColorFormat_Type)
     return Interfaces.C.long;

   procedure Put_Magenta
     (This : ColorFormat_Type;
      prop : Interfaces.C.long);

   function Get_Yellow
     (This : ColorFormat_Type)
     return Interfaces.C.long;

   procedure Put_Yellow
     (This : ColorFormat_Type;
      prop : Interfaces.C.long);

   function Get_Black
     (This : ColorFormat_Type)
     return Interfaces.C.long;

   procedure Put_Black
     (This : ColorFormat_Type;
      prop : Interfaces.C.long);

   procedure SetCMYK
     (This    : ColorFormat_Type;
      Cyan    : Interfaces.C.long;
      Magenta : Interfaces.C.long;
      Yellow  : Interfaces.C.long;
      Black   : Interfaces.C.long);

end winword.ColorFormat_Interface;

