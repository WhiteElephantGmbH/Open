with GNATCOM.Dispinterface;

package winword.TwoInitialCapsException_Object is

   type TwoInitialCapsException_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : TwoInitialCapsException_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : TwoInitialCapsException_Type);

end winword.TwoInitialCapsException_Object;

