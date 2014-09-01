with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uVBComponent_Interface is

   procedure Initialize (This : in out uVBComponent_Type) is
   begin
      Set_IID (This, IID_uVBComponent);
   end Initialize;

   function Pointer (This : uVBComponent_Type)
     return Pointer_To_uVBComponent
   is
   begin
      return To_Pointer_To_uVBComponent (Address (This));
   end Pointer;

   procedure Attach (This    : in out uVBComponent_Type;
                     Pointer : in     Pointer_To_uVBComponent)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Saved
     (This      : uVBComponent_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Saved
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Saved;

   function Get_Name
     (This        : uVBComponent_Type)
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

   procedure Put_Name
     (This        : uVBComponent_Type;
      pbstrReturn : GNATCOM.Types.BSTR;
      Free        : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          pbstrReturn));

      if Free then
               GNATCOM.Interface.Free (pbstrReturn);
      
      end if;

   end Put_Name;

   function Get_Designer
     (This       : uVBComponent_Type)
     return GNATCOM.Types.Pointer_To_IDispatch
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IDispatch;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Designer
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Designer;

   function Get_CodeModule
     (This        : uVBComponent_Type)
     return Pointer_To_uCodeModule
   is
       RetVal : aliased Pointer_To_uCodeModule;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_CodeModule
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_CodeModule;

   function Get_Type
     (This  : uVBComponent_Type)
     return vbext_ComponentType
   is
       RetVal : aliased vbext_ComponentType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   procedure Export
     (This     : uVBComponent_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Export
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end Export;

   function Get_VBE
     (This       : uVBComponent_Type)
     return Pointer_To_VBE
   is
       RetVal : aliased Pointer_To_VBE;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBE
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBE;

   function Get_Collection
     (This       : uVBComponent_Type)
     return Pointer_To_uVBComponents
   is
       RetVal : aliased Pointer_To_uVBComponents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Collection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Collection;

   function Get_HasOpenDesigner
     (This      : uVBComponent_Type)
     return GNATCOM.Types.VARIANT_BOOL
   is
       RetVal : aliased GNATCOM.Types.VARIANT_BOOL;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HasOpenDesigner
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HasOpenDesigner;

   function Get_Properties
     (This       : uVBComponent_Type)
     return Pointer_To_uProperties
   is
       RetVal : aliased Pointer_To_uProperties;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Properties
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Properties;

   function DesignerWindow
     (This       : uVBComponent_Type)
     return Pointer_To_Window
   is
       RetVal : aliased Pointer_To_Window;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.DesignerWindow
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end DesignerWindow;

   procedure Activate
     (This : uVBComponent_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Activate
         (Pointer (This)));

   end Activate;

   function Get_DesignerID
     (This        : uVBComponent_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_DesignerID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_DesignerID;

end winword.uVBComponent_Interface;

