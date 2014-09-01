package body winword.HeadingStyle_Object is

   function Get_Application
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyle_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyle_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyle_Get_Parent);
   end Get_Parent;

   function Get_Style
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyle_Get_Style);
   end Get_Style;

   procedure Put_Style
     (This : HeadingStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HeadingStyle_Put_Style,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Style;

   function Get_Level
     (This : HeadingStyle_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HeadingStyle_Get_Level);
   end Get_Level;

   procedure Put_Level
     (This : HeadingStyle_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HeadingStyle_Put_Level,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Level;

   procedure Delete
     (This : HeadingStyle_Type)
   is
   begin
      Invoke (This, HeadingStyle_Delete);
   end Delete;

end winword.HeadingStyle_Object;

