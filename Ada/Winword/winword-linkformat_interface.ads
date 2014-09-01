with GNATCOM.Dispinterface;

package winword.LinkFormat_Interface is

   type LinkFormat_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out LinkFormat_Type);

   function Pointer (This : LinkFormat_Type)
     return Pointer_To_LinkFormat;

   procedure Attach (This    : in out LinkFormat_Type;
                     Pointer : in     Pointer_To_LinkFormat);

   function Get_Application
     (This : LinkFormat_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : LinkFormat_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : LinkFormat_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_AutoUpdate
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_AutoUpdate
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_SourceName
     (This : LinkFormat_Type)
     return GNATCOM.Types.BSTR;

   function Get_SourcePath
     (This : LinkFormat_Type)
     return GNATCOM.Types.BSTR;

   function Get_Locked
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_Locked
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   function Get_Type
     (This : LinkFormat_Type)
     return WdLinkType;

   function Get_SourceFullName
     (This : LinkFormat_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_SourceFullName
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_SavePictureWithDocument
     (This : LinkFormat_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_SavePictureWithDocument
     (This : LinkFormat_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure BreakLink
     (This : LinkFormat_Type);

   procedure Update
     (This : LinkFormat_Type);

end winword.LinkFormat_Interface;

