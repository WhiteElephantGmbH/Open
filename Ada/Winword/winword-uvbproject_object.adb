package body winword.uVBProject_Object is

   function Get_Application
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Application);
   end Get_Application;

   function Get_Parent
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Parent);
   end Get_Parent;

   function Get_HelpFile
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_HelpFile);
   end Get_HelpFile;

   procedure Put_HelpFile
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uVBProject_Put_HelpFile,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HelpFile;

   function Get_HelpContextID
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_HelpContextID);
   end Get_HelpContextID;

   procedure Put_HelpContextID
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uVBProject_Put_HelpContextID,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_HelpContextID;

   function Get_Description
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Description);
   end Get_Description;

   procedure Put_Description
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uVBProject_Put_Description,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Description;

   function Get_Mode
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Mode);
   end Get_Mode;

   function Get_References
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_References);
   end Get_References;

   function Get_Name
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Name);
   end Get_Name;

   procedure Put_Name
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uVBProject_Put_Name,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Name;

   function Get_VBE
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_VBE);
   end Get_VBE;

   function Get_Collection
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Collection);
   end Get_Collection;

   function Get_Protection
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Protection);
   end Get_Protection;

   function Get_Saved
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Saved);
   end Get_Saved;

   function Get_VBComponents
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_VBComponents);
   end Get_VBComponents;

   procedure SaveAs
     (This     : uVBProject_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
   is
   begin
      Invoke
        (This,
         uVBProject_SaveAs,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => FileName),
         Free);
   end SaveAs;

   procedure MakeCompiledFile
     (This : uVBProject_Type)
   is
   begin
      Invoke (This, uVBProject_MakeCompiledFile);
   end MakeCompiledFile;

   function Get_Type
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_Type);
   end Get_Type;

   function Get_FileName
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_FileName);
   end Get_FileName;

   function Get_BuildFileName
     (This : uVBProject_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, uVBProject_Get_BuildFileName);
   end Get_BuildFileName;

   procedure Put_BuildFileName
     (This : uVBProject_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         uVBProject_Put_BuildFileName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_BuildFileName;

end winword.uVBProject_Object;

