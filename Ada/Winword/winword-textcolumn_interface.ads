with GNATCOM.Dispinterface;

package winword.TextColumn_Interface is

   type TextColumn_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TextColumn_Type);

   function Pointer (This : TextColumn_Type)
     return Pointer_To_TextColumn;

   procedure Attach (This    : in out TextColumn_Type;
                     Pointer : in     Pointer_To_TextColumn);

   function Get_Application
     (This : TextColumn_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TextColumn_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TextColumn_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Width
     (This : TextColumn_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : TextColumn_Type;
      prop : Interfaces.C.C_float);

   function Get_SpaceAfter
     (This : TextColumn_Type)
     return Interfaces.C.C_float;

   procedure Put_SpaceAfter
     (This : TextColumn_Type;
      prop : Interfaces.C.C_float);

end winword.TextColumn_Interface;

