with GNATCOM.Dispinterface;

package winword.DropDown_Interface is

   type DropDown_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out DropDown_Type);

   function Pointer (This : DropDown_Type)
     return Pointer_To_DropDown;

   procedure Attach (This    : in out DropDown_Type;
                     Pointer : in     Pointer_To_DropDown);

   function Get_Application
     (This : DropDown_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : DropDown_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : DropDown_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Valid
     (This : DropDown_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Default
     (This : DropDown_Type)
     return Interfaces.C.long;

   procedure Put_Default
     (This : DropDown_Type;
      prop : Interfaces.C.long);

   function Get_Value
     (This : DropDown_Type)
     return Interfaces.C.long;

   procedure Put_Value
     (This : DropDown_Type;
      prop : Interfaces.C.long);

   function Get_ListEntries
     (This : DropDown_Type)
     return Pointer_To_ListEntries;

end winword.DropDown_Interface;

