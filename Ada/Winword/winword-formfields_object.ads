with GNATCOM.Dispinterface;

package winword.FormFields_Object is

   type FormFields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Shaded
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Shaded
     (This : FormFields_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Getu_NewEnum
     (This : FormFields_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : FormFields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : FormFields_Type;
      uRange : GNATCOM.Types.VARIANT;
      uType  : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.FormFields_Object;

