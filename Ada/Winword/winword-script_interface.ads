with GNATCOM.Dispinterface;

package winword.Script_Interface is

   type Script_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Script_Type);

   function Pointer (This : Script_Type)
     return Pointer_To_Script;

   procedure Attach (This    : in out Script_Type;
                     Pointer : in     Pointer_To_Script);

   function Get_Application
     (This    : Script_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Creator
     (This      : Script_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This   : Script_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Extended
     (This     : Script_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Extended
     (This     : Script_Type;
      Extended : GNATCOM.Types.BSTR;
      Free     : Boolean := True);

   function Get_Id
     (This : Script_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Id
     (This : Script_Type;
      Id   : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Language
     (This     : Script_Type)
     return MsoScriptLanguage;

   procedure Put_Language
     (This     : Script_Type;
      Language : MsoScriptLanguage);

   function Get_Location
     (This     : Script_Type)
     return MsoScriptLocation;

   procedure Delete
     (This : Script_Type);

   function Get_Shape
     (This   : Script_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ScriptText
     (This   : Script_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ScriptText
     (This   : Script_Type;
      Script : GNATCOM.Types.BSTR;
      Free   : Boolean := True);

end winword.Script_Interface;

