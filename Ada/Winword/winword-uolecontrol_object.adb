package body winword.uOLEControl_Object is

   function Get_Left
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uOLEControl_Get_Left);
   end Get_Left;

   procedure Put_Left
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uOLEControl_Put_Left,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Left;

   function Get_Top
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uOLEControl_Get_Top);
   end Get_Top;

   procedure Put_Top
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uOLEControl_Put_Top,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Top;

   function Get_Height
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uOLEControl_Get_Height);
   end Get_Height;

   procedure Put_Height
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uOLEControl_Put_Height,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Height;

   function Get_Width
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uOLEControl_Get_Width);
   end Get_Width;

   procedure Put_Width
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uOLEControl_Put_Width,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Width;

   function Get_Name
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uOLEControl_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uOLEControl_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_Automation
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uOLEControl_Get_Automation);
   end Get_Automation;

   procedure uSelect
     (This : uOLEControl_Type)
   is
   begin
      Invoke (This, uOLEControl_uSelect);
   end uSelect;

   procedure Copy
     (This : uOLEControl_Type)
   is
   begin
      Invoke (This, uOLEControl_Copy);
   end Copy;

   procedure Cut
     (This : uOLEControl_Type)
   is
   begin
      Invoke (This, uOLEControl_Cut);
   end Cut;

   procedure Delete
     (This : uOLEControl_Type)
   is
   begin
      Invoke (This, uOLEControl_Delete);
   end Delete;

   procedure Activate
     (This : uOLEControl_Type)
   is
   begin
      Invoke (This, uOLEControl_Activate);
   end Activate;

   function Get_AltHTML
     (This : uOLEControl_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uOLEControl_Get_AltHTML);
   end Get_AltHTML;

   procedure Put_AltHTML
     (This : uOLEControl_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uOLEControl_Put_AltHTML,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AltHTML;

end winword.uOLEControl_Object;

