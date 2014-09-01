with GNATCOM.Dispinterface;

package winword.TextRetrievalMode_Interface is

   type TextRetrievalMode_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out TextRetrievalMode_Type);

   function Pointer (This : TextRetrievalMode_Type)
     return Pointer_To_TextRetrievalMode;

   procedure Attach (This    : in out TextRetrievalMode_Type;
                     Pointer : in     Pointer_To_TextRetrievalMode);

   function Get_Application
     (This : TextRetrievalMode_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : TextRetrievalMode_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ViewType
     (This : TextRetrievalMode_Type)
     return WdViewType;

   procedure Put_ViewType
     (This : TextRetrievalMode_Type;
      prop : WdViewType);

   function Get_Duplicate
     (This : TextRetrievalMode_Type)
     return Pointer_To_TextRetrievalMode;

   function Get_IncludeHiddenText
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludeHiddenText
     (This : TextRetrievalMode_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_IncludeFieldCodes
     (This : TextRetrievalMode_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_IncludeFieldCodes
     (This : TextRetrievalMode_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

end winword.TextRetrievalMode_Interface;

