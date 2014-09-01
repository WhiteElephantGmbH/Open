with GNATCOM.Dispinterface;

package winword.Comment_Object is

   type Comment_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Range
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Reference
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Scope
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Index
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Author
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Author
     (This : Comment_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Initial
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Initial
     (This : Comment_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_ShowTip
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_ShowTip
     (This : Comment_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   procedure Delete
     (This : Comment_Type);

   procedure Edit
     (This : Comment_Type);

   function Get_Date
     (This : Comment_Type)
     return GNATCOM.Types.VARIANT;

end winword.Comment_Object;

