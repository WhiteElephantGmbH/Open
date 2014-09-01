with GNATCOM.Dispinterface;

package winword.DropCap_Interface is

   type DropCap_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out DropCap_Type);

   function Pointer (This : DropCap_Type)
     return Pointer_To_DropCap;

   procedure Attach (This    : in out DropCap_Type;
                     Pointer : in     Pointer_To_DropCap);

   function Get_Application
     (This : DropCap_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : DropCap_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : DropCap_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Position
     (This : DropCap_Type)
     return WdDropPosition;

   procedure Put_Position
     (This : DropCap_Type;
      prop : WdDropPosition);

   function Get_FontName
     (This : DropCap_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_FontName
     (This : DropCap_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_LinesToDrop
     (This : DropCap_Type)
     return Interfaces.C.long;

   procedure Put_LinesToDrop
     (This : DropCap_Type;
      prop : Interfaces.C.long);

   function Get_DistanceFromText
     (This : DropCap_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceFromText
     (This : DropCap_Type;
      prop : Interfaces.C.C_float);

   procedure Clear
     (This : DropCap_Type);

   procedure Enable
     (This : DropCap_Type);

end winword.DropCap_Interface;

