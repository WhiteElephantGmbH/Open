with GNATCOM.Dispinterface;

package winword.Subdocument_Object is

   type Subdocument_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Locked
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Locked
     (This : Subdocument_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Get_Range
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Name
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Path
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_HasFile
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Level
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Subdocument_Type);

   procedure Split
     (This   : Subdocument_Type;
      uRange : GNATCOM.Types.VARIANT;
      Free   : Boolean := True);

   function Open
     (This : Subdocument_Type)
     return GNATCOM.Types.VARIANT;

end winword.Subdocument_Object;

