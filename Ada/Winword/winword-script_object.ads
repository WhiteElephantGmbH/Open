with GNATCOM.Dispinterface;

package winword.Script_Object is

   type Script_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Extended
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Extended
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Id
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Id
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Language
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Language
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Location
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Script_Type);

   function Get_Shape
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   function Get_ScriptText
     (This : Script_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ScriptText
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.Script_Object;

