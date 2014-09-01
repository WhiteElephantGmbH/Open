package body winword.HTMLDivision_Object is

   function Get_Application
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_Parent);
   end Get_Parent;

   function Get_Range
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_Range);
   end Get_Range;

   function Get_Borders
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_Borders);
   end Get_Borders;

   function Get_LeftIndent
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_LeftIndent);
   end Get_LeftIndent;

   procedure Put_LeftIndent
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HTMLDivision_Put_LeftIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_LeftIndent;

   function Get_RightIndent
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_RightIndent);
   end Get_RightIndent;

   procedure Put_RightIndent
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HTMLDivision_Put_RightIndent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RightIndent;

   function Get_SpaceBefore
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_SpaceBefore);
   end Get_SpaceBefore;

   procedure Put_SpaceBefore
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HTMLDivision_Put_SpaceBefore,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceBefore;

   function Get_SpaceAfter
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_SpaceAfter);
   end Get_SpaceAfter;

   procedure Put_SpaceAfter
     (This : HTMLDivision_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         HTMLDivision_Put_SpaceAfter,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SpaceAfter;

   function Get_HTMLDivisions
     (This : HTMLDivision_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, HTMLDivision_Get_HTMLDivisions);
   end Get_HTMLDivisions;

   function HTMLDivisionParent
     (This     : HTMLDivision_Type;
      LevelsUp : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke
        (This,
         HTMLDivision_HTMLDivisionParent,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => LevelsUp),
         Free);
   end HTMLDivisionParent;

   procedure Delete
     (This : HTMLDivision_Type)
   is
   begin
      Invoke (This, HTMLDivision_Delete);
   end Delete;

end winword.HTMLDivision_Object;

