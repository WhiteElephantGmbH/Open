with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Bookmark_Interface is

   procedure Initialize (This : in out Bookmark_Type) is
   begin
      Set_IID (This, IID_Bookmark);
   end Initialize;

   function Pointer (This : Bookmark_Type)
     return Pointer_To_Bookmark
   is
   begin
      return To_Pointer_To_Bookmark (Address (This));
   end Pointer;

   procedure Attach (This    : in out Bookmark_Type;
                     Pointer : in     Pointer_To_Bookmark)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Name
     (This : Bookmark_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Name
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Name;

   function Get_Range
     (This : Bookmark_Type)
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

   function Get_Empty
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Empty
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Empty;

   function Get_Start
     (This : Bookmark_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Start
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Start;

   procedure Put_Start
     (This : Bookmark_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Start
         (Pointer (This),
          prop));

   end Put_Start;

   function Get_End
     (This : Bookmark_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_End
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_End;

   procedure Put_End
     (This : Bookmark_Type;
      prop : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_End
         (Pointer (This),
          prop));

   end Put_End;

   function Get_Column
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Column
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Column;

   function Get_StoryType
     (This : Bookmark_Type)
     return WdStoryType
   is
       RetVal : aliased WdStoryType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_StoryType
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_StoryType;

   function Get_Application
     (This : Bookmark_Type)
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
     (This : Bookmark_Type)
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
     (This : Bookmark_Type)
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

   procedure uSelect
     (This : Bookmark_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uSelect
         (Pointer (This)));

   end uSelect;

   procedure Delete
     (This : Bookmark_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Delete
         (Pointer (This)));

   end Delete;

   function Copy
     (This : Bookmark_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return Pointer_To_Bookmark
   is
       RetVal : aliased Pointer_To_Bookmark;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Copy
         (Pointer (This),
          Name,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Name);
      
      end if;

      return RetVal;
   end Copy;

end winword.Bookmark_Interface;

