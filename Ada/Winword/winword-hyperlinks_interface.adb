with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Hyperlinks_Interface is

   procedure Initialize (This : in out Hyperlinks_Type) is
   begin
      Set_IID (This, IID_Hyperlinks);
   end Initialize;

   function Pointer (This : Hyperlinks_Type)
     return Pointer_To_Hyperlinks
   is
   begin
      return To_Pointer_To_Hyperlinks (Address (This));
   end Pointer;

   procedure Attach (This    : in out Hyperlinks_Type;
                     Pointer : in     Pointer_To_Hyperlinks)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This : Hyperlinks_Type)
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
     (This : Hyperlinks_Type)
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
     (This : Hyperlinks_Type)
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

   function Get_Count
     (This : Hyperlinks_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Count
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Count;

   function Getu_NewEnum
     (This : Hyperlinks_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Getu_NewEnum
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Getu_NewEnum;

   function Item
     (This  : Hyperlinks_Type;
      Index : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Hyperlink
   is
       RetVal : aliased Pointer_To_Hyperlink;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Item
         (Pointer (This),
          Index,
          RetVal'Unchecked_Access));

      return RetVal;
   end Item;

   function uAdd
     (This       : Hyperlinks_Type;
      Anchor     : GNATCOM.Types.Pointer_To_IDispatch;
      Address    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubAddress : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Hyperlink
   is
       RetVal : aliased Pointer_To_Hyperlink;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.uAdd
         (Pointer (This),
          Anchor,
          Address,
          SubAddress,
          RetVal'Unchecked_Access));

      return RetVal;
   end uAdd;

   function Add
     (This          : Hyperlinks_Type;
      Anchor        : GNATCOM.Types.Pointer_To_IDispatch;
      Address       : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      SubAddress    : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      ScreenTip     : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      TextToDisplay : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING;
      Target        : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Hyperlink
   is
       RetVal : aliased Pointer_To_Hyperlink;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          Anchor,
          Address,
          SubAddress,
          ScreenTip,
          TextToDisplay,
          Target,
          RetVal'Unchecked_Access));

      return RetVal;
   end Add;

end winword.Hyperlinks_Interface;

