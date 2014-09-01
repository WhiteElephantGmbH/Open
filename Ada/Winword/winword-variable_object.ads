with GNATCOM.Dispinterface;

package winword.Variable_Object is

   type Variable_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Value
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Value
     (This : Variable_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Index
     (This : Variable_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Variable_Type);

end winword.Variable_Object;

