with GNATCOM.Dispinterface;

package winword.uVBComponents_Interface is

   type uVBComponents_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uVBComponents_Type);

   function Pointer (This : uVBComponents_Type)
     return Pointer_To_uVBComponents;

   procedure Attach (This    : in out uVBComponents_Type;
                     Pointer : in     Pointer_To_uVBComponents);

   function Item
     (This       : uVBComponents_Type;
      index      : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return Pointer_To_uVBComponent;

   function Get_Parent
     (This        : uVBComponents_Type)
     return Pointer_To_uVBProject;

   function Get_Count
     (This      : uVBComponents_Type)
     return Interfaces.C.long;

   function uNewEnum
     (This        : uVBComponents_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   procedure Remove
     (This        : uVBComponents_Type;
      VBComponent : Pointer_To_uVBComponent);

   function Add
     (This          : uVBComponents_Type;
      ComponentType : vbext_ComponentType)
     return Pointer_To_uVBComponent;

   function Import
     (This         : uVBComponents_Type;
      FileName     : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
     return Pointer_To_uVBComponent;

   function Get_VBE
     (This       : uVBComponents_Type)
     return Pointer_To_VBE;

   function AddCustom
     (This         : uVBComponents_Type;
      ProgId       : GNATCOM.Types.BSTR;
      Free         : Boolean := True)
     return Pointer_To_uVBComponent;

   function AddMTDesigner
     (This         : uVBComponents_Type;
      index        : Interfaces.C.long)
     return Pointer_To_uVBComponent;

end winword.uVBComponents_Interface;

