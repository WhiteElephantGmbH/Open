package body winword.StyleSheet_Object is

   function Get_Application
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Parent);
   end Get_Parent;

   function Get_FullName
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_FullName);
   end Get_FullName;

   function Get_Index
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Index);
   end Get_Index;

   function Get_Name
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Name);
   end Get_Name;

   function Get_Path
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Path);
   end Get_Path;

   function Get_Type
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Type);
   end Get_Type;

   procedure Put_Type
     (This : StyleSheet_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         StyleSheet_Put_Type,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Type;

   function Get_Title
     (This : StyleSheet_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, StyleSheet_Get_Title);
   end Get_Title;

   procedure Put_Title
     (This : StyleSheet_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         StyleSheet_Put_Title,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Title;

   procedure Move
     (This       : StyleSheet_Type;
      Precedence : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      Invoke
        (This,
         StyleSheet_Move,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Precedence),
         Free);
   end Move;

   procedure Delete
     (This : StyleSheet_Type)
   is
   begin
      Invoke (This, StyleSheet_Delete);
   end Delete;

end winword.StyleSheet_Object;

