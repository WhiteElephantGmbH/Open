with GNATCOM.Dispinterface;

package winword.StoryRanges_Interface is

   type StoryRanges_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out StoryRanges_Type);

   function Pointer (This : StoryRanges_Type)
     return Pointer_To_StoryRanges;

   procedure Attach (This    : in out StoryRanges_Type;
                     Pointer : in     Pointer_To_StoryRanges);

   function Getu_NewEnum
     (This : StoryRanges_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Get_Count
     (This : StoryRanges_Type)
     return Interfaces.C.long;

   function Get_Application
     (This : StoryRanges_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : StoryRanges_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : StoryRanges_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Item
     (This  : StoryRanges_Type;
      Index : WdStoryType)
     return Pointer_To_uRange;

end winword.StoryRanges_Interface;

