with GNATCOM.Dispinterface;

package winword.Scripts_Object is

   type Scripts_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT;

   function Getu_NewEnum
     (This : Scripts_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Scripts_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Add
     (This       : Scripts_Type;
      Anchor     : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Location   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Language   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Id         : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Extended   : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      ScriptText : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free       : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Delete
     (This : Scripts_Type);

end winword.Scripts_Object;

