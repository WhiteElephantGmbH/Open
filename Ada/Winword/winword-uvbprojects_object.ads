with GNATCOM.Dispinterface;

package winword.uVBProjects_Object is

   type uVBProjects_Type is
     new GNATCOM.Dispinterface.Dispinterface_Type with null record;

   function Item
     (This  : uVBProjects_Type;
      index : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   function Get_VBE
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Parent
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT;

   function Get_Count
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT;

   function uNewEnum
     (This : uVBProjects_Type)
     return GNATCOM.Types.VARIANT;

   function Add
     (This  : uVBProjects_Type;
      uType : GNATCOM.Types.VARIANT;
      Free  : Boolean := True)
     return GNATCOM.Types.VARIANT;

   procedure Remove
     (This : uVBProjects_Type;
      lpc  : GNATCOM.Types.VARIANT;
      Free : Boolean := True);

   function Open
     (This     : uVBProjects_Type;
      bstrPath : GNATCOM.Types.VARIANT;
      Free     : Boolean := True)
     return GNATCOM.Types.VARIANT;

end winword.uVBProjects_Object;

