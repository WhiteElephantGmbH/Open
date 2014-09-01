with GNATCOM.Dispinterface;

package winword.LineNumbering_Interface is

   type LineNumbering_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out LineNumbering_Type);

   function Pointer (This : LineNumbering_Type)
     return Pointer_To_LineNumbering;

   procedure Attach (This    : in out LineNumbering_Type;
                     Pointer : in     Pointer_To_LineNumbering);

   function Get_Application
     (This : LineNumbering_Type)
     return Pointer_To_uApplication;

   function Get_Creator
     (This : LineNumbering_Type)
     return Interfaces.C.long;

   function Get_Parent
     (This : LineNumbering_Type)
     return GNATCOM.Types.Pointer_To_IDispatch;

   function Get_RestartMode
     (This : LineNumbering_Type)
     return WdNumberingRule;

   procedure Put_RestartMode
     (This : LineNumbering_Type;
      prop : WdNumberingRule);

   function Get_StartingNumber
     (This : LineNumbering_Type)
     return Interfaces.C.long;

   procedure Put_StartingNumber
     (This : LineNumbering_Type;
      prop : Interfaces.C.long);

   function Get_DistanceFromText
     (This : LineNumbering_Type)
     return Interfaces.C.C_float;

   procedure Put_DistanceFromText
     (This : LineNumbering_Type;
      prop : Interfaces.C.C_float);

   function Get_CountBy
     (This : LineNumbering_Type)
     return Interfaces.C.long;

   procedure Put_CountBy
     (This : LineNumbering_Type;
      prop : Interfaces.C.long);

   function Get_Active
     (This : LineNumbering_Type)
     return Interfaces.C.long;

   procedure Put_Active
     (This : LineNumbering_Type;
      prop : Interfaces.C.long);

end winword.LineNumbering_Interface;

