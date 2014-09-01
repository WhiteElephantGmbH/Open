package body winword.LineNumbering_Object is

   function Get_Application
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_Parent);
   end Get_Parent;

   function Get_RestartMode
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_RestartMode);
   end Get_RestartMode;

   procedure Put_RestartMode
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineNumbering_Put_RestartMode,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_RestartMode;

   function Get_StartingNumber
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_StartingNumber);
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineNumbering_Put_StartingNumber,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_StartingNumber;

   function Get_DistanceFromText
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_DistanceFromText);
   end Get_DistanceFromText;

   procedure Put_DistanceFromText
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineNumbering_Put_DistanceFromText,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_DistanceFromText;

   function Get_CountBy
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_CountBy);
   end Get_CountBy;

   procedure Put_CountBy
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineNumbering_Put_CountBy,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_CountBy;

   function Get_Active
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LineNumbering_Get_Active);
   end Get_Active;

   procedure Put_Active
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LineNumbering_Put_Active,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Active;

end winword.LineNumbering_Object;

