with GNATCOM.Dispinterface;

package winword.TextColumns_Object is

   type TextColumns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   function Get_EvenlySpaced
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_EvenlySpaced
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LineBetween
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LineBetween
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Width
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Spacing
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Spacing
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Item
     (This  : TextColumns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This         : TextColumns_Type;
      Width        : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Spacing      : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      EvenlySpaced : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free         : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure SetCount
     (This       : TextColumns_Type;
      NumColumns : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   function Get_FlowDirection
     (This : TextColumns_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FlowDirection
     (This : TextColumns_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TextColumns_Object;

