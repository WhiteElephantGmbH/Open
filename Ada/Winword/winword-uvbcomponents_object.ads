with GNATCOM.Dispinterface;

package winword.uVBComponents_Object is

   type uVBComponents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Item
     (This  : uVBComponents_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT;

   function uNewEnum
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT;

   procedure Remove
     (This        : uVBComponents_Type;
      VBComponent : GNATCOM.Types.VARIANT;
      Free        : Boolean := True);

   function Add
     (This          : uVBComponents_Type;
      ComponentType : GNATCOM.Types.VARIANT;
      Free          : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Import
     (This     : uVBComponents_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uVBComponents_Type)
     return GNATCOM.Types.VARIANT;

   function AddCustom
     (This   : uVBComponents_Type;
      ProgId : GNATCOM.Types.VARIANT;
      Free   : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddMTDesigner
     (This  : uVBComponents_Type;
      index : GNATCOM.Types.VARIANT
        := GNATCOM.Types.VARIANT_MISSING;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.uVBComponents_Object;

