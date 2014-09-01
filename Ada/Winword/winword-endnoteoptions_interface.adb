with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.EndnoteOptions_Interface is

   procedure Initialize (This : in out EndnoteOptions_Type) is
   begin
      Set_IID (This, IID_EndnoteOptions);
   end Initialize;

   function Pointer (This : EndnoteOptions_Type)
     return Pointer_To_EndnoteOptions
   is
   begin
      return To_Pointer_To_EndnoteOptions (Address (This));
   end Pointer;

   procedure Attach (This    : in out EndnoteOptions_Type;
                     Pointer : in     Pointer_To_EndnoteOptions)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : EndnoteOptions_Type)
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
     (This : EndnoteOptions_Type)
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
     (This : EndnoteOptions_Type)
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

   function Get_Location
     (This : EndnoteOptions_Type)
     return WdEndnoteLocation
   is
       RetVal : aliased WdEndnoteLocation;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Location
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Location;

   procedure Put_Location
     (This : EndnoteOptions_Type;
      prop : WdEndnoteLocation)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Location
         (Pointer (This),
          prop));

   end Put_Location;

   function Get_NumberStyle
     (This : EndnoteOptions_Type)
     return WdNoteNumberStyle
   is
       RetVal : aliased WdNoteNumberStyle;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberStyle
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberStyle;

   procedure Put_NumberStyle
     (This : EndnoteOptions_Type;
      prop : WdNoteNumberStyle)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberStyle
         (Pointer (This),
          prop));

   end Put_NumberStyle;

   function Get_StartingNumber
     (This : EndnoteOptions_Type)
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
     (This : EndnoteOptions_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_StartingNumber
         (Pointer (This),
          prop));

   end Put_StartingNumber;

   function Get_NumberingRule
     (This : EndnoteOptions_Type)
     return WdNumberingRule
   is
       RetVal : aliased WdNumberingRule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumberingRule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumberingRule;

   procedure Put_NumberingRule
     (This : EndnoteOptions_Type;
      prop : WdNumberingRule)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_NumberingRule
         (Pointer (This),
          prop));

   end Put_NumberingRule;

end winword.EndnoteOptions_Interface;

