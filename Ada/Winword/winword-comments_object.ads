with GNATCOM.Dispinterface;

package winword.Comments_Object is

   type Comments_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ShowBy
     (This : Comments_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowBy
     (This : Comments_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : Comments_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This   : Comments_Type;
      uRange : GNATCOM.Types.VARIANT;
      Text   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Comments_Object;

