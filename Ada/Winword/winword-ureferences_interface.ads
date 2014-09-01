with GNATCOM.Dispinterface;

package winword.uReferences_Interface is

   type uReferences_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uReferences_Type);

   function Pointer (This : uReferences_Type)
     return Pointer_To_uReferences;

   procedure Attach (This    : in out uReferences_Type;
                     Pointer : in     Pointer_To_uReferences);

   function Get_Parent
     (This    : uReferences_Type)
     return Pointer_To_uVBProject;

   function Get_VBE
     (This    : uReferences_Type)
     return Pointer_To_VBE;

   function Item
     (This      : uReferences_Type;
      index     : GNATCOM.Types.VARIANT;
      Free      : Boolean := True)
     return Pointer_To_Reference;

   function Get_Count
     (This  : uReferences_Type)
     return Interfaces.C.long;

   function uNewEnum
     (This   : uReferences_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function AddFromGuid
     (This      : uReferences_Type;
      Guid      : GNATCOM.Types.BSTR;
      Major     : Interfaces.C.long;
      Minor     : Interfaces.C.long;
      Free      : Boolean := True)
     return Pointer_To_Reference;

   function AddFromFile
     (This      : uReferences_Type;
      FileName  : GNATCOM.Types.BSTR;
      Free      : Boolean := True)
     return Pointer_To_Reference;

   procedure Remove
     (This      : uReferences_Type;
      Reference : Pointer_To_Reference);

end winword.uReferences_Interface;

