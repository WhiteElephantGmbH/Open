package body winword.DiagramNodeChildren_Object is

   function Get_Application
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodeChildren_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodeChildren_Get_Creator);
   end Get_Creator;

   function Getu_NewEnum
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodeChildren_Getu_NewEnum);
   end Getu_NewEnum;

   function Item
     (This  : DiagramNodeChildren_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         DiagramNodeChildren_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function AddNode
     (This     : DiagramNodeChildren_Type;
      Index    : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      NodeType : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         DiagramNodeChildren_AddNode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => NodeType,
          2 => Index),
         Free);
   end AddNode;

   procedure SelectAll
     (This : DiagramNodeChildren_Type)
   is
   begin
      Invoke (This, DiagramNodeChildren_SelectAll);
   end SelectAll;

   function Get_Parent
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodeChildren_Get_Parent);
   end Get_Parent;

   function Get_Count
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodeChildren_Get_Count);
   end Get_Count;

   function Get_FirstChild
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodeChildren_Get_FirstChild);
   end Get_FirstChild;

   function Get_LastChild
     (This : DiagramNodeChildren_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, DiagramNodeChildren_Get_LastChild);
   end Get_LastChild;

end winword.DiagramNodeChildren_Object;

