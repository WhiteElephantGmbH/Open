with GNATCOM.Dispinterface;

package winword.Comments_Interface is

   type Comments_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Comments_Type);

   function Pointer (This : Comments_Type)
     return Pointer_To_Comments;

   procedure Attach (This    : in out Comments_Type;
                     Pointer : in     Pointer_To_Comments);

   function Getu_NewEnum
     (This : Comments_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : Comments_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : Comments_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Comments_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Comments_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_ShowBy
     (This : Comments_Type)
     return GNATCOM.Types.BSTR;

   procedure Put_ShowBy
     (This : Comments_Type;
      prop : GNATCOM.Types.BSTR;
      Free : Boolean := True);

   function Item
     (This  : Comments_Type;
      Index : Interfaces.C.long)
     return Pointer_To_Comment;

   function Add
     (This   : Comments_Type;
      uRange : Pointer_To_uRange;
      Text   : access GNATCOM.Types.VARIANT :=
        GNATCOM.Types.PVARIANT_MISSING)
     return Pointer_To_Comment;

end winword.Comments_Interface;

