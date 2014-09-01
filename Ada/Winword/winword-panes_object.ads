with GNATCOM.Dispinterface;

package winword.Panes_Object is

   type Panes_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Panes_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Panes_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This          : Panes_Type;
      SplitVertical : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Panes_Object;

