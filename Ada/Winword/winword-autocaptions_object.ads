with GNATCOM.Dispinterface;

package winword.AutoCaptions_Object is

   type AutoCaptions_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : AutoCaptions_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : AutoCaptions_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure CancelAutoInsert
     (This : AutoCaptions_Type);

end winword.AutoCaptions_Object;

