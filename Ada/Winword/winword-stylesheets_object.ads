with GNATCOM.Dispinterface;

package winword.StyleSheets_Object is

   type StyleSheets_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : StyleSheets_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : StyleSheets_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This       : StyleSheets_Type;
      FileName   : GNATCOM.Types.VARIANT;
      LinkType   : GNATCOM.Types.VARIANT;
      Title      : GNATCOM.Types.VARIANT;
      Precedence : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.StyleSheets_Object;

