with GNATCOM.Dispinterface;

package winword.HTMLProjectItem_Object is

   type HTMLProjectItem_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT;

   function Get_IsOpen
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT;

   procedure LoadFromFile
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   procedure Open
     (This     : HTMLProjectItem_Type;
      OpenKind : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free     : Boolean := True);

   procedure SaveCopyAs
     (This     : HTMLProjectItem_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True);

   function Get_Text
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Text
     (This : HTMLProjectItem_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Parent
     (This : HTMLProjectItem_Type)
     return GNATCOM.Types.VARIANT;

end winword.HTMLProjectItem_Object;

