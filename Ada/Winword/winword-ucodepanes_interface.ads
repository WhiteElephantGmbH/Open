with GNATCOM.Dispinterface;

package winword.uCodePanes_Interface is

   type uCodePanes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uCodePanes_Type);

   function Pointer (This : uCodePanes_Type)
     return Pointer_To_uCodePanes;

   procedure Attach (This    : in out uCodePanes_Type;
                     Pointer : in     Pointer_To_uCodePanes);

   function Get_Parent
     (This    : uCodePanes_Type)
     return Pointer_To_VBE;

   function Get_VBE
     (This    : uCodePanes_Type)
     return Pointer_To_VBE;

   function Item
     (This     : uCodePanes_Type;
      index    : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return Pointer_To_uCodePane;

   function Get_Count
     (This  : uCodePanes_Type)
     return Interfaces.C.long;

   function uNewEnum
     (This   : uCodePanes_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Current
     (This     : uCodePanes_Type)
     return Pointer_To_uCodePane;

   procedure Put_Current
     (This     : uCodePanes_Type;
      CodePane : Pointer_To_uCodePane);

end winword.uCodePanes_Interface;

