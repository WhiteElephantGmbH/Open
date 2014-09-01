package body winword.COMAddIns_Object is

   function Get_Application
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIns_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIns_Get_Creator);
   end Get_Creator;

   function Item
     (This  : COMAddIns_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         COMAddIns_Item,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => Index),
         Free);
   end Item;

   function Get_Count
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIns_Get_Count);
   end Get_Count;

   function Getu_NewEnum
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIns_Getu_NewEnum);
   end Getu_NewEnum;

   procedure Update
     (This : COMAddIns_Type)
   is
   begin
      Invoke (This, COMAddIns_Update);
   end Update;

   function Get_Parent
     (This : COMAddIns_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, COMAddIns_Get_Parent);
   end Get_Parent;

   procedure SetAppModal
     (This      : COMAddIns_Type;
      varfModal : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
   is
   begin
      Invoke
        (This,
         COMAddIns_SetAppModal,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => varfModal),
         Free);
   end SetAppModal;

end winword.COMAddIns_Object;

