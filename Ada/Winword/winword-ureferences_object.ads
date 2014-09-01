with GNATCOM.Dispinterface;

package winword.uReferences_Object is

   type uReferences_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Get_Parent
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT;

   function Item
     (This  : uReferences_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT;

   function uNewEnum
     (This : uReferences_Type)
     return GNATCOM.Types.VARIANT;

   function AddFromGuid
     (This  : uReferences_Type;
      Guid  : GNATCOM.Types.VARIANT;
      Major : GNATCOM.Types.VARIANT;
      Minor : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function AddFromFile
     (This     : uReferences_Type;
      FileName : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Remove
     (This      : uReferences_Type;
      Reference : GNATCOM.Types.VARIANT;
      Free      : Boolean := True);

end winword.uReferences_Object;

