with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.Property_Interface is

   procedure Initialize (This : in out Property_Type) is
   begin
      Set_IID (This, IID_Property);
   end Initialize;

   function Pointer (This : Property_Type)
     return Pointer_To_Property
   is
   begin
      return To_Pointer_To_Property (Address (This));
   end Pointer;

   procedure Attach (This    : in out Property_Type;
                     Pointer : in     Pointer_To_Property)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Value
     (This       : Property_Type)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Value
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Value;

   procedure Put_Value
     (This       : Property_Type;
      lppvReturn : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Value
         (Pointer (This),
          lppvReturn));

      if Free then
               GNATCOM.Interface.Free (lppvReturn);
      
      end if;

   end Put_Value;

   function Get_IndexedValue
     (This       : Property_Type;
      Index1     : GNATCOM.Types.VARIANT;
      Index2     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index3     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index4     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT
   is
       RetVal : aliased GNATCOM.Types.VARIANT;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_IndexedValue
         (Pointer (This),
          Index1,
          Index2,
          Index3,
          Index4,
          RetVal'Unchecked_Access));

      if Free then
               GNATCOM.Interface.Free (Index1);
               GNATCOM.Interface.Free (Index2);
               GNATCOM.Interface.Free (Index3);
               GNATCOM.Interface.Free (Index4);
      
      end if;

      return RetVal;
   end Get_IndexedValue;

   procedure Put_IndexedValue
     (This       : Property_Type;
      Index1     : GNATCOM.Types.VARIANT;
      Index2     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index3     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      Index4     : GNATCOM.Types.VARIANT  := GNATCOM.Types.VARIANT_MISSING;
      lppvReturn : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_IndexedValue
         (Pointer (This),
          Index1,
          Index2,
          Index3,
          Index4,
          lppvReturn));

      if Free then
               GNATCOM.Interface.Free (Index1);
               GNATCOM.Interface.Free (Index2);
               GNATCOM.Interface.Free (Index3);
               GNATCOM.Interface.Free (Index4);
               GNATCOM.Interface.Free (lppvReturn);
      
      end if;

   end Put_IndexedValue;

   function Get_NumIndices
     (This      : Property_Type)
     return Interfaces.C.short
   is
       RetVal : aliased Interfaces.C.short;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_NumIndices
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_NumIndices;

   function Get_Application
     (This      : Property_Type)
     return Pointer_To_Application
   is
       RetVal : aliased Pointer_To_Application;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Application
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Application;

   function Get_Parent
     (This       : Property_Type)
     return Pointer_To_uProperties
   is
       RetVal : aliased Pointer_To_uProperties;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_Name
     (This         : Property_Type)
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

   function Get_VBE
     (This      : Property_Type)
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
     (This       : Property_Type)
     return Pointer_To_uProperties
   is
       RetVal : aliased Pointer_To_uProperties;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Collection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Collection;

   function Get_Object
     (This   : Property_Type)
     return GNATCOM.Types.Pointer_To_IUnknown
   is
       RetVal : aliased GNATCOM.Types.Pointer_To_IUnknown;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Object
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Object;

   procedure PutRef_Object
     (This   : Property_Type;
      lppunk : GNATCOM.Types.Pointer_To_IUnknown)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.PutRef_Object
         (Pointer (This),
          lppunk));

   end PutRef_Object;

end winword.Property_Interface;

