with GNATCOM.Dispinterface;

package winword.AutoCaption_Object is

   type AutoCaption_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   function Get_AutoInsert
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_AutoInsert
     (This : AutoCaption_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Index
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   function Get_CaptionLabel
     (This : AutoCaption_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CaptionLabel
     (This : AutoCaption_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.AutoCaption_Object;

