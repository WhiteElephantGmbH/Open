with GNATCOM.Dispinterface;

package winword.StyleSheets_Interface is

   type StyleSheets_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out StyleSheets_Type);

   function Pointer (This : StyleSheets_Type)
     return Pointer_To_StyleSheets;

   procedure Attach (This    : in out StyleSheets_Type;
                     Pointer : in     Pointer_To_StyleSheets);

   function Get_Application
     (This : StyleSheets_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : StyleSheets_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : StyleSheets_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Getu_NewEnum
     (This : StyleSheets_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : StyleSheets_Type)
     return Interfaces.C.long;

   function Item
     (This  : StyleSheets_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_StyleSheet;

   function Add
     (This       : StyleSheets_Type;
      FileName   : GNATCOM.Types.BSTR;
      LinkType   : WdStyleSheetLinkType;
      Title      : GNATCOM.Types.BSTR;
      Precedence : WdStyleSheetPrecedence;
      Free       : Boolean := True)
     return Pointer_To_StyleSheet;

end winword.StyleSheets_Interface;

