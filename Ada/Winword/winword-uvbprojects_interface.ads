with GNATCOM.Dispinterface;

package winword.uVBProjects_Interface is

   type uVBProjects_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   procedure Initialize (This : in out uVBProjects_Type);

   function Pointer (This : uVBProjects_Type)
     return Pointer_To_uVBProjects;

   procedure Attach (This    : in out uVBProjects_Type;
                     Pointer : in     Pointer_To_uVBProjects);

   function Item
     (This       : uVBProjects_Type;
      index      : GNATCOM.Types.VARIANT;
      Free       : Boolean := True)
     return Pointer_To_uVBProject;

   function Get_VBE
     (This       : uVBProjects_Type)
     return Pointer_To_VBE;

   function Get_Parent
     (This       : uVBProjects_Type)
     return Pointer_To_VBE;

   function Get_Count
     (This      : uVBProjects_Type)
     return Interfaces.C.long;

   function uNewEnum
     (This        : uVBProjects_Type)
     return GNATCOM.Types.Pointer_To_IUnknown;

   function Add
     (This       : uVBProjects_Type;
      uType      : vbext_ProjectType)
     return Pointer_To_uVBProject;

   procedure Remove
     (This : uVBProjects_Type;
      lpc  : Pointer_To_uVBProject);

   function Open
     (This     : uVBProjects_Type;
      bstrPath : GNATCOM.Types.BSTR;
      Free     : Boolean := True)
     return Pointer_To_uVBProject;

end winword.uVBProjects_Interface;

