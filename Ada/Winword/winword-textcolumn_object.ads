with GNATCOM.Dispinterface;

package winword.TextColumn_Object is

   type TextColumn_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Width
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Width
     (This : TextColumn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_SpaceAfter
     (This : TextColumn_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_SpaceAfter
     (This : TextColumn_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.TextColumn_Object;

