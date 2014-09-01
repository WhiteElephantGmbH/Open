with GNATCOM.Dispinterface;

package winword.CheckBox_Interface is

   type CheckBox_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out CheckBox_Type);

   function Pointer (This : CheckBox_Type)
     return Pointer_To_CheckBox;

   procedure Attach (This    : in out CheckBox_Type;
                     Pointer : in     Pointer_To_CheckBox);

   function Get_Application
     (This : CheckBox_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : CheckBox_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : CheckBox_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Valid
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_AutoSize
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoSize
     (This : CheckBox_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Size
     (This : CheckBox_Type)
     return Interfaces.C.C_float;

   procedure Put_Size
     (This : CheckBox_Type;
      prop : Interfaces.C.C_float);

   function Get_Default
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Default
     (This : CheckBox_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Value
     (This : CheckBox_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Value
     (This : CheckBox_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.CheckBox_Interface;

