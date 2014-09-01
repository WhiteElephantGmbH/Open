package body winword.Dialog_Object is

   function Get_Application
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialog_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialog_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialog_Get_Parent);
   end Get_Parent;

   function Get_DefaultTab
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialog_Get_DefaultTab);
   end Get_DefaultTab;

   procedure Put_DefaultTab
     (This : Dialog_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Dialog_Put_DefaultTab,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DefaultTab;

   function Get_Type
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialog_Get_Type);
   end Get_Type;

   function Show
     (This    : Dialog_Type;
      TimeOut : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Dialog_Show,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => TimeOut),
         Free);
   end Show;

   function Display
     (This    : Dialog_Type;
      TimeOut : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free    : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Dialog_Display,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => TimeOut),
         Free);
   end Display;

   procedure Execute
     (This : Dialog_Type)
   is
   begin
      Invoke (This, Dialog_Execute);
   end Execute;

   procedure Update
     (This : Dialog_Type)
   is
   begin
      Invoke (This, Dialog_Update);
   end Update;

   function Get_CommandName
     (This : Dialog_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Dialog_Get_CommandName);
   end Get_CommandName;

end winword.Dialog_Object;

