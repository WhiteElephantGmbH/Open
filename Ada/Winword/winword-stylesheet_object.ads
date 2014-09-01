with GNATCOM.Dispinterface;

package winword.StyleSheet_Object is

   type StyleSheet_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_FullName
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Path
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Type
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Type
     (This : StyleSheet_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Title
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Title
     (This : StyleSheet_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Move
     (This       : StyleSheet_Type;
      Precedence : GNATCOM.Types.VARIANT;
      Free       : Boolean := True);

   procedure Delete
     (This : StyleSheet_Type);

end winword.StyleSheet_Object;

