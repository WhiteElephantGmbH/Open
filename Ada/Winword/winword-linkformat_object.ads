with GNATCOM.Dispinterface;

package winword.LinkFormat_Object is

   type LinkFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoUpdate
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoUpdate
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SourceName
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SourcePath
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Locked
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Locked
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Type
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   function Get_SourceFullName
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SourceFullName
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SavePictureWithDocument
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SavePictureWithDocument
     (This : LinkFormat_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure BreakLink
     (This : LinkFormat_Type);

   procedure Update
     (This : LinkFormat_Type);

end winword.LinkFormat_Object;

