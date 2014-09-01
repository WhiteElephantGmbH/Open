with GNATCOM.Dispinterface;

package winword.StoryRanges_Object is

   type StoryRanges_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Getu_NewEnum
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Application
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : StoryRanges_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : StoryRanges_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.StoryRanges_Object;

