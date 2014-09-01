with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.LineNumbering_Interface is

   procedure Initialize (This : in out LineNumbering_Type) is
   begin
      Set_IID (This, IID_LineNumbering);
   end Initialize;

   function Pointer (This : LineNumbering_Type)
     return Pointer_To_LineNumbering
   is
   begin
      return To_Pointer_To_LineNumbering (Address (This));
   end Pointer;

   procedure Attach (This    : in out LineNumbering_Type;
                     Pointer : in     Pointer_To_LineNumbering)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : LineNumbering_Type)
     return Pointer_To_uApplication
   is
       RetVal : aliased Pointer_To_uApplication;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This : LineNumbering_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Creator
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Creator;

   function Get_Parent
     (This : LineNumbering_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_RestartMode
     (This : LineNumbering_Type)
     return WdNumberingRule
   is
       RetVal : aliased WdNumberingRule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_RestartMode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_RestartMode;

   procedure Put_RestartMode
     (This : LineNumbering_Type;
      prop : WdNumberingRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_RestartMode
         (Pointer (This),
          prop));

   end Put_RestartMode;

   function Get_StartingNumber
     (This : LineNumbering_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StartingNumber
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StartingNumber;

   procedure Put_StartingNumber
     (This : LineNumbering_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartingNumber
         (Pointer (This),
          prop));

   end Put_StartingNumber;

   function Get_DistanceFromText
     (This : LineNumbering_Type)
     return Interfaces.C.C_float
   is
       RetVal : aliased Interfaces.C.C_float;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DistanceFromText
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DistanceFromText;

   procedure Put_DistanceFromText
     (This : LineNumbering_Type;
      prop : Interfaces.C.C_float)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_DistanceFromText
         (Pointer (This),
          prop));

   end Put_DistanceFromText;

   function Get_CountBy
     (This : LineNumbering_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CountBy
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CountBy;

   procedure Put_CountBy
     (This : LineNumbering_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_CountBy
         (Pointer (This),
          prop));

   end Put_CountBy;

   function Get_Active
     (This : LineNumbering_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Active
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Active;

   procedure Put_Active
     (This : LineNumbering_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Active
         (Pointer (This),
          prop));

   end Put_Active;

end winword.LineNumbering_Interface;

