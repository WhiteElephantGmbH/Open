package body winword.Field_Object is

   function Get_Application
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Parent);
   end Get_Parent;

   function Get_Code
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Code);
   end Get_Code;

   procedure Put_Code
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Field_Put_Code,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Code;

   function Get_Type
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Type);
   end Get_Type;

   function Get_Locked
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Locked);
   end Get_Locked;

   procedure Put_Locked
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Field_Put_Locked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Locked;

   function Get_Kind
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Kind);
   end Get_Kind;

   function Get_Result
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Result);
   end Get_Result;

   procedure Put_Result
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Field_Put_Result,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Result;

   function Get_Data
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Data);
   end Get_Data;

   procedure Put_Data
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Field_Put_Data,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Data;

   function Get_Next
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Next);
   end Get_Next;

   function Get_Previous
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Previous);
   end Get_Previous;

   function Get_Index
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_Index);
   end Get_Index;

   function Get_ShowCodes
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_ShowCodes);
   end Get_ShowCodes;

   procedure Put_ShowCodes
     (This : Field_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         Field_Put_ShowCodes,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_ShowCodes;

   function Get_LinkFormat
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_LinkFormat);
   end Get_LinkFormat;

   function Get_OLEFormat
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_OLEFormat);
   end Get_OLEFormat;

   function Get_InlineShape
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, Field_Get_InlineShape);
   end Get_InlineShape;

   procedure uSelect
     (This : Field_Type)
   is
   begin
      Invoke (This, Field_uSelect);
   end uSelect;

   function Update
     (This : Field_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Invoke (This, Field_Update);
   end Update;

   procedure Unlink
     (This : Field_Type)
   is
   begin
      Invoke (This, Field_Unlink);
   end Unlink;

   procedure UpdateSource
     (This : Field_Type)
   is
   begin
      Invoke (This, Field_UpdateSource);
   end UpdateSource;

   procedure DoClick
     (This : Field_Type)
   is
   begin
      Invoke (This, Field_DoClick);
   end DoClick;

   procedure Copy
     (This : Field_Type)
   is
   begin
      Invoke (This, Field_Copy);
   end Copy;

   procedure Cut
     (This : Field_Type)
   is
   begin
      Invoke (This, Field_Cut);
   end Cut;

   procedure Delete
     (This : Field_Type)
   is
   begin
      Invoke (This, Field_Delete);
   end Delete;

end winword.Field_Object;

