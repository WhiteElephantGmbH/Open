package body winword.Script_Object is

   function Get_Application
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Parent);
   end Get_Parent;

   function Get_Extended
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Extended);
   end Get_Extended;

   procedure Put_Extended
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Script_Put_Extended,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Extended;

   function Get_Id
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Id);
   end Get_Id;

   procedure Put_Id
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Script_Put_Id,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Id;

   function Get_Language
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Language);
   end Get_Language;

   procedure Put_Language
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Script_Put_Language,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Language;

   function Get_Location
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Location);
   end Get_Location;

   procedure Delete
     (This : Script_Type)
   is
   begin
      Invoke (This, Script_Delete);
   end Delete;

   function Get_Shape
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_Shape);
   end Get_Shape;

   function Get_ScriptText
     (This : Script_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Script_Get_ScriptText);
   end Get_ScriptText;

   procedure Put_ScriptText
     (This : Script_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Script_Put_ScriptText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ScriptText;

end winword.Script_Object;

