package body winword.AutoCaption_Object is

   function Get_Application
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaption_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaption_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaption_Get_Parent);
   end Get_Parent;

   function Get_Name
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaption_Get_Name);
   end Get_Name;

   function Get_AutoInsert
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaption_Get_AutoInsert);
   end Get_AutoInsert;

   procedure Put_AutoInsert
     (This : AutoCaption_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCaption_Put_AutoInsert,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoInsert;

   function Get_Index
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaption_Get_Index);
   end Get_Index;

   function Get_CaptionLabel
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, AutoCaption_Get_CaptionLabel);
   end Get_CaptionLabel;

   procedure Put_CaptionLabel
     (This : AutoCaption_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         AutoCaption_Put_CaptionLabel,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CaptionLabel;

end winword.AutoCaption_Object;

