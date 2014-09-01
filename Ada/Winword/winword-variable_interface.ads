with GNATCOM.Dispinterface;

package winword.Variable_Interface is

   type Variable_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Variable_Type);

   function Pointer (This : Variable_Type)
     return Pointer_To_Variable;

   procedure Attach (This    : in out Variable_Type;
                     Pointer : in     Pointer_To_Variable);

   function Get_Application
     (This : Variable_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Variable_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Variable_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Name
     (This : Variable_Type)
     return GNATCOM.Types.BSTR;

   function Get_Value
     (This : Variable_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Value
     (This : Variable_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Index
     (This : Variable_Type)
     return Interfaces.C.long;

   procedure Delete
     (This : Variable_Type);

end winword.Variable_Interface;

