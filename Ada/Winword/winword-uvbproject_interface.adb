with GNATCOM.Interface;

with GNATCOM.Errors;

package body winword.uVBProject_Interface is

   procedure Initialize (This : in out uVBProject_Type) is
   begin
      Set_IID (This, IID_uVBProject);
   end Initialize;

   function Pointer (This : uVBProject_Type)
     return Pointer_To_uVBProject
   is
   begin
      return To_Pointer_To_uVBProject (Address (This));
   end Pointer;

   procedure Attach (This    : in out uVBProject_Type;
                     Pointer : in     Pointer_To_uVBProject)
   is
   begin
      Attach (This, GNATCOM.Interface.To_Pointer_To_IUnknown
              (Pointer.all'Address));
   end Attach;

   function Get_Application
     (This       : uVBProject_Type)
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
     (This       : uVBProject_Type)
     return Pointer_To_Application
   is
       RetVal : aliased Pointer_To_Application;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Parent
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Parent;

   function Get_HelpFile
     (This           : uVBProject_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HelpFile
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HelpFile;

   procedure Put_HelpFile
     (This           : uVBProject_Type;
      lpbstrHelpFile : GNATCOM.Types.BSTR;
      Free           : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HelpFile
         (Pointer (This),
          lpbstrHelpFile));

      if Free then
               GNATCOM.Interface.Free (lpbstrHelpFile);
      
      end if;

   end Put_HelpFile;

   function Get_HelpContextID
     (This          : uVBProject_Type)
     return Interfaces.C.long
   is
       RetVal : aliased Interfaces.C.long;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_HelpContextID
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_HelpContextID;

   procedure Put_HelpContextID
     (This          : uVBProject_Type;
      lpdwContextID : Interfaces.C.long)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_HelpContextID
         (Pointer (This),
          lpdwContextID));

   end Put_HelpContextID;

   function Get_Description
     (This              : uVBProject_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Description
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Description;

   procedure Put_Description
     (This              : uVBProject_Type;
      lpbstrDescription : GNATCOM.Types.BSTR;
      Free              : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Description
         (Pointer (This),
          lpbstrDescription));

      if Free then
               GNATCOM.Interface.Free (lpbstrDescription);
      
      end if;

   end Put_Description;

   function Get_Mode
     (This      : uVBProject_Type)
     return vbext_VBAMode
   is
       RetVal : aliased vbext_VBAMode;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Mode
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Mode;

   function Get_References
     (This          : uVBProject_Type)
     return Pointer_To_uReferences
   is
       RetVal : aliased Pointer_To_uReferences;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_References
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_References;

   function Get_Name
     (This       : uVBProject_Type)
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
     (This       : uVBProject_Type;
      lpbstrName : GNATCOM.Types.BSTR;
      Free       : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_Name
         (Pointer (This),
          lpbstrName));

      if Free then
               GNATCOM.Interface.Free (lpbstrName);
      
      end if;

   end Put_Name;

   function Get_VBE
     (This       : uVBProject_Type)
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
     (This       : uVBProject_Type)
     return Pointer_To_uVBProjects
   is
       RetVal : aliased Pointer_To_uVBProjects;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Collection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Collection;

   function Get_Protection
     (This         : uVBProject_Type)
     return vbext_ProjectProtection
   is
       RetVal : aliased vbext_ProjectProtection;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Protection
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Protection;

   function Get_Saved
     (This      : uVBProject_Type)
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

   function Get_VBComponents
     (This       : uVBProject_Type)
     return Pointer_To_uVBComponents
   is
       RetVal : aliased Pointer_To_uVBComponents;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_VBComponents
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_VBComponents;

   procedure SaveAs
     (This     : uVBProject_Type;
      FileName : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.SaveAs
         (Pointer (This),
          FileName));

      if Free then
               GNATCOM.Interface.Free (FileName);
      
      end if;

   end SaveAs;

   procedure MakeCompiledFile
     (This : uVBProject_Type)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.MakeCompiledFile
         (Pointer (This)));

   end MakeCompiledFile;

   function Get_Type
     (This   : uVBProject_Type)
     return vbext_ProjectType
   is
       RetVal : aliased vbext_ProjectType;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_Type
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_Type;

   function Get_FileName
     (This         : uVBProject_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_FileName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_FileName;

   function Get_BuildFileName
     (This           : uVBProject_Type)
     return GNATCOM.Types.BSTR
   is
       RetVal : aliased GNATCOM.Types.BSTR;
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Get_BuildFileName
         (Pointer (This),
          RetVal'Unchecked_Access));

      return RetVal;
   end Get_BuildFileName;

   procedure Put_BuildFileName
     (This           : uVBProject_Type;
      lpbstrBldFName : GNATCOM.Types.BSTR;
      Free           : Boolean := True)
   is
   begin
      GNATCOM.Errors.Error_Check
        (Pointer (This).Vtbl.Put_BuildFileName
         (Pointer (This),
          lpbstrBldFName));

      if Free then
               GNATCOM.Interface.Free (lpbstrBldFName);
      
      end if;

   end Put_BuildFileName;

end winword.uVBProject_Interface;

