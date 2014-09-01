package body winword.Comment_Object is

   function Get_Application
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Parent);
   end Get_Parent;

   function Get_Range
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Range);
   end Get_Range;

   function Get_Reference
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Reference);
   end Get_Reference;

   function Get_Scope
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Scope);
   end Get_Scope;

   function Get_Index
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Index);
   end Get_Index;

   function Get_Author
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Author);
   end Get_Author;

   procedure Put_Author
     (This : Comment_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Comment_Put_Author,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Author;

   function Get_Initial
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Initial);
   end Get_Initial;

   procedure Put_Initial
     (This : Comment_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Comment_Put_Initial,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Initial;

   function Get_ShowTip
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_ShowTip);
   end Get_ShowTip;

   procedure Put_ShowTip
     (This : Comment_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Comment_Put_ShowTip,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowTip;

   procedure Delete
     (This : Comment_Type)
   is
   begin
      Invoke (This, Comment_Delete);
   end Delete;

   procedure Edit
     (This : Comment_Type)
   is
   begin
      Invoke (This, Comment_Edit);
   end Edit;

   function Get_Date
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Comment_Get_Date);
   end Get_Date;

end winword.Comment_Object;

