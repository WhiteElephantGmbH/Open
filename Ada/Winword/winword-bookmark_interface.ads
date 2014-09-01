with GNATCOM.Dispinterface;

package winword.Bookmark_Interface is

   type Bookmark_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out Bookmark_Type);

   function Pointer (This : Bookmark_Type)
     return Pointer_To_Bookmark;

   procedure Attach (This    : in out Bookmark_Type;
                     Pointer : in     Pointer_To_Bookmark);

   function Get_Name
     (This : Bookmark_Type)
     return GNATCOM.Types.BSTR;

   function Get_Range
     (This : Bookmark_Type)
     return Pointer_To_uRange;

   function Get_Empty
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_Start
     (This : Bookmark_Type)
     return Interfaces.C.long;

   procedure Put_Start
     (This : Bookmark_Type;
      prop : Interfaces.C.long);

   function Get_End
     (This : Bookmark_Type)
     return Interfaces.C.long;

   procedure Put_End
     (This : Bookmark_Type;
      prop : Interfaces.C.long);

   function Get_Column
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT_BOOL;

   function Get_StoryType
     (This : Bookmark_Type)
     return WdStoryType;

   function Get_Application
     (This : Bookmark_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : Bookmark_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : Bookmark_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   procedure uSelect
     (This : Bookmark_Type);

   procedure Delete
     (This : Bookmark_Type);

   function Copy
     (This : Bookmark_Type;
      Name : GNATCOM.Types.BSTR;
      Free : Boolean := True)
     return Pointer_To_Bookmark;

end winword.Bookmark_Interface;

