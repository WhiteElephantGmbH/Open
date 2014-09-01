with GNATCOM.Dispinterface;

package winword.Fields_Object is

   type Fields_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Application
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Creator
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Locked
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT;

   procedure Put_Locked
     (This : Fields_Type;
      P1   : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Getu_NewEnum
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : Fields_Type;
      Index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure ToggleShowCodes
     (This : Fields_Type);

   function Update
     (This : Fields_Type)
     return GNATCOM.Types.VARIANT;

   procedure Unlink
     (This : Fields_Type);

   procedure UpdateSource
     (This : Fields_Type);

   function Add
     (This               : Fields_Type;
      uRange             : GNATCOM.Types.VARIANT;
      uType              : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Text               : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      PreserveFormatting : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free               : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.Fields_Object;

