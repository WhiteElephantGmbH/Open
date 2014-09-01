package body winword.uVBComponent_Object is

   function Get_Saved
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_Saved);
   end Get_Saved;

   function Get_Name
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : uVBComponent_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uVBComponent_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_Designer
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_Designer);
   end Get_Designer;

   function Get_CodeModule
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_CodeModule);
   end Get_CodeModule;

   function Get_Type
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_Type);
   end Get_Type;

   procedure Export
     (This     : uVBComponent_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uVBComponent_Export,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end Export;

   function Get_VBE
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_VBE);
   end Get_VBE;

   function Get_Collection
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_Collection);
   end Get_Collection;

   function Get_HasOpenDesigner
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_HasOpenDesigner);
   end Get_HasOpenDesigner;

   function Get_Properties
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_Properties);
   end Get_Properties;

   function DesignerWindow
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, uVBComponent_DesignerWindow);
   end DesignerWindow;

   procedure Activate
     (This : uVBComponent_Type)
   is
   begin
      Invoke (This, uVBComponent_Activate);
   end Activate;

   function Get_DesignerID
     (This : uVBComponent_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBComponent_Get_DesignerID);
   end Get_DesignerID;

end winword.uVBComponent_Object;

