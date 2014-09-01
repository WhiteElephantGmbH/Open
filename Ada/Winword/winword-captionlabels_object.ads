with GNATCOM.Dispinterface;

package winword.CaptionLabels_Object is

   type CaptionLabels_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : CaptionLabels_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : CaptionLabels_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This : CaptionLabels_Type;
      Name : GNATCOM.Types.VARIANT;
      Free : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.CaptionLabels_Object;

