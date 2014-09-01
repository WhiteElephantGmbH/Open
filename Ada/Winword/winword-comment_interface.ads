with GNATCOM.Dispinterface;

package winword.Comment_Interface is

   type Comment_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Comment_Type);

   function Pointer (This : Comment_Type)
     return Pointer_To_Comment;

   procedure Attach (This    : in out Comment_Type;
                     Pointer : in     Pointer_To_Comment);

   function Get_Application
     (This : Comment_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Comment_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Comment_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_Range
     (This : Comment_Type)
     return Pointer_To_uRange;

   function Get_Reference
     (This : Comment_Type)
     return Pointer_To_uRange;

   function Get_Scope
     (This : Comment_Type)
     return Pointer_To_uRange;

   function Get_Index
     (This : Comment_Type)
     return Interfaces.C.long;

   function Get_Author
     (This : Comment_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Author
     (This : Comment_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_Initial
     (This : Comment_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_Initial
     (This : Comment_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Get_ShowTip
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   procedure Put_ShowTip
     (This : Comment_Type;
      prop : GNATCOM.Types.VARIANT_BOOL);

   procedure Delete
     (This : Comment_Type);

   procedure Edit
     (This : Comment_Type);

   function Get_Date
     (This : Comment_Type)
     return GNATCOM.Types.DATE;

end winword.Comment_Interface;

