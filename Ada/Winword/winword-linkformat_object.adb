package body winword.LinkFormat_Object is

   function Get_Application
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_Application);
   end Get_Application;

   function Get_Creator
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_Creator);
   end Get_Creator;

   function Get_Parent
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_Parent);
   end Get_Parent;

   function Get_AutoUpdate
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_AutoUpdate);
   end Get_AutoUpdate;

   procedure Put_AutoUpdate
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LinkFormat_Put_AutoUpdate,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_AutoUpdate;

   function Get_SourceName
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_SourceName);
   end Get_SourceName;

   function Get_SourcePath
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_SourcePath);
   end Get_SourcePath;

   function Get_Locked
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_Locked);
   end Get_Locked;

   procedure Put_Locked
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LinkFormat_Put_Locked,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_Locked;

   function Get_Type
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_Type);
   end Get_Type;

   function Get_SourceFullName
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_SourceFullName);
   end Get_SourceFullName;

   procedure Put_SourceFullName
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LinkFormat_Put_SourceFullName,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SourceFullName;

   function Get_SavePictureWithDocument
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT
   is
   begin
      return Get (This, LinkFormat_Get_SavePictureWithDocument);
   end Get_SavePictureWithDocument;

   procedure Put_SavePictureWithDocument
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
   is
   begin
      Put
        (This,
         LinkFormat_Put_SavePictureWithDocument,
         GNATCOM.Dispinterface.Parameter_Array'
         (1 => P1),
         Free);
   end Put_SavePictureWithDocument;

   procedure BreakLink
     (This : LinkFormat_Type)
   is
   begin
      Invoke (This, LinkFormat_BreakLink);
   end BreakLink;

   procedure Update
     (This : LinkFormat_Type)
   is
   begin
      Invoke (This, LinkFormat_Update);
   end Update;

end winword.LinkFormat_Object;

