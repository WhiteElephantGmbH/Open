with GNATCOM.Dispinterface;

package winword.LineNumbering_Object is

   type LineNumbering_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   function Get_RestartMode
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_RestartMode
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_StartingNumber
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_StartingNumber
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_DistanceFromText
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_DistanceFromText
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_CountBy
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_CountBy
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Active
     (This : LineNumbering_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Active
     (This : LineNumbering_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

end winword.LineNumbering_Object;

