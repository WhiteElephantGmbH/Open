package body winword.Zoom_Object is

   function Get_Application
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zoom_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zoom_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zoom_Get_Parent);
   end Get_Parent;

   function Get_Percentage
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zoom_Get_Percentage);
   end Get_Percentage;

   procedure Put_Percentage
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Zoom_Put_Percentage,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Percentage;

   function Get_PageFit
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zoom_Get_PageFit);
   end Get_PageFit;

   procedure Put_PageFit
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Zoom_Put_PageFit,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageFit;

   function Get_PageRows
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zoom_Get_PageRows);
   end Get_PageRows;

   procedure Put_PageRows
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Zoom_Put_PageRows,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageRows;

   function Get_PageColumns
     (This : Zoom_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Zoom_Get_PageColumns);
   end Get_PageColumns;

   procedure Put_PageColumns
     (This : Zoom_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Zoom_Put_PageColumns,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_PageColumns;

end winword.Zoom_Object;

