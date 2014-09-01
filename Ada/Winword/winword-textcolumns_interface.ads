with GNATCOM.Dispinterface;

package winword.TextColumns_Interface is

   type TextColumns_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TextColumns_Type);

   function Pointer (This : TextColumns_Type)
     return Pointer_To_TextColumns;

   procedure Attach (This    : in out TextColumns_Type;
                     Pointer : in     Pointer_To_TextColumns);

   function Getu_NewEnum
     (This : TextColumns_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : TextColumns_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : TextColumns_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TextColumns_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TextColumns_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_EvenlySpaced
     (This : TextColumns_Type)
     return Interfaces.C.long;

   procedure Put_EvenlySpaced
     (This : TextColumns_Type;
      prop : Interfaces.C.long);

   function Get_LineBetween
     (This : TextColumns_Type)
     return Interfaces.C.long;

   procedure Put_LineBetween
     (This : TextColumns_Type;
      prop : Interfaces.C.long);

   function Get_Width
     (This : TextColumns_Type)
     return Interfaces.C.C_float;

   procedure Put_Width
     (This : TextColumns_Type;
      prop : Interfaces.C.C_float);

   function Get_Spacing
     (This : TextColumns_Type)
     return Interfaces.C.C_float;

   procedure Put_Spacing
     (This : TextColumns_Type;
      prop : Interfaces.C.C_float);

   function Item
     (This  : TextColumns_Type;
      Index : Interfaces.C.long)
     return Pointer_To_TextColumn;

   function Add
     (This         : TextColumns_Type;
      Width        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Spacing      : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      EvenlySpaced : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_TextColumn;

   procedure SetCount
     (This       : TextColumns_Type;
      NumColumns : Interfaces.C.long);

   function Get_FlowDirection
     (This : TextColumns_Type)
     return WdFlowDirection;

   procedure Put_FlowDirection
     (This : TextColumns_Type;
      prop : WdFlowDirection);

end winword.TextColumns_Interface;

