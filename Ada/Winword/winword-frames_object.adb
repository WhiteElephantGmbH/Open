package body winword.Frames_Object is

   function Get_Application
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frames_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frames_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frames_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frames_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : Frames_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Frames_Get_Count);
   end Get_Count;

   function Item
     (This  : Frames_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Frames_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This   : Frames_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         Frames_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => uRange),
         Free);
   end Add;

   procedure Delete
     (This : Frames_Type)
   is
   begin
      Invoke (This, Frames_Delete);
   end Delete;

end winword.Frames_Object;

