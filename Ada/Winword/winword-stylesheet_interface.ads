with GNATCOM.Dispinterface;

package winword.StyleSheet_Interface is

   type StyleSheet_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out StyleSheet_Type);

   function Pointer (This : StyleSheet_Type)
     return Pointer_To_StyleSheet;

   procedure Attach (This    : in out StyleSheet_Type;
                     Pointer : in     Pointer_To_StyleSheet);

   function Get_Application
     (This : StyleSheet_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : StyleSheet_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : StyleSheet_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_FullName
     (This : StyleSheet_Type)
     return GNATCOM.Types.BSTR;

   function Get_Index
     (This : StyleSheet_Type)
     return Interfaces.C.long;

   function Get_Name
     (This : StyleSheet_Type)
     return GNATCOM.Types.BSTR;

   function Get_Path
     (This : StyleSheet_Type)
     return GNATCOM.Types.BSTR;

   function Get_Type
     (This : StyleSheet_Type)
     return WdStyleSheetLinkType;

   procedure Put_Type
     (This : StyleSheet_Type;
      prop : WdStyleSheetLinkType);

   function Get_Title
     (This : StyleSheet_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Title
     (This : StyleSheet_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   procedure Move
     (This       : StyleSheet_Type;
      Precedence : WdStyleSheetPrecedence);

   procedure Delete
     (This : StyleSheet_Type);

end winword.StyleSheet_Interface;

