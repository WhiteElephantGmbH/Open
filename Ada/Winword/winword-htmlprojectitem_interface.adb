with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.HTMLProjectItem_Interface is

   procedure Initialize (This : in out HTMLProjectItem_Type) is
   begin
      Set_IID (This, IID_HTMLProjectItem);
   end Initialize;

   function Pointer (This : HTMLProjectItem_Type)
     return Pointer_To_HTMLProjectItem
   is
   begin
      return To_Pointer_To_HTMLProjectItem (Address (This));
   end Pointer;

   procedure Attach (This    : in out HTMLProjectItem_Type;
                     Pointer : in     Pointer_To_HTMLProjectItem)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : HTMLProjectItem_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Creator
     (This      : HTMLProjectItem_Type)
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

   function Get_Name
     (This     : HTMLProjectItem_Type)
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

   function Get_IsOpen
     (This     : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IsOpen
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_IsOpen;

   procedure LoadFromFile
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.LoadFromFile
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end LoadFromFile;

   procedure Open
     (This     : HTMLProjectItem_Type;
      OpenKind : MsoHTMLProjectOpen)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Open
         (Pointer (This),
          OpenKind));

   end Open;

   procedure SaveCopyAs
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SaveCopyAs
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end SaveCopyAs;

   function Get_Text
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Text
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Text;

   procedure Put_Text
     (This : HTMLProjectItem_Type;
      Text : GNATCOM.Types.BSTR;
      Free : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Text
         (Pointer (This),
          Text));

      if Free then
               GNATCOM.Interface.Free (Text);
      
      end if;

   end Put_Text;

   function Get_Parent
     (This    : HTMLProjectItem_Type)
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

end winword.HTMLProjectItem_Interface;

