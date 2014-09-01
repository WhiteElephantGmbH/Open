with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Revision_Interface is

   procedure Initialize (This : in out Revision_Type) is
   begin
      Set_IID (This, IID_Revision);
   end Initialize;

   function Pointer (This : Revision_Type)
     return Pointer_To_Revision
   is
   begin
      return To_Pointer_To_Revision (Address (This));
   end Pointer;

   procedure Attach (This    : in out Revision_Type;
                     Pointer : in     Pointer_To_Revision)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Revision_Type)
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
     (This : Revision_Type)
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
     (This : Revision_Type)
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

   function Get_Author
     (This : Revision_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Author
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Author;

   function Get_Date
     (This : Revision_Type)
     return GNATCOM.Types.DATE
   is
       RetVal : aliased GNATCOM.Types.DATE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Date
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Date;

   function Get_Range
     (This : Revision_Type)
     return Pointer_To_uRange
   is
       RetVal : aliased Pointer_To_uRange;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Range
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Range;

   function Get_Type
     (This : Revision_Type)
     return WdRevisionType
   is
       RetVal : aliased WdRevisionType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_Index
     (This : Revision_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Index
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Index;

   procedure uAccept
     (This : Revision_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uAccept
         (Pointer (This)));

   end uAccept;

   procedure Reject
     (This : Revision_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Reject
         (Pointer (This)));

   end Reject;

   function Get_Style
     (This : Revision_Type)
     return Pointer_To_Style
   is
       RetVal : aliased Pointer_To_Style;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Style
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Style;

   function Get_FormatDescription
     (This : Revision_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FormatDescription
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FormatDescription;

end winword.Revision_Interface;

