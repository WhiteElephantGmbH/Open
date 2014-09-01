with GNATCOM.Dispinterface;

package winword.KeysBoundTo_Object is

   type KeysBoundTo_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_KeyCategory
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Command
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CommandParameter
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Context
     (This : KeysBoundTo_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : KeysBoundTo_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Key
     (This     : KeysBoundTo_Type;
      KeyCode  : GNATCOM.Types.VARIANT;
      KeyCode2 : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.KeysBoundTo_Object;

