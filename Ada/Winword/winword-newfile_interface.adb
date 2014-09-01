with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.NewFile_Interface is

   procedure Initialize (This : in out NewFile_Type) is
   begin
      Set_IID (This, IID_NewFile);
   end Initialize;

   function Pointer (This : NewFile_Type)
     return Pointer_To_NewFile
   is
   begin
      return To_Pointer_To_NewFile (Address (This));
   end Pointer;

   procedure Attach (This    : in out NewFile_Type;
                     Pointer : in     Pointer_To_NewFile)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This    : NewFile_Type)
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
     (This      : NewFile_Type)
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

   function Add
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.BSTR;
      Section     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Add
         (Pointer (This),
          FileName,
          Section,
          DisplayName,
          Action,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
               GNATCOM.Interface.Free (Section);
               GNATCOM.Interface.Free (DisplayName);
               GNATCOM.Interface.Free (Action);
      
      end if;

      return RetVal;
   end Add;

   function Remove
     (This        : NewFile_Type;
      FileName    : GNATCOM.Types.BSTR;
      Section     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      DisplayName : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Action      : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free        : Boolean := True)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Remove
         (Pointer (This),
          FileName,
          Section,
          DisplayName,
          Action,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (FileName);
               GNATCOM.Interface.Free (Section);
               GNATCOM.Interface.Free (DisplayName);
               GNATCOM.Interface.Free (Action);
      
      end if;

      return RetVal;
   end Remove;

end winword.NewFile_Interface;

