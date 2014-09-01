with GNATCOM.Dispinterface;

package winword.Bookmark_Object is

   type Bookmark_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Name
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Empty
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Start
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Start
     (This : Bookmark_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_End
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_End
     (This : Bookmark_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Column
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   function Get_StoryType
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Bookmark_Type)
     return GNATCOM.Types.VARIANT;

   procedure uSelect
     (This : Bookmark_Type);

   procedure Delete
     (This : Bookmark_Type);

   function Copy
     (This : Bookmark_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Bookmark_Object;

