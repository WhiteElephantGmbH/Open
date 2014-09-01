package body winword.CaptionLabels_Object is

   function Get_Application
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabels_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabels_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabels_Get_Parent);
   end Get_Parent;

   function Getu_NewEnum
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabels_Getu_NewEnum);
   end Getu_NewEnum;

   function Get_Count
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, CaptionLabels_Get_Count);
   end Get_Count;

   function Item
     (This  : CaptionLabels_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CaptionLabels_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Add
     (This : CaptionLabels_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         CaptionLabels_Add,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Name),
         Free);
   end Add;

end winword.CaptionLabels_Object;

