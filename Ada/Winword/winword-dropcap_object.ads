with GNATCOM.Dispinterface;

package winword.DropCap_Object is

   type DropCap_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Position
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Position
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_FontName
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_FontName
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_LinesToDrop
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_LinesToDrop
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceFromText
     (This : DropCap_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceFromText
     (This : DropCap_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Clear
     (This : DropCap_Type);

   procedure Enable
     (This : DropCap_Type);

end winword.DropCap_Object;

